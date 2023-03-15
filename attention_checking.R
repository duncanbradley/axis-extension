library(tidyverse)
library(afex)
library(ggridges)

# read in data
database <- read_csv('database.csv')

# add correct, no_correct, outcome columns
# for assessing attention check responses
database <- database %>%
  mutate(AC_correct = case_when(item_no > 40 & correct_response == slider.response ~ TRUE,
                                item_no > 40 & correct_response != slider.response ~ FALSE)) %>%
  group_by(participant) %>%
  mutate(AC_no_correct = sum(AC_correct, na.rm = TRUE)) %>%
  mutate(AC_outcome = AC_no_correct < 5) %>%
  mutate(across(AC_outcome, as_factor)) %>%
  mutate(AC_outcome = recode(AC_outcome, 'TRUE' = "FAIL", 'FALSE' = "PASS")) 

# extract literacy data
# calculate literacy score (sum of five responses)
literacy <- database %>%
  filter(!is.na(q1_slider.response)) %>%
  rowwise() %>%
  mutate(literacy = sum(c(q1_slider.response, 
                          q2_slider.response, 
                          q3_slider.response, 
                          q4_slider.response, 
                          q5_slider.response))) %>%
  dplyr::select(participant,
         literacy)

# define education categories 
edu_labels <- set_names(c('No formal qualications',
                          'Secondary education (e.g. GED/GCSE)',
                          'High school diploma/A-levels',
                          'Technical/community college',
                          'Undergraduate degree (BA/BSc/other)',
                          'Graduate degree (MA/MSc/MPhil/other)',
                          'Doctorate degree (PhD/other)',
                          'Don\'t know / not applicable'),
                        seq(8,1,-1))

# define gender labels
gender_labels <- set_names(c("Prefer not to say", 
                             "In another way:",
                             "Non-binary", 
                             "Man", 
                             "Woman"),
                           1:5)
# extract demographics
# link slider response numbers to gender categories 
# link slider response numbers to education categories
demographics <- database %>%
  filter(!is.na(genderResp1.response)) %>%
  mutate(genderResp1.response = 
           recode(genderResp1.response, !!!gender_labels)) %>%
  mutate(edu_slider.response =
           recode(edu_slider.response, !!!edu_labels)) %>%
  dplyr::select(participant,
         ageResp.text,
         genderResp1.response,
         edu_slider.response)
         
durations <- database %>%
  filter(!is.na(total_duration)) %>%
  dplyr::select(participant, total_duration)

comments <- database %>%
  filter(!is.na(textbox.text)) %>%
  dplyr::select(participant, textbox.text) %>%
  rename(comments = textbox.text)
  
# select only relevant columns and rows
database <- database %>%
  dplyr::select(participant,
         list_number,
         slider.response,
         slider.rt,
         key_resp.rt,
         cond,
         item_type,
         item_no,
         correct_response,
         AC_correct,
         AC_no_correct,
         AC_outcome,
         session) %>%
  filter(!is.na(item_no)) %>%
  left_join(literacy, by = "participant") %>%
  left_join(demographics, by = "participant") %>%
  left_join(durations, by = "participant") %>%
  left_join(comments, by = "participant")

  
# recode slider.response values
# from 1-2 to 0-1
database <- database %>%
  mutate(slider.response = slider.response - 1,
         correct_response = correct_response - 1)

rejections <- database %>% 
  filter(AC_outcome == "FAIL") %>%
  filter(!is.na(correct_response)) %>%
  dplyr::select(participant,
         list_number,
         slider.response,
         correct_response,
         AC_correct,
         AC_no_correct,
         AC_outcome)

# approvals
approved <- database %>% 
  filter(AC_outcome == "PASS") %>%
  filter(session != "62f529573fa8a531029d43c5") # removed as responses are second attempt

# export just the participant numbers and list numbers
approved %>% 
  select(participant,
         list_number) %>%
  unique() %>%
  write_csv('approved.csv')

approved %>% 
  group_by(participant, list_number) %>%
  count() %>%
  group_by(list_number) %>%
  count()

approved  %>%
  filter(item_no <= 32) %>%
  group_by(cond)  %>%
  summarise(count = n(), mean = mean(slider.response), sd = sd(slider.response))

# anonymisation
keys <- unique(approved$participant)
vals <- seq(1, length(unique(approved$participant)))
approved$participant <- vals[ match(approved$participant, keys) ]

approved %>%
  write_csv("anonymised_dataset.csv")

participant_data %>%
  group_by(participant) %>%
  summarise(sd = sd(slider.response)) %>%
  ggplot(aes(x = participant,
             y = sd)) +
  geom_point()

# write_csv
write_csv(database, "participant_data.csv")

# distribution of correct responses
database %>% 
  count(AC_no_correct) %>%
  ggplot(aes(x = AC_no_correct)) +
  geom_bar() +
  geom_vline(xintercept = 4.5) +
  labs(x = "Number of Correct Answers",
       y = "Count") +
  annotate("rect", xmin = 0, xmax = 4.5, ymin = 0, ymax = Inf,
           alpha = .2) +
  annotate("text", x = 2, y = 85,
           label = "FAIL") +
  annotate("text", x = 5.5, y = 85,
           label = "PASS") +
  theme_minimal()

database %>% 
  filter(AC_outcome == "PASS") %>%
  filter(item_no < 41) %>%
  group_by(cond) %>%
  ggplot(aes(x = cond,
             y = slider.response)) +
  geom_jitter(alpha = 0.05) 

database %>% 
  filter(AC_outcome == "PASS") %>%
  filter(item_no < 41) %>%
  group_by(cond) %>%
  ggplot(aes(x = cond,
             y = slider.response)) +
  geom_jitter(alpha = 0.05, width = 0.1) 
  

