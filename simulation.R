library(tidyverse)

# WRANGLING ----
# read in the data
dataset <- read_csv("anonymised_dataset.csv")

# create new dataframe with only experimental items
experimental <- dataset %>%
  filter(item_no <= 32)
# this must be done before converting item_no to character

# change the data type for relevant columns
experimental <- experimental %>%
  mutate(across(cond, as_factor),
         across(c(item_no, participant), as.character))

mini <- experimental %>%
  dplyr::select(item_no, participant, cond, slider.response)

new_full_values <- mini %>% 
  rbind(filter(mini, cond == "full")) %>%
  cbind(denominator = rep(""))

new_trunc_values <- mini %>%
  filter(cond == "trunc") %>%
  dplyr::select(-slider.response) %>%
  cbind(slider.response = rnorm(2400, 0.6, 0.1))

mini <- mini %>%
  rbind(new_trunc_values,
        new_full_values)

mini %>%
  group_by(cond)  %>%
  summarise(count = n(), mean = mean(slider.response), sd = sd(slider.response))

# then for the right number of observations, remove participants with odd numbers

mini %>% 
  ggplot(aes(x = slider.response,
             y = cond,
             fill = cond)) + 
  geom_density_ridges(#colour = "white",
                      #jittered_points = TRUE, 
                      #alpha = 0.05,
                      scale = 0.6,
                      point_colour = "black") +
  labs(x = "Magnitude Rating",
       y = NULL) +
  theme_minimal() +
  scale_x_continuous(breaks = c(0,1),
                     minor_breaks = c(),
                     labels = c())  
  