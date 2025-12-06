# Strava-
This project analyzes the cycling activities of a Strava user named Pedro. The code is looking to answer three main questions using machine learning, statistics, and visualizations with graphs.  
This repository contains an analysis of a cycling athlete's performance and engagement data from strava. The goal is to explore factors influencing kudos count, maximim speed, and achievement count in relation to various workout features like moving time, distance, and total elevation gain. 

The analysis answers three key questions using machine learning and statistical methods:
1. Can the number of kudos Pedro receives be predicted using workout features like distance, moving time, and elevation gain?
2. Can we predict whether Pedro’s maximum speed was faster or slower than his average maximum speed based on workout features?
3. Which factor has a stronger impact on Pedro’s achievement count—distance or total elevation gain?

Once downloaded, if libraries are not alredy installed makes sure to download and import them. (The required libraries can be found in the code files Strava and Final_DSC140). 
Next download the Strava data file in a .csv file. It should have columns like Distance, Moving Time, Elevation Gain, Max Speed, Kudos Count, and Achievement Count.
Then run the required libraries and import the .csv file in to R and python. 

Import the data by adding this to your Python script:
import pandas as pd
strava_data = pd.read_csv("path_to_your_file.csv")

Import the data by adding this to your R script:
library(readr)
strava_data <- read_csv("path_to_your_file.csv")

Once the libraries are installed and the data is imported, you can run the code.
This will:
1. Train the machine learning models.
2. Generate results like accuracy and visualizations.


