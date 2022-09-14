###MEAN - DEVIATION_STANDARD - MEDIAN
# the data - https://www.kaggle.com/datasets/elikplim/forest-fires-data-set?resource=download
#P. Cortez and A. Morais. A Data Mining Approach to Predict Forest Fires using Meteorological Data.
#In J. Neves, M. F. Santos and J. Machado Eds., New Trends in Artificial Intelligence,
#Proceedings of the 13th EPIA 2007 - Portuguese Conference on Artificial Intelligence, December,
#Guimaraes, Portugal, pp. 512-523, 2007. APPIA, ISBN-13 978-989-95618-0-9.

#Import dataset 
#check where the dataset should be
#The table has, besides month, day, temp, relative humidity, wind, rain, area:
#Fine Fuel Moisture code (FFMC) - Rain, RH, Temp, wind; 
#Duff Moisture Code (DMC) - rain, RH, Temp; 
#Drought Code (DC) - Rain, Temp; 
#Initial Spread Index (ISI) - FFMC, wind. 


getwd()

#change workbook
setwd("D:/Aislangc2014/Projetos_Rstudio/Initial_information")

df <- read.csv("forestfires.csv",header = TRUE)

#installing new libraries
install.packages("dplyr")
install.packages("ggplot2")
install.packages("tidyverse")
install.packages("gridExtra")


#import libraries to work
library(dplyr)
library(ggplot2)
library(tidyverse)
library(gridExtra)

#Questions to be answered with this code:
#1 - what are the mean values and standard deviation of the numerical data?
#2 - what are the mean values and standard deviation of the numerical data, when the "n" of the samples are (10, 50, 100, 200, 500) selected in a simple and systematic random way?

#select the data to work:
df
df_numerical <- select(df, FFMC, DMC, DC, ISI, temp, RH, wind, rain, area)

df_numerical

#look the first lines e columns
head(df_numerical)

#check the type of data
str(df_numerical)

#getting the mean and median of all numerical data
#FFMC
mean(df_numerical$FFMC) #90.64
median(df_numerical$FFMC) #91.6
sd(df_numerical$FFMC) #5.52

#DMC
mean(df_numerical$DMC) #110.87
median(df_numerical$DMC) #108.3
sd(df_numerical$DMC) #64.05

#DC
mean(df_numerical$DC) #547.94
median(df_numerical$DC) #664.2
sd(df_numerical$DC) #248.07

#ISI
mean(df_numerical$ISI) #9.02
median(df_numerical$ISI) #8.4
sd(df_numerical$ISI) #4.56

#RH
mean(df_numerical$RH) #44.29
median(df_numerical$RH) #42
sd(df_numerical$RH) #16.32

#wind
mean(df_numerical$wind) #4.02
median(df_numerical$wind) #4
sd(df_numerical$wind) #1.80

#rain
mean(df_numerical$rain) #0.02
median(df_numerical$rain) #0
sd(df_numerical$rain) #0.3

#temp
mean(df_numerical$temp) #18.89
median(df_numerical$temp) #19.3
sd(df_numerical$temp) #5.81

#area
mean(df_numerical$area) #12.85
median(df_numerical$area) #0.52
sd(df_numerical$area) #63.66














