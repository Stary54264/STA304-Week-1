#### Visualize the data #### 
cleaned_elections_data |>
  count(party)

cleaned_elections_data |>
  ggplot(aes(x = party)) +
  geom_bar() +
  theme_minimal() + 
  labs(x = "Party", y = "Number of seats")