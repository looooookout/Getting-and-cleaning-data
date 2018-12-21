# 1. Download and unzip file

	"zipfile": the name for download zip file

	"dirt": the unzip folder address 

	"dataurl": the url for download


# 2. Load data to R
  
	"features": the descriptive column names
  
	"activelabel": the descriptive row names
  
	"xtrain": the meansure data for training group
  
	"ytrain": the activity factor for training group
  
	"xtest": the meansure data for test group
  
	"ytest": the activity factor for test group
  
	"subtest" the subjects ID for test group
  
	"subtrain": the subjects ID for training group
  
  
# 3. Combine data set
    
  Using rbind() to paste test data after training data
  
	"binddata": combined training and test data set
  
  
# 4. Extract the mean and std
  
  Using grep() to find out which columns name contain the "mean()" or "std()"

  The result is use for clear the variables of "binddata" and "features"
  
	"clearfactor": columns list contains the data that we need
	

# 5. Combine the subject ID and activity to data set

 The combined data set would store in "binddata"
 
	"bindsub": paste test subject ID after the training ID
	
	"bindact": paste test activity factor after the training factor
	

# 6. Label the colnames and rownames with descriptive names

 Extract the "activity" column to new variable, replace its level with variable "activitylabel" then put it back 

 Replace the column name of the data set with a string: "subject", "activity", and names in features variable
 
	"labelin": extracted "activity" column for level replacing
	
	
# 7. Create the second table

 Using melt() to make all values in a singel column 

 Make a second table to calculate the averge value of each subject, each activity and each variable

 Write it out to a txt file as known as "Tidy_Averge.txt"
 
 	"meltdata": the data set after applied melt()
	
	"averge": the second table
	
