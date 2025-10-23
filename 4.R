# Fancy K-Means
fviz_nbclust(scale(selected_data[,4:6]), kmeans, nstart = 100, method = "wss") +
  geom_vline(xintercept = 5, linetype = 1)

# Fancy kmeans
kmeans_fancy <- kmeans(scale(selected_data[,4:6]), 5, nstart = 100)
# Plot the clusters
fviz_cluster(kmeans_fancy, data = scale(selected_data[,4:6]), geom = c("point"), ellipse.type = "euclid")

# Cluster plot k=4
kmeans_fancy_4 <- kmeans(scale(selected_data[,4:6]), 4, nstart = 100)
# Plot the clusters
fviz_cluster(kmeans_fancy_4, data = scale(selected_data[,4:6]), geom = c("point"), ellipse.type = "euclid")
