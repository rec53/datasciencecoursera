#setwd("~/cleaningdata")

x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <-read.table("./UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

features <- read.table("./UCI HAR Dataset/features.txt")
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

names(x_train) <-features$V2
names(x_test) <-features$V2
names(activities) <- c("activity_id","activity")


features_index <- grep("mean|std",colnames(x_test))

x_test <- x_test[features_index]
x_train <- x_train[features_index]

clean_data <- rbind(x_test,x_train)

y_join <-rbind(y_test,y_train)
names(y_join) <- c("activity_id")
subject_join <- rbind(subject_test,subject_train)
names(subject_join) <- c("subject_id")

clean_data$activity_id <- y_join$activity_id
clean_data$subject_id <- subject_join$subject_id

clean_data <-merge(clean_data,activities,by="activity_id")

library(reshape2)

dcast(clean_data,activity_id+activity+subject_id ~ variable,mean)

tidy_data <- group_by(clean_data,subject_id,activity)



