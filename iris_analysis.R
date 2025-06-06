# Solution Projet R Botanica Iris

data(iris) # Charge Data
head(iris) # Afficher les premières lignes
str(iris) # Structure des données
summary(iris) # Résumé
view(iris) # Vue Excel Type

# Colonnes dispo
names(iris)
unique(iris$Species)

# Sélectionner une colonne
iris$Sepal.Length

# Filtrer des lignes
iris[iris$Species == "setosa", ]

# Créer une nouvelle variable
iris$Ratio <- iris$Petal.Length / iris$Petal.Width

# Scatter plot
plot(iris$Sepal.Length, iris$Sepal.Width,
     col = iris$Species,
     main = "Sepal Length vs Width")

# Box plot
boxplot(Sepal.Length ~ Species, data = iris,
        main = "Longueur des sépales selon l'espèce")

# Histogramme
hist(iris$Petal.Length, breaks = 10, col = "lightblue")



# Installer si besoin :
install.packages("dplyr")
library(dplyr)

iris %>%
  group_by(Species) %>%
  summarise(moyenne = mean(Sepal.Length),
            ecart_type = sd(Sepal.Length))



# Installer si besoin :
install.packages("ggplot2")
library(ggplot2)

# Scatter plot avec ggplot2
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 3) +
  theme_minimal()

# Boxplot
ggplot(iris, aes(x = Species, y = Petal.Length, fill = Species)) +
  geom_boxplot() +
  theme_classic()

# Heatmap de corrélation
library(corrplot)
cor_matrix <- cor(iris[, 1:4])
corrplot::corrplot(cor_matrix, method = "color")

# Exporter en CSV
write.csv(iris, "iris_export.csv", row.names = FALSE)

# Sauvegarder un graphique
png("scatterplot.png")
plot(iris$Sepal.Length, iris$Sepal.Width, col = iris$Species)
dev.off()