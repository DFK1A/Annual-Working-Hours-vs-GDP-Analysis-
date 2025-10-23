# K-means clustering of WH
library(cluster)

# Delete NA cell
selected_data <- na.omit(AWH)

# Standardize mean_growth column
selected_data$WH <- scale(selected_data$WH)

# Perform k-means clustering with 4 clusters
set.seed(123)
kmeans_result <- kmeans(selected_data$WH, centers = 4)

# Add cluster labels to original data
selected_data$cluster <- kmeans_result$cluster
selected_data$cluster <- as.factor(kmeans_result$cluster)

# Create k-means basic table
kmeans_basic_table <- data.frame(kmeans_result$size, kmeans_result$centers)
View(kmeans_basic_table)

# Plot the clusters using ggplot
ggplot(selected_data, aes(x = Country, y = WH, fill = factor(cluster))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(x = "Country", y = "WH", fill = "Cluster") +
  theme(axis.text.x = element_text(size = 5, angle = 45))

# Plot by continent
ggplot(selected_data, aes(y = cluster)) +
  geom_bar(aes(fill = Continent)) +
  ggtitle("Count of Clusters by Continent") +
  theme(plot.title = element_text(hjust = 0.5))
