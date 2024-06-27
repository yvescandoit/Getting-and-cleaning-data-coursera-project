#PROJECT CODE BOOK
This is the code book 

##How to acess the data
 download the data from the source data which is named as [Human Activity Recognition Using Smartphones Data Set]
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
 Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 Then Unzip the data into your R program

 After this run the R script "run_analysis.R" to perform and return the required output

##ABOUT THE SCRIPT 
The script run analysis contains the codes which perform the following activities
 1.READING THE FILES AND MERGING THE DATASET
   +Read training,testing,activity,feature,subject files
   +assign the coloumn names
   +merge the dataset into one
 2.Extract only the coloumns with mean and std along with code and subject col
 3.REPLACE THE NUMBERS IN THE CODE COLOUMN WITH ACTUAL ACITIVITY NAMES
 4.LABEL THE COLOUMNS WITH DESPCREPTIVE VARIABLE NAMES 
 5.CREATE A TIDY DATASET WITH AVERAGE OF ALL COL(VARIABLES) ON THE BASIS OF SUBJECT AND CODE(FACTOR)

##ABOUT THE VARIABLES
+"x_train","y_train","x_test","y_test","activity","features""sub_train","sub_test" are the datasets 
+"x_train","x_test" are the datasets which contain the main data which are joined with "features"(which contain the variable)
+these datasets are jpoined together to form the "data"
