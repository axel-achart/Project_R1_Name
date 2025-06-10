setosa_stats <- list(
  summary = summary(setosa_data[,1:4]),
  detailed = setosa_data %>%
    select(-Species)%>%
    summarise_all(list(
      mean = ~mean(.),
      median = ~median(.),
      sd = ~sd(.),
      min = ~min(.),
      max = ~max(.),
      q25 = ~quantile(.,0.25),
      q75 = ~quantile(.,0.75)
    )) %>%
    pivot_longer(everything(),
                 names_to = c("mesurement","statistic"),
                 names_sep = "_") %>%
    pivot_wider(names_from = statistic,
                values_from = value),
  correlations = cor(setosa_data[, 1:4])
)

p1 <- setosa_data %>%
  pivot_longer(cols = -Species,
               names_to = "mesurement",
               values_to = "Value") %>%
  ggplot(aes(x = Value)) +
  geom_histogram(fill = "darkgreen", alpha = 0.7, bins = 15) +
  facet_wrap(~mesurement, scales = "free") +
  theme_minimal() +
  labs(title = "Distribution des mesures sur Setosa",
       subtitle = "50 observations des Setosa Iris")

corrplot(setosa_stats$correlations,
         method  = "color",
         type = "upper",
         addCoef.col = "black",
         tl.col = "white",
         title = "Setosa Feature Correlations")

dir.create("setosa_analysis", showWarnings = FALSE)
write.csv(setosa_stats$detailed, 
          "setosa_analysis/setosa_statistics.csv", 
          row.names = FALSE)
ggsave("setosa_analysis/setosa_distributions.png", 
       plot = p1, width = 10, height = 8)
cat("SETOSA ANALYSIS COMPLETE!\n",
    "Files saved in: setosa_analysis/\n",
    "Total observations analyzed:", nrow(setosa_data))