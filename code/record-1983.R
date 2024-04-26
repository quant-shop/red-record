# 1893 map
library(dplyr)
library(ggplot2)
library(stringr)
library(magrittr)
install.packages("xts")          # To make the convertion data-frame / xts format
library(xts)
install.packages("dygraphs")
library(dygraphs)

## load date; cite from caitlin p (2015)
record1893 <- read.csv("/Users/nathanalexander/Dropbox/Projects/lynching/IdaBWellsProject/RedRecord/redrecord1893.csv")
head(record1893)
tail(record1893)
str(record1893)

# changes to data
record1893 %>% 
  rename(lat = Latitude,
         lon = Longitude) -> record1893

record1893$count <- str_count(record1893$Names, ",")+1 
head(record1893)

library(lubridate)
install.packages("parsedate")
library(parsedate)

# An example using parse_date() on the column date_onset
record1893 %>% 
  mutate(date = as.Date(Date, format = "%b.%d,%Y")) -> record1893

str(record1893)
glimpse(record1893)

ggplot(record1893, aes(x=date, y=count)) +
  geom_line( color="steelblue") + 
  geom_point() +
  xlab("Date") + 
  ylim(1,7)


don <- xts(x = record1893$count, order.by = record1893$date)
p <- dygraph(don) %>%
  dyOptions(labelsUTC = TRUE, fillGraph=TRUE, fillAlpha=0.1, drawGrid = FALSE, colors="#D8AE5A") %>%
  dyRangeSelector() %>%
  dyCrosshair(direction = "vertical") %>%
  dyHighlight(highlightCircleSize = 5, highlightSeriesBackgroundAlpha = 0.2, hideOnMouseOut = FALSE)  %>%
  dyRoller(rollPeriod = 1)
p
