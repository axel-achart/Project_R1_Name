data(iris)
head(iris)
str(iris)
summary(iris)
View(iris)

names(iris)
unique(iris$Species)

iris$Sepal.Length
iris[iris$Species == "setosa", ]
iris$Ratio <- iris$Petal.Length / iris$Petal.Width

plot(iris$Sepal.Length, iris$Sepal.Width,
     col = iris$Species,
     main = "Sepal Length vs Width")

boxplot(Sepal.Length ~ Species, data = iris,
        main = "Longueur des sépales selon l'espèce")

#Histogramme
hist(iris$Petal.Length, breaks = 10, col = "lightblue")

#DPLYR : Tableau de Moyenne + Ecart-type
iris %>%
  group_by(Species) %>%
  summarise(moyenne = mean(Sepal.Length),
            ecart_type = sd(Sepal.Length))

#ggplot2 Scatter plot + Boxplot + Heatmap
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 3) +
  theme_minimal()

ggplot(iris, aes(x = Species, y = Petal.Length, fill = Species)) +
  geom_boxplot() +
  theme_classic()

#Corrplot Heatmap
cor_matrix <- cor(iris[, 1:4])
corrplot::corrplot(cor_matrix, method = "color")

#Export + Save
write.csv(iris, "iris_export.csv", row.names = FALSE)

png("scatterplot.png")
plot(iris$Sepal.Length, iris$Sepal.Width, col = iris$Species)

#Close RStudio

dev.off()

#histogramms

ggplot(iris, aes(x = Species, y = Sepal.Width, fill = Species)) +
       geom_boxplot() +
       theme_classic()
ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
       geom_boxplot() +
       theme_classic()
ggplot(iris, aes(x = Species, y = Petal.Length, fill = Species)) +
       geom_boxplot() +
       theme_classic()
ggplot(iris, aes(x = Species, y = Petal.Width, fill = Species)) +
       geom_boxplot() +
       theme_classic()