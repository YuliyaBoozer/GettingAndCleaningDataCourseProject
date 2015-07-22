#Introduction
This is a course project for the Getting and Cleaning Data course in the Data Science Specialization on Coursera.

The goal is to prepare tidy data that can be used for later analysis.

The original data set comes from this site: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The original data set contains the data collected from the accelerometers from the smartphone device. It was collected to understand the human activity, such as walking, sitting, standing, etc. 

As described on the original site, Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

In this project I loaded the original data set from the above mentioned site and cleaned it up to create a tidy data set.

The steps below describe how all my scripts work together and the actions I took for creating the tidy data. One can follow the same steps to reproduce the results. 


#Steps:

###1. Upload the data files to your working directory.
These are files from the above mentioned site.
The following files should be located in your working directory (no need to create "test" or "train" subfolders):

  1) subject_test.txt
  2) X_test.txt
  3) Y_test.txt
  4) subject_train.txt
  5) X_train.txt
  6) Y_train.txt
  7) features
  8) activity_labels

###2. Use the install_packages.R script to install the data.table and dplyr packages.
These packages are required to run the run_analysis.R scirpt. The install_packages.R script will check whether the packages are already installed before trying to install them.

###3. Run the run_analysis.R script

###4. If you wish to export the final data set into a text file run the following code:
          write.table(finalSet, file = "FinalTidyDataSet.txt", row.name = FALSE) 
This will create a new text file in your working directory that contains the final tidy data set. It will be named "FinalTidyDataSet.txt".

###5. Run the following script to load the "FinalTidyDataSet.txt" file into R:
          tidyData <- read.table("FinalTidyDataSet.txt", header = TRUE)
This will load the tidy data set into the tidyData data frame in R. This data set is ready to be used for further analysis.



