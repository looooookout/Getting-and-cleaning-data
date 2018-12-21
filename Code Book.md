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
    
	"binddata": combined training and test data set
  
  
# 4. Extract the mean and std
  
	"clearfactor": columns list contains the data that we need
	

# 5. Combine the subject ID and activity to data set

	"bindsub": paste test subject ID after the training ID
	
	"bindact": paste test activity factor after the training factor
	

# 6. Label the colnames and rownames with descriptive names
 
	"labelin": extracted "activity" column for level replacing
	
	
# 7. Create the second table

 	"meltdata": the data set after applied melt()
	
	"averge": the second table
