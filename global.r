# Import

print("data charged")

data <- read.csv("DATA/CRIME_DATA_LA.csv", header = TRUE, sep = ";")

data <- data %>%
  filter(LAT >= 24.396308 & LAT <= 49.384358 & LON >= -125.000000 & LON <= -66.934570)

data_pop <- data %>%
  filter(data$vict.sex %in% c("F", "M","X"))

data_ethnie <- data_pop %>%
  group_by(area.name, vict.descent, vict.sex) %>%
  mutate( vict.descent = case_when(
    vict.descent == "W" ~ "White",
    vict.descent == "B" ~ "Black",
    vict.descent == "H" ~ "Hispanic",
    TRUE ~ "Other"
  ),
  vict.sex = case_when(
    vict.sex == "F" ~ "Ladies",
    vict.sex == "M" ~ "Mens",
    TRUE ~ "Other"
  )) %>%
  summarise(nbre_victime = n())

print("data load")