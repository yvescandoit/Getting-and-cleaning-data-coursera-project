###Reading the Datasets
features <- read.table("features.txt",col.names = c("n","functions"))
activity <- read.table("activity_labels.txt",col.names = c("code","activity"))

##now reading the train data set where the x_train is assigned to function
##and the y_train is assigned to the code number
x_train <- read.table("X_train.txt",col.names = features$functions)
y_train <- read.table("y_train.txt",col.names = "code")
sub_train <- read.table("subject_train.txt",col.names = "subject")

##same for the test dataset where we assign the function in the x_test
##and the y_test with the code of that specific activty 
x_test <- read.table("X_test.txt",col.names = features$functions)
y_test <- read.table("y_test.txt",col.names = "code")
sub_test <- read.table("subject_test.txt",col.names = "subject")

##THE FIRST STEP IS TO MERGE THE DATASETS
  X <- rbind(x_test,x_train)
  Y <- rbind(y_test,y_train)
  subject <- rbind(sub_train,sub_test)
  dataset <- cbind(X,Y,subject)

##2nd step is to extract only the col with mean and std
  data <- select(dataset,subject,code,contains("mean"),contains("std"))
  
##3rd is to write descriptive activity names instead of code no
data$code <- activity[data$code,2]

##label the data with appropriate variable names 
  colnames(data) <- gsub("Acc","Accelerometer",colnames(data))
  colnames(data)<-gsub("Gyro", "Gyroscope", colnames(data))
  colnames(data)<-gsub("BodyBody", "Body", colnames(data))
  colnames(data)<-gsub("Mag", "Magnitude", colnames(data))
  colnames(data)<-gsub("^t", "Time", colnames(data))
  colnames(data)<-gsub("^f", "Frequency", colnames(data))

##create a new data set with average of each col for each subject and activity(code)
 tidy_set <- data %>%
   group_by(subject,code) %>%
   summarise_all(mean)
                       
