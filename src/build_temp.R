# Exercise 6

library(tidyverse)

# 1. Input
video_view <- read_csv("data/video_view.csv")
creators <- read_csv("data/creators.csv")

# 2. Aggregate to creator level
creator_week4 <- video_view %>%
  group_by(creator_id) %>%
  summarise(
    videos_n = n(),
    impressions_total = sum(impressions_n, na.rm = TRUE),
    watched_total = sum(watched_n, na.rm = TRUE),
    avg_watch_rate = mean(watch_rate, na.rm = TRUE) 
  )
# 3. Output
write_csv(creator_week4, "temp/creator_week4.csv")