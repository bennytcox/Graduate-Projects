# Homework 1
# Benny Cox
# BIOSTAT I


#Import dataset
df <- read.csv("~/Library/Mobile Documents/com~apple~CloudDocs/BIOSTAT/BIOSTAT R/W2HP Week 2 Homework 1 PPH Study.csv")

#-------------------------#
# Post Partum Hemoglobin
#-------------------------#
#Create graph
hist(df$HbPost, na.rm=TRUE, main='Post Partum Hemoglobin Count,', xlab='Hemoglobin grams/deciliter (g/dL)', col='red')

#Summary of Center
  #Robust
  median(df$HbPost, na.rm=TRUE)
  #Non Robust
  mean(df$HbPost, na.rm=TRUE)

#Summary of spread
  #Robust
  sd(df$HbPost, na.rm=TRUE)
  #Non Robust (Range or IQR)
  range(df$HbPost, na.rm=TRUE)
  
  #ALL (Can see Q1/Q3 for IQR)
  summary(df$HbPost)

  #-------------------------#
  # Post Delivery Blood Loss
  #-------------------------#
  
  hist(df$TotalBloodLoss, na.rm=TRUE, main='Total Blood Loss,', xlab='Blood loss milliters (mL)', col='red')
  
  #Summary of Center
  #Robust
  median(df$TotalBloodLoss, na.rm=TRUE)
  #Non Robust
  mean(df$TotalBloodLoss, na.rm=TRUE)
  
  #Summary of spread
  #Robust
  sd(df$TotalBloodLoss, na.rm=TRUE)
  #Non Robust (IQR or Range)
  range(df$TotalBloodLoss, na.rm=TRUE)
  
  #ALL (Can see Q1/Q3 for IQR)
  summary(df$TotalBloodLoss)
  
