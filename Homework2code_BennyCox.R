#Read Data Set
df_messy <- read.csv("~/Library/Mobile Documents/com~apple~CloudDocs/BIOSTAT/W4HC Week 4 Homework 2 PPH Study.csv")
#Load Library for plotting
library(ggplot2)
library(tidyverse)
library(dplyr)

#Clean the dataset
df <- df_messy %>%
  drop_na(TotalBloodLoss)

#Plot Figure 1
ggplot(df, aes(x = TotalBloodLoss)) +
  geom_histogram(binwidth = 100, fill = "skyblue", color = "black") +
  labs(title = "Total Blood Loss Postpartum") +
  ylab(label = "Frequency") +
  xlab(label = "Total Blood Loss (mL)")

#Conduct differen't summary stats
summary(df$TotalBloodLoss, na.rm=TRUE)
sd(df$TotalBloodLoss, na.rm=TRUE)
range(df$TotalBloodLoss, na.rm=TRUE)

#Find the total number of indivudals within the sample
length(df$TotalBloodLoss)

#Run a one-sample t-test on the data
t.test(df$TotalBloodLoss, mu = 500, alternative = "greater", na.rm=TRUE)

#Run a 95% CI
t.test(df$TotalBloodLoss, conf.level = 0.95, na.rm=TRUE)  # 99% CI
