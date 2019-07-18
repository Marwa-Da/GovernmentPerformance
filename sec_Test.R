library(foreign)
all_dataset <- read.dta("middle east and islam dataset.dta")

# *** data visuilize ***

# count by country
 ggplot(all_dataset) + 
  geom_bar(mapping = aes(x = MCOUNTRY,fill=MCOUNTRY)) + xlab('The Country of survey')+
  ylab('The Count')+
  theme(
    axis.text.x=element_text(angle=45,color='blue' ,size=12),
    axis.title.x=element_text(angle=0, color='red',size = 18),
    axis.title.y=element_text(angle=90, color='red', size = 18),
    axis.text.y=element_text(angle=45, color='blue', face='bold', size=12)
  )

# count of goverment satisfied
 ggplot(all_dataset) + 
     geom_bar(mapping = aes(x = M302,fill=M302))+ xlab('The goverment satisfied')+
  ylab('The Count')+
  theme(
    axis.text.x=element_text(angle=45,color='blue' ,size=12),
    axis.title.x=element_text(angle=0, color='red',size = 18),
    axis.title.y=element_text(angle=90, color='red', size = 18),
    axis.text.y=element_text(angle=0, color='blue', face='bold', size=12)
  )

# goverment satisfied && political leaders care
 ggplot(data = all_dataset, mapping = aes(x = M302, y = M303A)) +
     geom_boxplot() + xlab('The goverment satisfied')+
  ylab('The view about political leaders')+
  theme(
    axis.text.x=element_text(angle=45,color='red' ,size=12),
    axis.title.x=element_text(angle=0, color='green',size = 18),
    axis.title.y=element_text(angle=90, color='green', size = 18),
    axis.text.y=element_text(angle=0, color='red', face='bold', size=12)
  )

# goverment satisfied && Country
 ggplot(data = all_dataset) +
      geom_count(mapping = aes(x = M302, y = MCOUNTRY,fill=MCOUNTRY),color = 'purple') + xlab('The goverment satisfied')+
  ylab('The country')+
  theme( 
    axis.text.x=element_text(angle=45,color='blue' ,size=12),
    axis.title.x=element_text(angle=0, color='red',size = 18),
    axis.title.y=element_text(angle=90, color='red', size = 18),
    axis.text.y=element_text(angle=0, color='blue', size=12)
   )


### 
library(stats)
library(base)
library(Matrix)
library(arules)
library(dplyr)


Political_Ques <- all_dataset %>%
  select(MCOUNTRY,M105: M108,M203,M204B,M204I,M301A:M301H,M301J,M301L,M301M,M301N,M301P,M302,M303A,M304,M401,M402B,M501:M503,M601O,M604)

Political_train <- Political_Ques %>%
  filter(M302 ==  "Very satisfied" | M302 ==  "Rather satisfied" |M302 ==  "Neither satisfied nor dissatisfied" | M302 ==  "Not very satisfied" | M302 ==  "Not at all satisfied" )

Political_test <- Political_Ques %>%
  filter(M302 ==  "Can't choose/Don't know" | M302 ==  "Decline to answer" |is.na(M302) )
library(Matrix)
library(arules)
Political_Ques$M303A = discretize(Political_Ques$M303A, 
                                   method = 'frequency', 
                                   categories =8,
                                   labels = c('Strongly Agree', 'Agree', 'Neither Agree Disagree','Disagree','Strongly Disagree','Not clear', 'Don’t know','Decline to answer'))

# find association rules with default settings
POl_rules <- apriori(Political_Ques,parameter=list(supp=.16, conf=.5, target="rules"))
inspect(POl_rules)

Political_train$M302[Political_train$M302 == "Very satisfied"] <- "satisfied"
