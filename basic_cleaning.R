#### Basic cleaning ####
raw_elections_data <- read_csv("2021_Canadian_Election.csv")
cleaned_elections_data <-
  clean_names(raw_elections_data)

cleaned_elections_data <-
  cleaned_elections_data |>
  select(
    electoral_district_name_nom_de_circonscription,
    elected_candidate_candidat_elu
  )

cleaned_elections_data <-
  cleaned_elections_data |>
  separate(
    col = elected_candidate_candidat_elu,
    into = c("Other", "party"),
    sep = "/"
  ) |>
  select(-Other)

cleaned_elections_data <-
  cleaned_elections_data |>
  mutate(
    party =
      case_match(
        party,
        "Libéral" ~ "Liberal",
        "Conservateur" ~ "Conservative",
        "Bloc Québécois" ~ "Bloc Québécois",
        "NPD-Nouveau Parti démocratique" ~ "New Democratic",
        "Parti Vert" ~ "Green"
      )
  )

head(cleaned_elections_data)