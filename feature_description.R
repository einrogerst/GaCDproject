## manipulate and save a meaningful feature description
featNames <- data.frame(feature=names(tidy))
featNames$description <- featNames$feature
featNames$description <- gsub("Body", "body ", featNames$description)
featNames$description <- gsub("Gravity", "gravity ", featNames$description)
featNames$description <- gsub("Acc", "linear acceleration ", featNames$description)
featNames$description <- gsub("Gyro", "angular velocity ", featNames$description)
featNames$description <- gsub("Jerk", "Jerk signal ", featNames$description)
featNames$description <- gsub("Mag", "magnitude", featNames$description)
featNames$description <- gsub("Acc", "acceleration ", featNames$description)
featNames$description <- gsub("(.)([X-Z])", "on \\2-axis", featNames$description, fixed = F)
featNames$description[grep("^t", featNames$description)] <- 
  paste(featNames$description[grep("^t", featNames$description)], "over time")
featNames$description[grep("^f", featNames$description)] <- 
  paste(featNames$description[grep("^f", featNames$description)], "frequency")
featNames$description <- gsub("^(t|f)", "", featNames$description)
featNames$description[grep(".AvgStd", featNames$description)] <- 
  paste("average standard deviation of", featNames$description[grep(".AvgStd", featNames$description)])
featNames$description[grep(".AvgMean", featNames$description)] <- 
  paste("average mean of", featNames$description[grep(".AvgMean", featNames$description)])
featNames$description <- gsub(".Avg(Std|Mean)", "", featNames$description)

write.table(featNames, 
            file="feature_description.txt", 
            row.names = F, 
            col.names = F,
            quote = F,
            sep = "|")
