## 🔍 Rapport d’analyse exploratoire - Dataset Iris (projet en trinôme)

Ce projet avait pour objectif de réaliser une analyse statistique et graphique du célèbre dataset `iris`, composé de 3 espèces de fleurs : **Setosa**, **Versicolor** et **Virginica**.

---

### Répartition des rôles

- Chaque membre du groupe s’est concentré sur **une espèce spécifique** :
  - *Setosa*
  - *Versicolor*
  - *Virginica*
  
- Une phase finale de **fusion des analyses** a permis d’aboutir à une conclusion globale sur les patterns morphologiques permettant de distinguer les espèces.

---

### Choix méthodologiques

- Utilisation de packages pour la manipulation des données et des bibliothèques Python pour les visualisations.
- Focalisation initiale sur chaque espèce, avec :
  - Calculs de **moyennes**, **médianes**, **écarts-types**
  - Étude de la **distribution des variables** (histogrammes + courbes de densité)
  - **Heatmap de corrélation** entre variables numériques
  - **Analyse visuelle des patterns inter-espèces** (scatter plot, `ggpairs`)

---

### Visualisations utilisées

- **Histogrammes** par espèce pour analyser la forme des distributions.
- **Courbes de densité** superposées pour comparer les variables.
- **Matrice de corrélation (corrplot)** pour chaque espèce.
- **Scatter plot** pour observer la séparabilité des espèces.
- **`ggpairs`** : visualisation croisée des relations entre variables pour les 3 espèces.

---

### Principaux insights

- **Setosa** est **nettement séparée** des deux autres espèces : les pétales sont significativement plus petits.
- **Versicolor** est intermédiaire, avec des **pétales moyennement longs** et une corrélation forte entre `Petal.Length` et `Petal.Width`.
- **Virginica** a des valeurs de pétales **plus grandes** et parfois chevauchantes avec Versicolor.
- Les **pétales** sont globalement plus discriminants que les sépales pour classifier les espèces.
- La heatmap révèle des **corrélations structurelles stables** entre certaines variables pour chaque espèce (notamment Petal.Length et Petal.Width).

---

### Conclusion

Ce travail collaboratif a permis d’obtenir une **compréhension fine et comparative** des 3 espèces du dataset `iris`.  
Les visualisations statistiques (ggplot2, corrplot, ggpairs) ont permis de :
- Repérer les **variables discriminantes**
- Mettre en lumière les **patterns morphologiques** propres à chaque espèce
- Démontrer la pertinence d’un futur **modèle de classification supervisée**