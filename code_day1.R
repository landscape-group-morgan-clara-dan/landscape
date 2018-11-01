#libraries needed
library(dismo)
library(raster)
library(rJava)#for calling maxent from dismo package (need Java installed on computer)
library(mgcv)#for gam
library(PresenceAbsence)#for model evaluation
library(randomForest)
library(MuMIn)
library(reshape2)
library(maxnet)#maxent with maxnet
library(glmnet)#needed for maxnet
library(plyr)
library(ggplot2)
library(viridis)

acoustic_detections <- read.csv("C:/Users/Owner/Desktop/research/landscape/acoustic/acoustic.csv")
sitea <- read.csv("C:/Users/Owner/Desktop/research/landscape/acoustic/biofuel sites.csv")