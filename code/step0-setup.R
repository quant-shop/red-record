library(ggplot2)
library(dplyr)
require(maps)
require(viridis)
theme_set(
  theme_void()
)

arrests <- USArrests 
arrests$region <- tolower(rownames(USArrests))
head(arrests)

# Retrieve the states map data and merge with crime data
states_map <- map_data("state")
arrests_map <- left_join(states_map, arrests, by = "region")

# Create the map
ggplot(arrests_map, aes(long, lat, group = group))+
  geom_polygon(aes(fill = Assault), color = "white")+
  scale_fill_viridis_c(option = "C")

