# getting_cleaning_data
Course project for Coursera Getting and Cleaning Data course

This script takes the data from a downloaded zip file provided by the instructors of the Coursera Getting and Cleaning Data course according to the following assignment:
You should create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## To run the script:
* Be sure you have downloaded and unzipped the zip file
* Be sure that the Reshape and Plyr libraries are loaded
* Source and run run_analysis.R with the **filepath of the unzipped folder** as your argument

### Stepwise processes run by the script (also commented in the script itself):
* load activity labels and featurs
* change features from factors to characters
create string to open the folder
#### the following steps are peformed on both the test and training folders:
  * load files in test folder and rename headers
  * load only the mean and std columns from files to avoid having to process unnecessary data
  * create cleaned dataset
* rearrange columns to logical order
* output full, raw dataset to file "fulldataset.txt"
* melt data for reshaping
* cast in wide tidy form
* output tidy data to file "testtrain.txt"


