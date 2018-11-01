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

setwd("C:/Users/Owner/Desktop/landscape/project/")
acoustic_detections <- read.csv("landscape/acoustic.csv")
sitea <- read.csv("landscape/biofuel sites.csv")

###collapsing data into site ID and detection/not
acoust <- merge(acoustic_detections,sitea, by="SiteID")

#####
lon <- aggregate(LON~SiteID, data=sitea, FUN=mean)
lat <- aggregate(LAT~SiteID, data=sitea, FUN=mean)
sitea <- merge(lon,lat, by="SiteID")
coordinates(sitea)<-c('LON','LAT')
head(acoust)

nyhu.acousti <- aggregate(NYHU~SiteID, data=acoust, FUN=max)
nyhu.acoustic <- nyhu.acousti[,c(1:2)]
head(nyhu.acoustic)
acous <- aggregate(.~SiteID, data=acoustic_detections, FUN=max)
View(acous)
