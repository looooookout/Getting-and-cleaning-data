# This is the analysis script for getting and cleanning data course project
# from coursera Data Science Specialization

# Download and unzip the dataset
zipfile <- "Assignmentfile.zip"
dirt <- "./UCI HAR Dataset"
dataurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if (!file.exists(zipfile)){
    download.file(dataurl, destfile = zipfile, mode = 'wb')
}
if(!file.exists(dirt)){
    unzip(zipfile)
}

# Load data to R
features <- read.table(paste(dirt,"features.txt",sep = "/"))
activelabel <- read.table(paste(dirt,"activity_labels.txt",sep = "/"))
xtrain <- read.table(paste(dirt,"train/X_train.txt",sep = "/"))
ytrain <- read.table(paste(dirt,"train/y_train.txt",sep = "/"))
xtest <- read.table(paste(dirt,"test/X_test.txt",sep = "/"))
ytest <- read.table(paste(dirt,"test/y_test.txt",sep = "/"))
subtest <- read.table(paste(dirt,"test/subject_test.txt",sep = "/"))
subtrain <- read.table(paste(dirt,"train/subject_train.txt",sep = "/"))

# Merge the training and test data set
binddata <- rbind(xtrain,xtest)

# Extract the mean and std for each measurement
clearfactor <- grep("mean()|std()",features$V2)
cleardata <- binddata[,clearfactor]
clearfeature <- features[clearfactor,2]

# Name the activities with descriptive activity names and label the variable names
bindsub <- rbind(subtrain,subtest)
bindact <- rbind(ytrain,ytest)
binddata <- cbind(bindsub,bindact,cleardata)
labelin <- factor(binddata[,2])
levels(labelin) <- activelabel[,2]
binddata[,2] <- labelin
names (binddata) <- c("subject","activity",as.character(clearfeature))

# Creat the second table with each variable, activity and subject
if (!"reshape2" %in% installed.packages()){
    install.packages("reshape2")
}
library(reshape2)
meltdata <- melt(binddata,id.vars = c("subject","activity"))
averge <- dcast(meltdata,subject + activity ~variable,mean)
write.csv(averge,"Tidy_Averge.csv",row.names = FALSE)