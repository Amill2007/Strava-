library(neuralnet)
library(caret)
library(ggplot2)
library(corrplot)
install.packages("Hmisc")

library(readr)
strava_data <- read_csv("C:/Users/Abigail Miller/OneDrive - University of Mount Union/strava_data.csv")
View(strava_data)

# Subsets the data to include only numeric columns
num_strava_data <- strava_data[sapply(strava_data, is.numeric)]
# Calculates the correlation matrix of the numeric columns
cor(num_strava_data)
# Creates a correlation plot using the calculated correlation matrix
corrplot(cor(num_strava_data), method="circle",tl.cex=0.7)

# Converts the "name" column to a numeric factor (categorical to numeric)
strava_data$name_num <- as.numeric(factor(strava_data$name))
# Views the modified data with the new "name_num" column
View(strava_data)


## Pearson correlation coefficients

# Calculating correlation between achievement_count and distance
corr_count_distance <- cor(strava_data$achievement_count, strava_data$distance)
print(corr_count_distance )

# Calculating correlation between achievement_count and total_elevation_gain
corr_elevation_distance <- cor(strava_data$achievement_count, strava_data$total_elevation_gain)
print(corr_elevation_distance )


## Spearman R Values

# Calculating correlation between achievement_count and distance 
spearman_r <- cor(strava_data$achievement_count, strava_data$distance, method = "spearman")
print(spearman_r)

# Calculating correlation between achievement_count and total_elevation_gain 
spearman_r <- cor(strava_data$achievement_count, strava_data$total_elevation_gain, method = "spearman")
print(spearman_r)


## Scatter plots 

# Creates a scatter plot with achievement count on the x axis and distance on the y axis
# the color of the points are violet and a linear model with the color blue is being plotted 
ggplot(strava_data) + 
  geom_point(aes(x = achievement_count, y = distance), color = "violet") + 
  geom_smooth(aes(x = achievement_count, y = distance), method = "lm", se = FALSE, color = "blue") +
  labs(x = "Achievement Count", y = "Distance", title = "Distance vs Achievement Count")

# Creates a scatter plot with achievement count on the x axis and total elevation gain the y axis
# the color of the points are orange and a linear model with the color blue is being plotted
ggplot(strava_data) + 
  geom_point(aes(x = achievement_count, y = total_elevation_gain), color = "orange") + 
  geom_smooth(aes(x = achievement_count, y = total_elevation_gain), method = "lm", se = FALSE, color = "blue") +
  labs(x = "Achievement Count", y = "Total Elevation Gain", title = "Distance vs Total Elevation Gain")


