# Getting-and-cleaning-data
This repo is to submit course project file

It contains two items:

    1. The analysis script for the project :"Assignment_script.R"
    
    2. Code book for the script variables and functions :"Code Book.md"

# The following will explain the major movement of my R script

1. Download and unzip file

2. Load data to R

3. Combine data set

Using rbind() to paste test data after training data

4. Extract the mean and std

Using grep() to find out which columns name contain the "mean()" or "std()"

The result is use for clear the data set and descriptive variable names

5. Combine the subject ID and activity to data set

The combined data set would store in "binddata"

6. Label the colnames and rownames with descriptive names

Extract the "activity" column to new variable, replace its level with descriptive activity then put it back

Replace the column name of the data set with a string: "subject", "activity", and descriptive variable names

7. Create the second table

Using melt() to make all values in a singel column

Make a second table to calculate the averge value of each subject, each activity and each variable

Write it out to a txt file as known as "Tidy_Averge.txt"

# Thank you for your time to review my work, good day
