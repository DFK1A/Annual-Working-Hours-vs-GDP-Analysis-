#Create histogram
ggplot(selected_data, aes(x = WH, color = Continent)) +
  geom_histogram(fill = "white", position = "dodge")

# Group the data by continent and select the top 20 countries by GDP
big_gdp <- AWH %>%
  group_by(Continent) %>%
  arrange(desc(GDP)) %>%
  slice_head(n = 20)

# Group the data by continent and select the bottom 20 countries by GDP
low_gdp <- AWH %>%
  group_by(Continent) %>%
  arrange(GDP) %>%
  slice_head(n = 20)

# Group the data by continent and select the top 20 countries by working hours
long_working_hours <- AWH %>%
  group_by(Continent) %>%
  arrange(desc(WH)) %>%
  slice_head(n = 20)

# Group the data by continent and select the bottom 20 countries by working hours
short_working_hours <- AWH %>%
  group_by(Continent) %>%
  arrange(WH) %>%
  slice_head(n = 20)

# Combine the selected data into a single data frame
selected_data <- bind_rows(big_gdp, low_gdp, long_working_hours, short_working_hours)
