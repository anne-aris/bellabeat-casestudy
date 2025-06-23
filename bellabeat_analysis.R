#Upload tidyverse and lubridate

library(tidyverse)
library(lubridate)

# Renaming data
daily <- read_csv("cleaned_daily_activity.csv")
sleep <-read_csv("cleaned_sleep_day.csv")
weight <- read_csv("cleaned_weight_log_info.csv")

# Checking the data
glimpse(daily)
glimpse(sleep)
glimpse(weight)

# Clean up date columns if needed
daily <- daily %>%
  mutate(activity_date = mdy(activity_date))

sleep <- sleep %>%
  mutate(sleep_day = mdy(sleep_day))

weight <- weight %>%
  mutate(date = mdy(date))

# Plot No. 1: Total Steps vs Calories
ggplot(daily, aes(x = total_steps, y = calories, color = calories)) +
  geom_point(size = 3, alpha = 0.8) +
  scale_color_gradientn(
    colors = c("blue", "skyblue", "yellow", "orange", "red"),
    name = "Calories Burned"
  ) +
  theme_minimal() +
  labs(
    title = "Total Steps vs Calories Burned",
    x = "Total Steps",
    y = "Calories Burned"
  )

# Plot No. 2: Average Steps by Day of the Week

library(dplyr)
library(ggplot2)

library(lubridate)
daily <- daily %>%
  mutate(activity_date = mdy(activity_date))

# Add weekday column
daily <- daily %>%
  mutate(day_of_week = wday(activity_date, label = TRUE, abbr = FALSE))

daily <- daily %>%
  mutate(day_of_week = wday(activity_date, label = TRUE, abbr = FALSE))

# AVERAGE STEPS BY DAY OF THE WEEK

library(readr)
library(dplyr)
library(lubridate)
library(ggplot2)

daily <- read_csv("cleaned_daily_activity.csv")

head(daily$activity_date)

daily <- daily %>%
  mutate(activity_date = mdy(activity_date))

head(daily$activity_date)

str(daily$activity_date)

daily <- daily %>%
  mutate(day_of_week = wday(activity_date, label = TRUE, abbr = FALSE))

weekday_steps <- daily %>%
  group_by(day_of_week) %>%
  summarise(avg_steps = mean(total_steps, na.rm = TRUE))

ggplot(weekday_steps, aes(x = day_of_week, y = avg_steps)) +
  geom_col(fill = "#F7C") +
  theme_minimal() +
  labs(
    title = "Average Steps by Day of the Week",
    x = "Day of the Week",
    y = "Average Steps"
  )

ggsave("visuals/avg_steps_by_weekday.png", width = 8, height = 6)


# Plot No. 3: Sleep Duration vs Calories Burned

sleep <- read_csv("cleaned_sleep_day.csv", col_types = cols(.default = "c"))

colnames(sleep)

head(sleep$sleep_day)

sleep <- sleep %>%
  mutate(
    sleep_day = str_trim(sleep_day),
    sleep_day = str_replace_all(sleep_day, "\\s+", " "),
    sleep_day = mdy_hm(sleep_day),
    sleep_day = as_date(sleep_day)
  )

head(sleep$sleep_day)
str(sleep$sleep_day)

daily <- daily %>%
  mutate(id = as.character(id))

sleep <- sleep %>%
  mutate(id = as.character(id))

merged_sleep <- left_join(daily, sleep, by = c("id", "activity_date" = "sleep_day"))


plot_data <- merged_sleep %>%
  filter(!is.na(total_minutes_asleep), !is.na(calories))

# Plot Sleep Duration vs Calories Burned
ggplot(plot_data, aes(x = total_minutes_asleep, y = calories, color = calories)) +
  geom_point(size = 3, alpha = 0.8) +
  geom_smooth(method = "lm", se = FALSE, color = "#D291BC", linewidth = 1.2) +
  scale_color_gradient(low = "#A0C4FF", high = "#FFADAD") +
  theme_minimal() +
  labs(
    title = "Sleep Duration vs Calories Burned",
    x = "Total Minutes Asleep",
    y = "Calories Burned",
    color = "Calories"
  )

# Version 2
ggplot(plot_data, aes(x = total_minutes_asleep, y = calories, color = calories)) +
  geom_point(size = 3, alpha = 0.8) +
  geom_smooth(method = "lm", se = FALSE, color = "#D291BC", linewidth = 1.2) +
  scale_color_gradient(low = "#A0C4FF", high = "#FFADAD") +
  scale_x_continuous(breaks = seq(200, 1000, by = 100)) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(
    title = "Sleep Duration vs Calories Burned",
    x = "Total Minutes Asleep",
    y = "Calories Burned",
    color = "Calories"
  )

sleep_plot <- ggplot(plot_data, aes(x = total_minutes_asleep, y = calories, color = calories)) +
  geom_point(size = 3, alpha = 0.8) +
  geom_smooth(method = "lm", se = FALSE, color = "#D291BC", linewidth = 1.2) +
  scale_color_gradient(low = "#A0C4FF", high = "#FFADAD") +
  scale_x_continuous(breaks = seq(200, 1000, by = 100)) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(
    title = "Sleep Duration vs Calories Burned",
    x = "Total Minutes Asleep",
    y = "Calories Burned",
    color = "Calories"
  )


ggsave("visuals/sleep_vs_calories_gradient.png", plot = sleep_plot, width = 8, height = 6, dpi = 300)


plot_data <- plot_data %>%
  mutate(total_minutes_asleep = as.numeric(total_minutes_asleep))
str(plot_data$total_minutes_asleep)

#LAST SAVE
save.image("bellabeat_analysis_workspace.RData")

