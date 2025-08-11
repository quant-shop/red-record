library(usmap)
library(maps)
library(tidyverse)
library(tidycensus)
library(dplyr)
library(ggplot2)
library(sf)
library(mapview)
library(mapproj)
Wapo2024 <- read.csv("df2024.csv")
view(Wapo2024)
summary(Wapo2024)
wells1894 <- read.csv("Red Record Lynching Record - 1894.csv")
view(wells1894)
us_map <- map_data("state")
p <- ggplot() +
  geom_polygon(data = us_map, aes(x = long, y = lat, group = group),
               fill = "white", color = "black") +
  coord_map() # Ensures correct map projection
wapo24_cleaned <- Wapo2024 [complete.cases(Wapo2024[, c("latitude","longitude")]), ]
view(wapo24_cleaned)
wapo24_black <- wapo24_cleaned %>% filter(race == "B")
wapo24_map <- p + geom_point(data = wapo24_black, aes(x = longitude, y = latitude),
                             color = "blue", size = 0.8, alpha = 0.7)
wapo24_map



