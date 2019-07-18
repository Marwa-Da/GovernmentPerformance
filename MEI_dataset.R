 # load the middle east and Islam dataset
library(haven)
library(foreign)
library(fastcluster)
library(tidyverse)
require(graphics)
library(memisc)
library(mice)
library(plyr)
library(dplyr)
library(randomForest)
library(caret)

# split political dataset to train and test


Political_train <- Political_Ques %>%
  filter(M302 ==  "Very satisfied" | M302 ==  "Rather satisfied" |M302 ==  "Neither satisfied nor dissatisfied" | M302 ==  "Not very satisfied" | M302 ==  "Not at all satisfied" )

Political_test <- Political_Ques %>%
  filter(M302 ==  "Can't choose/Don't know" | M302 ==  "Decline to answer" |is.na(M302) )


Political_train_noClass <- Political_train_noClass[-c(21,29)]

# imputing missng values
pMiss <- function(x){sum(is.na(x))/length(x)*100}
apply(d,2,pMiss)
apply(d,1,pMiss)

tempData <- mice(Political_train_noClass,m=5,maxit=5,meth='pmm',seed=500)
summary(tempData)
write.mice.imputation(tempData, "dataset_after_imputation_MV", include.varnames = TRUE,
                      long = TRUE, mids2spss = TRUE, spss.dec = ",", dattype = NULL)

tempData$imp$M604
completedData <- complete(tempData,1)

# add response column
completed_data <- cbind(completedData,Political_train["M302"])
n_train = 42000
train_index = sample(nrow(completedData),n_train)
completedData_train <- completed_data[ train_index,]
completedData_test <- completed_data[ -train_index,]

completedData_train$M302 <- factor(completedData_train$M302)
completedData_test$M302 <- factor(completedData_test$M302)
  modelFit <- randomForest( x = completedData_train,y = completedData_train$M302 ,importance = TRUE, ntree = 100)
  
  
  prediction <- predict(modelFit, completedData_test)
  
  completedData_test$rightPred <- prediction == completedData_test$M302
  accuracy <- (sum(completedData_test$rightPred)/nrow(completedData_test)) *100
  print(accuracy)
  t<-table(prediction, testingSet$M302)
  print(t)
  

  pMiss <- function(x){sum(is.na(x))/length(x)*100}
  apply(Political_test_without_2var_noClass,2,pMiss)
  k <- apply(Political_test_without_2var_noClass,1,pMiss)  
 m <- k == 0
 sum(m)
  
  
  Political_test_without_2var_noClass <- Political_test[-c(8,22,30)]
  
  
  samples <- Political_test_without_2var_noClass[5431:5451,]    # 22 rows
  # fill the whole missing column 
  samples["M301J"] <- Political_test_without_2var_noClass[3104:3124,"M301J"]
  samples["M303A"] <- Political_test_without_2var_noClass[3104:3124,"M303A"]
  samples["M502"] <- Political_test_without_2var_noClass[3104:3124,"M502"]
  samples["M503"] <- Political_test_without_2var_noClass[3104:3124,"M503"]
  samples["M301N"] <- Political_test_without_2var_noClass[22155:22175,"M301N"]
    
  
  apply(samples,2,pMiss)
  apply(samples,1,pMiss)
  
  
  sampleTest <- mice(samples,m=5,maxit=50,meth='pmm',seed=500)
  summary(sampleTest)
  
  completed_test_Data <- complete(sampleTest,1)
    
   # add the class column
  completed_test_Data$M302 <- completedData_test[3104:3124,"M302"]
  prediction_20Samples_test <- predict(modelFit, completed_test_Data) 
 