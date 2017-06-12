# Coursera Getting and Cleaning Data - Course Project
This project serves to demonstrate the collection and cleaning of a tidy data set that can be used for subsequent analysis. The R script, `run_analysis.R`, does the above mentioned task.

The dataset being used is: [Human Activity Recognition Using Samsung GalaxyS Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Prerequisites
1. You need to have Windows OS to run the R script `run_analysis.R`.

2. You need to have Rstudio and the followiing packages installed to run `run_analysis.R` successfully :
- reshape2
- dplyr
## Files

`CodeBook.md` describes the variables, the data, and any transformations or work that was performed to clean up the data.

`run_analysis.R` contains all the code to perform the analysis described in the 5 steps. This can be launched in RStudio by just importing the file.

The output of the 5th step of the course project work is called `tidydata.txt`.
## Summary
The R script, `run_analysis.R`, does the following:

1. Download the dataset if it does not already exist in the working directory
2. Load the activity and feature info
3. Loads both the training and test datasets, keeping only those columns which
   reflect a mean or standard deviation
4. Loads the activity and subject data for each dataset, and merges those
   columns with the dataset
5. Merges the two datasets
6. Converts the `activity` and `subject` columns into factors
7. Creates a tidy dataset that consists of the average (mean) value of each
   variable for each subject and activity pair.
The end result is shown in the file `tidydata.txt`.
