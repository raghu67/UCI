# Load the dplyr package
library(dplyr)
#Download and unzip the data file if it is not already present
if (!file.exists("DataSet.zip")) {
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","DataSet.zip","curl", quiet = TRUE )
        unzip("DataSet.zip")
}
#read.fwf takes a long time to complete for large data sets. Therefore, Here we cache it as an R serialized object 
# for faster processing

if(file.exists("X_full.dat")) {
        #Read the cached version of the data frame
        X_full <- readRDS("X_full.dat")
} else {
        #Load the training dataset
        X_train <- read.fwf("UCI HAR Dataset/train/X_train.txt", widths=rep(16,561))
        #Load the testing dataset
        X_test <- read.fwf("UCI HAR Dataset/test/X_test.txt", widths=rep(16,561))
        #Merge the two datasets
        X_full <- rbind(X_train,X_test)
        #Serialize it to file for future use
        saveRDS(X_full, file="X_full.dat")
}
#Read the Feature Descriptions
features <- read.table("UCI HAR Dataset/features.txt")
names(features) <- c("index","Feature_Label")

#Assign descriptive feature names to each column
names(X_full) <- features$Feature_Label

#Select only the columns with the word "mean" or "std" anywhere in the name using case insensitive comparison
X_selected <- X_full[,c(grep("mean",features$Feature_Label,ignore.case=TRUE),
                     grep("std",features$Feature_Label,ignore.case=TRUE))]

#Read the Subject ids from training dataset
Subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
#Read the Subject ids from test dataset
Subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
#Combine the Trainng and Test Subject Ids
Subject_full <- rbind(Subject_train,Subject_test)

#Read the training activity ids
Activity_train <- read.table("UCI HAR Dataset/train/y_train.txt")
#Read the test activity ids
Activity_test <- read.table("UCI HAR Dataset/test/y_test.txt")
#Combine the training and test activity ids
Activity_full <- rbind(Activity_train,Activity_test)
#Read the Activity Labels
Activity_labels = read.table("UCI HAR Dataset/activity_labels.txt")
names(Activity_labels) <- c("Code","Label")

#Add the Subject Column to Measurements Data Frame
X_selected <- cbind(X_selected,Subject_full)
X_selected <- dplyr::rename(X_selected,Subject = V1)

#Add the Activity Column to Measurements Data Frame
X_selected <- cbind(X_selected,Activity_full)
X_selected <- dplyr::rename(X_selected,Activity = V1)
#Replace the Activity id with the Activity Labels by looking up the Activity code in the Activiy Labels Vector
X_selected$Activity <- Activity_labels[match(X_selected$Activity,Activity_labels$Code),'Label']
#Group the measurements by Subject and Activity
X_grouped <- group_by(X_selected,Subject,Activity)
#Summarize each measurement by computing the mean of each measurement for each Subject/Activity pair
X_summary <- summarise_each(X_grouped,c("mean"))
#Write out the Table
write.table(X_summary,file="Summary.txt", row.names=FALSE)

