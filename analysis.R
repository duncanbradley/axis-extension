library(tidyverse)
library(ggridges)
library(lme4)
library(lmerTest)
library(fitdistrplus)
library(performance)

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

# dataset <- dataset %>%
#   mutate(item_type = case_when(item_no <= 32 ~ "E",
#                                item_no > 32 & item_no < 41 ~ "F",
#                                item_no >= 41 ~ "AC"))

dataset  %>%
  group_by(item_type)  %>%
  summarise(count = n(), mean = mean(slider.response), sd = sd(slider.response))

# experiment duration
dataset %>%
  dplyr::select(participant, total_duration) %>%
  mutate(dup = duplicated(.)) %>%
  filter(dup == "FALSE") %>%
  summarise(duration_mean = mean(total_duration/60), 
            duration_sd = sd(total_duration/60))


# VISUALISATION ----
# visusalising distribution of responses across conditions
experimental %>% 
  ggplot(aes(x = slider.response,
             y = cond)) + 
  geom_density_ridges(colour = "white",
                      jittered_points = TRUE, 
                      alpha = 0.05,
                      scale = 0.6,
                      point_colour = "black") +
  labs(x = "Magnitude Rating",
       y = NULL) +
  theme_minimal() +
  scale_x_continuous(breaks = c(0,1),
                     minor_breaks = c(),
                     labels = c())

experimental %>% 
  ggplot(aes(x = slider.response,
             y = cond)) + 
  stat_summary(fun.data = "mean_cl_normal", 
               color = "darkgreen", 
               size = 1, 
               geom = "errorbar", 
               alpha = 0.7,
               width = 0.5,
               fun.args = list(conf.int = 0.95)) +
  stat_summary(geom = "point", 
               fun = "mean", 
               size = 1) +
  scale_x_continuous(breaks = c(0, 0.2, 0.4, 0.6, 0.8, 1),
                     limits = c(0,1),
                     expand = c(0.001,0.001),
                     minor_breaks = c()) +
  facet_wrap(~ item_no <= 16, nrow = 2) +
  theme_minimal()

# calculating mean and median response for each condition
experimental %>% 
  filter(slider.response < 0.5) %>%
  group_by(cond) %>%
  summarise(mean = mean(slider.response),
            median = median(slider.response))

# visualising slope between conditions for each participant
experimental %>% 
  group_by(cond, participant) %>%
  summarise(mean.response = mean(slider.response)) %>%
  ggplot(aes(x = cond,
             y = mean.response, 
             group = participant)) + 
  labs(x = "Condition",
       y = NULL,
       title = "Average Slope, per participant") +
  scale_y_continuous(limits = c(0,1), 
                     labels = c(), 
                     breaks = c(seq(from = 0, to = 1, by = .2)),
                     minor_breaks = c(),
                     expand = c(0,0)) +
  scale_x_discrete(limits = c("trunc", "full"),
                   labels = c("ggplot2 Default", "Extended Range")) +
  geom_hline(yintercept = c(0,1)) +
  geom_point(alpha = 0.1) +
  geom_line(alpha = 0.3) +
  theme_minimal(base_size = 20)

 # MODELLING ----
# plotting data distribution
descdist(experimental$slider.response)

contrasts(experimental$cond) <- matrix(c(.5, -.5))

# model with normal distribution
model1 <- lmer(slider.response ~ cond + 
                     (1 + cond | item_no) +
                     (1 + cond | participant),
                   data = experimental)
summary(model1) 

modelnull <- lmer(slider.response ~ 
                 (1 + cond | item_no) +
                 (1 + cond | participant),
               data = experimental)
summary(modelnull) 

check_model(model1)

modelLit <- lmer(slider.response ~ cond + literacy +
                     (1 + cond | item_no) +
                     (1 + cond | participant),
                   data = experimental)
summary(modelLit) 

anova(model1, modelLit)

check_model(modelLit)

experimental  %>%
  group_by(cond)  %>%
  summarise(count = n(), mean = mean(slider.response), sd = sd(slider.response))

# modelling responses below 50% point
model50 <- lmer(slider.response ~ cond + 
                  (1 + cond | item_no) +
                  (1 + cond | participant),
                data = experimental %>% filter(slider.response < 0.5))

model50null <- lmer(slider.response ~ 
                      (1 + cond | item_no) +
                      (1 + cond | participant),
                    data = experimental %>% filter(slider.response < 0.5))

anova(model50null, model50)


experimental  %>%
  filter(slider.response < 0.5) %>%
  group_by(cond)  %>%
  summarise(count = n(), mean = mean(slider.response), sd = sd(slider.response))
