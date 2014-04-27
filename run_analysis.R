#setup - install libraries

library(plyr)  #needed for rename function
library(data.table)  #needed for setnames function


#section 1 - read in tables; the following all must be files in the working directory
df_xtest <- read.table("X_test.txt")
df_ytest <- read.table("Y_test.txt")
df_xtrain <- read.table("X_train.txt")
df_ytrain <- read.table("Y_train.txt")
df_subtrain <- read.table("subject_train.txt")
df_subtest <- read.table("subject_test.txt")
df_feature <- read.table("features.txt")
df_activity <- read.table("activity_labels.txt")

#section 3 - renaming columns 
#rename y and subject sets to avoid ambiguity when they merge
df_ytest <- rename(df_ytest, c("V1"="Activity","V2"="Activity_Name"))
df_ytrain <- rename(df_ytrain, c("V1"="Activity","V2"="Activity_Name"))
df_subtest <- rename(df_subtest, c("V1"="Subject"))
df_subtrain <- rename(df_subtrain, c("V1"="Subject"))
df_activity <- rename(df_activity, c("V1"="Activity","V2"="ActivityName"))


#rename x to subset on feature names
setnames(df_xtest, old=colnames(df_xtest),new = as.vector(df_feature$V2))
setnames(df_xtrain, old=colnames(df_xtrain),new = as.vector(df_feature$V2))

#section 4 - subset X dataframes to just have mean and std columns
df_xtest <- df_xtest[,grep("mean\\(\\)|std\\(\\)",colnames(df_xtest))]
df_xtrain <- df_xtrain[,grep("mean\\(\\)|std\\(\\)",colnames(df_xtrain))]

#section 5 - merge Subject, Y, and X data sets
dfm_test <- cbind(df_subtest,df_ytest, df_xtest)
dfm_train <- cbind(df_subtrain,df_ytrain,df_xtrain)

#section 6 - append test to trainwarn
dfm_final <- rbind(dfm_test, dfm_train)

#section 7 - collapse data frame into tidy set by taking averages
df_tidy <- aggregate(dfm_final[,3:68], by=list(dfm_final$Subject, dfm_final$Activity), FUN = mean)

#rename the Group fields created by aggregate
df_tidy <- rename(df_tidy, c("Group.1"="Subject","Group.2"="Activity"))

#add activity name
df_tidy <- merge(x = df_tidy, y = df_activity, by = "Activity", all=TRUE)

#move activity name to an earlier variable
df_tidy <- cbind(df_tidy$Subject,df_tidy$Activity,df_tidy$ActivityName,df_tidy[,3:68])

#one last column name cleanup
df_tidy <- rename(df_tidy, c("df_tidy$Subject"="Subject","df_tidy$Activity"="ActivityNumber","df_tidy$ActivityName"="ActivityName"))

#section 8 - output tidy data set
write.table(df_tidy,"tidy_data.txt",sep="\t")


