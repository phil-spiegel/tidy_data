tidy_data
=========

Coursera Assignment

There is one script that has 8 sections.  The script is run_analysis.R.

Section 1
Read in tables; All test and train for X, Y, and Subject, as well as the list of Features and Activities must be in the working directory.

Section 2 - renaming columns 
The read statements leave variables like V1, so making them more descriptive

Section 3 - Subset X data
Leaving only the data with Mean or Standard deviation.  For this data it is looking at column titles with mean() or std() specifically

Section 4 - merge the columns of Subject, Y, and X data sets

Section 5 - append test to train

Section 6 - collapse data frame into tidy set by taking averages

Section 7 - cleanup of data set field names, including add activity name to Y data

Section 8 - output tidy data set
The output is in tidy_data.txt and will form in the working directory.  This output is in a tab delimited format.
