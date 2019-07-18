library(foreign)
my_dataset <- read.dta("MEIdataset.dta")
continous_data <- read.dta("MEIdataset.dta")
names(my_dataset)
str(my_dataset)
attributes(my_dataset)
summary(my_dataset)

# country
my_dataset$MCOUNTRY  = discretize(my_dataset$MCOUNTRY, 
                                         method = 'frequency', 
                                         categories = 17,
                                         labels = c('Jordan', 'Palestine', 'Algeria', 'Morocco','Kuwait','Lebanon','Yemen','Iraq','Egypt','Saudi Arabia','Iran','Turkey','Bahrain','Qatar','Sudan','Tunisia','Libya'))
# sex
my_dataset$M101 = discretize(my_dataset$M101, 
                                 method = 'frequency', 
                                 categories = 5,
                                 labels = c('Male', 'Female', 'Not clear', 'Dont know','Declineto answer'))
# Age
my_dataset$M102 = discretize(my_dataset$M102, 
                             method = 'frequency', 
                             categories = 7,
                             labels = c('A18-24', 'A25-34', 'A35-44','A45-54', 'A55-64','A65-74','A75+'))
# education Level
my_dataset$M103 = discretize(my_dataset$M103, 
                             method = 'frequency', 
                             categories =8,
                           labels = c('Illiterate', 'Primary', 'Secondary','BA', 'MA','Not clear','Dont know','Decline to answer'))
# Marital Status
my_dataset$M104 = discretize(my_dataset$M104, 
                             method = 'frequency', 
                             categories =6,
                             labels = c('Single', 'Married', 'Other','Not clear', 'Dont know','Decline to answer'))
# Employment status
my_dataset$M105 = discretize(my_dataset$M105, 
                             method = 'frequency', 
                             categories =6,
                             labels = c('Employed', 'Unemployed', 'Other','Not clear', 'Dont know','Decline to answer'))
# Employment Sector
my_dataset$M106 = discretize(my_dataset$M106, 
                             method = 'frequency', 
                             categories =7,
                             labels = c('Public', 'Private', 'Other','Not interested','Not clear', 'Dont know','Decline to answer'))
# Individual Monthly Income
my_dataset$M107 = discretize(my_dataset$M107, 
                             method = 'frequency', 
                             categories =5,
                             labels = c('First quintile', 'Second quintile', 'Third quintile','Fourth quintile','Fifth quintile')) 
# Satisfaction with Economic Situation of Household
my_dataset$M108 = discretize(my_dataset$M108, 
                             method = 'frequency', 
                             categories =8,
                             labels = c('Very Dissatisfied', 'Dissatisfied', 'Neither Dissatisfied Satisfied','Satisfied','Very Satisfied','Not clear', 'Don t know','Decline to answer')) 
# Religion
my_dataset$M109 = discretize(my_dataset$M109, 
                             method = 'frequency', 
                             categories =12,
                             labels = c('Muslim', 'Christian', 'Druze','Hindu','Jew','Zoroastrian','Other','Bahai','Not asked','Not clear', 'Dont know','Decline to answer')) 
# Trust in People
my_dataset$M201 = discretize(my_dataset$M201, 
                             method = 'frequency', 
                             categories =6,
                             labels = c('Most people trusted', 'Some trusted some cannot', 'Most cannot trusted','Not clear', 'Don t know','Decline to answer')) 
# Free Choice
my_dataset$M202 = discretize(my_dataset$M202, 
                             method = 'frequency', 
                             categories =7,
                             labels = c('Very much', 'Some', 'A little','Very little','Not clear', 'Don t know','Decline to answer'))
#Satisfaction with Life
my_dataset$M203 = discretize(my_dataset$M203, 
                             method = 'frequency', 
                             categories =8,
                             labels = c('Very Dissatisfied', 'Dissatisfied', 'Neither Satisfied Dissatisfied','Satisfied','Very Satisfied','Not clear', 'Don t know','Decline to answer'))
# Importance of Certain Aspects of Life
 # A family
my_dataset$M204A = discretize(my_dataset$M204A, 
                             method = 'frequency', 
                             categories =7,
                             labels = c('Very Important', 'Rather Important', 'Not very important','Not important at all','Not clear', 'Don t know','Decline to answer'))
 # Politics
my_dataset$M204B = discretize(my_dataset$M204B, 
                              method = 'frequency', 
                              categories =7,
                              labels = c('Very Important', 'Rather Important', 'Not very important','Not important at all','Not clear', 'Don t know','Decline to answer'))
 # work 
my_dataset$M204C = discretize(my_dataset$M204C, 
                              method = 'frequency', 
                              categories =7,
                              labels = c('Very Important', 'Rather Important', 'Not very important','Not important at all','Not clear', 'Don t know','Decline to answer'))
 # Reliogion
my_dataset$M204D = discretize(my_dataset$M204D, 
                              method = 'frequency', 
                              categories =7,
                              labels = c('Very Important', 'Rather Important', 'Not very important','Not important at all','Not clear', 'Don t know','Decline to answer'))
 #society
my_dataset$M204E = discretize(my_dataset$M204E, 
                              method = 'frequency', 
                              categories =7,
                              labels = c('Very Important', 'Rather Important', 'Not very important','Not important at all','Not clear', 'Don t know','Decline to answer'))
# trible
my_dataset$M204F = discretize(my_dataset$M204F, 
                              method = 'frequency', 
                              categories =7,
                              labels = c('Very Important', 'Rather Important', 'Not very important','Not important at all','Not clear', 'Don t know','Decline to answer'))
# Friend
my_dataset$M204G = discretize(my_dataset$M204G, 
                              method = 'frequency', 
                              categories =7,
                              labels = c('Very Important', 'Rather Important', 'Not very important','Not important at all','Not clear', 'Don t know','Decline to answer'))
my_dataset$M204H = discretize(my_dataset$M204H, 
                              method = 'frequency', 
                              categories =7,
                              labels = c('Very Important', 'Rather Important', 'Not very important','Not important at all','Not clear', 'Don t know','Decline to answer'))
my_dataset$M204I = discretize(my_dataset$M204I, 
                              method = 'frequency', 
                              categories =7,
                              labels = c('Very Important', 'Rather Important', 'Not very important','Not important at all','Not clear', 'Don t know','Decline to answer'))
# Trust in Institutions
 # mosque
my_dataset$M301F = discretize(my_dataset$M301F, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('great deal trust', 'Quite alot trust', 'little trust','Very little','None at all','Not clear', 'Don t know','Decline to answer'))
 # TV
my_dataset$M301H = discretize(my_dataset$M301H, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('great deal trust', 'Quite alot trust', 'little trust','Very little','None at all','Not clear', 'Don t know','Decline to answer'))
 #Satellite TV
my_dataset$M301I = discretize(my_dataset$M301I, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('great deal trust', 'Quite alot trust', 'little trust','Very little','None at all','Not clear', 'Don t know','Decline to answer'))
 # Educational institutions
my_dataset$M301J = discretize(my_dataset$M301J, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('great deal trust', 'Quite alot trust', 'little trust','Very little','None at all','Not clear', 'Don t know','Decline to answer'))
 # fouqhas
my_dataset$M301N = discretize(my_dataset$M301N, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('great deal trust', 'Quite alot trust', 'little trust','Very little','None at all','Not clear', 'Don t know','Decline to answer'))
 # Electoral Participation 
my_dataset$M401 = discretize(my_dataset$M401, 
                             method = 'frequency', 
                             categories =6,
                             labels = c('No', 'Yes', 'Not eligible','Not clear', 'Don t know','Decline to answer'))
 # Discussion of Politics
my_dataset$M503 = discretize(my_dataset$M503, 
                             method = 'frequency', 
                             categories =6,
                             labels = c('Frequently', 'Occasionally', 'Never','Not clear', 'Don t know','Decline to answer')) 
#Interpretation of Islam
my_dataset$M703B = discretize(my_dataset$M703B, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither Agree Disagree','Disagree','Strongly Disagree','Not clear', 'Don t know','Decline to answer')) 
my_dataset$M703C = discretize(my_dataset$M703C, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither Agree Disagree','Disagree','Strongly Disagree','Not clear', 'Don t know','Decline to answer'))

my_dataset$M703D = discretize(my_dataset$M703D, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither Agree Disagree','Disagree','Strongly Disagree','Not clear', 'Don t know','Decline to answer'))
my_dataset$M703E = discretize(my_dataset$M703E, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither Agree Disagree','Disagree','Strongly Disagree','Not clear', 'Don t know','Decline to answer'))
my_dataset$M703F = discretize(my_dataset$M703F, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither Agree Disagree','Disagree','Strongly Disagree','Not clear', 'Don t know','Decline to answer'))
my_dataset$M703G = discretize(my_dataset$M703G, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither Agree Disagree','Disagree','Strongly Disagree','Not clear', 'Don t know','Decline to answer'))
my_dataset$M703H = discretize(my_dataset$M703H, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither Agree Disagree','Disagree','Strongly Disagree','Not clear', 'Don t know','Decline to answer'))
my_dataset$M703J = discretize(my_dataset$M703J, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither Agree Disagree','Disagree','Strongly Disagree','Not clear', 'Don t know','Decline to answer'))
my_dataset$M703L = discretize(my_dataset$M703L, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither Agree Disagree','Disagree','Strongly Disagree','Not clear', 'Don t know','Decline to answer'))
my_dataset$M703M = discretize(my_dataset$M703M, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither Agree Disagree','Disagree','Strongly Disagree','Not clear', 'Don t know','Decline to answer'))
my_dataset$M703N = discretize(my_dataset$M703N, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither Agree Disagree','Disagree','Strongly Disagree','Not clear', 'Don t know','Decline to answer'))
my_dataset$M703O = discretize(my_dataset$M703O, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither Agree Disagree','Disagree','Strongly Disagree','Not clear', 'Don t know','Decline to answer'))
my_dataset$M703P = discretize(my_dataset$M703P, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither Agree Disagree','Disagree','Strongly Disagree','Not clear', 'Don t know','Decline to answer'))


my_dataset$M703I = discretize(my_dataset$M703I, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither Agree Disagree','Disagree','Strongly Disagree','Not clear', 'Don t know','Decline to answer'))


#Sacrifice for the Islamic Nation
my_dataset$M705 = discretize(my_dataset$M705, 
                              method = 'frequency', 
                              categories =7,
                              labels = c('Always', 'Most time', 'Few times','No','Not clear', 'Don t know','Decline to answer'))
# Importance of Islamic Unity
my_dataset$M707 = discretize(my_dataset$M707, 
                              method = 'frequency', 
                              categories =8,
                              labels = c(' Very important', 'Important', 'Somewhat important','Not important','Not at all','Not clear', 'Don t know','Decline to answer'))
#Islamic World as the Political Identity of my Nation
my_dataset$M708 = discretize(my_dataset$M708, 
                             method = 'frequency', 
                             categories =7,
                             labels = c('Ranked1', 'Ranked2', 'Ranked3','Ranked4','Not clear', 'Dont know','Decline to answer'))
# Attitudes Towards Women
my_dataset$M710A = discretize(my_dataset$M710A, 
                             method = 'frequency', 
                             categories =8,
                             labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Don t know','Decline to answer'))
my_dataset$M710B = discretize(my_dataset$M710B, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Don t know','Decline to answer'))
my_dataset$M710C = discretize(my_dataset$M710C, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Don t know','Decline to answer'))
my_dataset$M710D = discretize(my_dataset$M710D, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
my_dataset$M710E = discretize(my_dataset$M710E, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
my_dataset$M710F = discretize(my_dataset$M710F, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
my_dataset$M710G = discretize(my_dataset$M710G, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
my_dataset$M710H = discretize(my_dataset$M710H, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
my_dataset$M710I = discretize(my_dataset$M710I, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Don t know','Decline to answer')) 
my_dataset$M710J = discretize(my_dataset$M710J, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
my_dataset$M710K = discretize(my_dataset$M710K, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
my_dataset$M710L = discretize(my_dataset$M710L, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
my_dataset$M710M = discretize(my_dataset$M710M, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
my_dataset$M710N = discretize(my_dataset$M710N, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
my_dataset$M710O = discretize(my_dataset$M710O, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
my_dataset$M710P = discretize(my_dataset$M710P, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
my_dataset$M710Q = discretize(my_dataset$M710Q, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
my_dataset$M710R = discretize(my_dataset$M710R, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
my_dataset$M710S = discretize(my_dataset$M710S, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
my_dataset$M710T = discretize(my_dataset$M710T, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
my_dataset$M710U = discretize(my_dataset$M710U, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
my_dataset$M710V = discretize(my_dataset$M710V, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
my_dataset$M710W = discretize(my_dataset$M710W, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
my_dataset$M710X = discretize(my_dataset$M710X, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
my_dataset$M710Y = discretize(my_dataset$M710Y, 
                              method = 'frequency', 
                              categories =8,
                              labels = c('Strongly Agree', 'Agree', 'Neither','Disagree','Strongly Disagree','Not clear', 'Dont know','Decline to answer'))
# Suitable Spouse
my_dataset$M801A = discretize(my_dataset$M801A, 
                              method = 'frequency', 
                              categories =7,
                              labels = c('Very Important', 'Somewhat Important', 'little Important','Not at all','Not clear', 'Dont know','Decline to answer')) 
my_dataset$M801B = discretize(my_dataset$M801B, 
                              method = 'frequency', 
                              categories =7,
                              labels = c('Very Important', 'Somewhat Important', 'little Important','Not at all','Not clear', 'Dont know','Decline to answer'))
my_dataset$M802 = discretize(my_dataset$M802, 
                              method = 'frequency', 
                              categories =7,
                              labels = c('Religious', 'Mixed', 'Not religious','Other','Not clear', 'Dont know','Decline to answer')) 
my_dataset$M803 = discretize(my_dataset$M803, 
                             method = 'frequency', 
                             categories =8,
                             labels = c('Very often', 'Often', 'Sometimes','Rarely','Never','Not clear', 'Dont know','Decline to answer'))
#Mosque Attendance
my_dataset$M804 = discretize(my_dataset$M804, 
                             method = 'frequency', 
                             categories =8,
                             labels = c('Very often', 'Often', 'Sometimes','Rarely','Never','Not clear', 'Dont know','Decline to answer'))
#Reading the Quran
my_dataset$M805 = discretize(my_dataset$M805, 
                             method = 'frequency', 
                             categories =8,
                             labels = c('Every day', 'Several times week', 'Sometimes','Rarely','I dont read','Not clear', 'Dont know','Decline to answer'))
#Comfort from Religion
my_dataset$M806 = discretize(my_dataset$M806, 
                             method = 'frequency', 
                             categories =7,
                             labels = c('very much', 'Some', 'little','very little','Not clear', 'Dont know','Decline to answer'))
#Religious Teachings in Life
my_dataset$M807 = discretize(my_dataset$M807, 
                             method = 'frequency', 
                             categories =7,
                             labels = c('Always', 'Sometimes', 'Rarely','Never','Not clear', 'Don t know','Decline to answer'))
# Seeks Religious Counseling
my_dataset$M808 = discretize(my_dataset$M808, 
                             method = 'frequency', 
                             categories =7,
                             labels = c('Most often', 'Sometimes', 'Rarely','Never','Not clear', 'Don t know','Decline to answer'))
#Most Important Affiliation
my_dataset$M901A = discretize(my_dataset$M901A, 
                             method = 'frequency', 
                             categories =14,
                             labels = c('Family', 'Locality', 'Region','country','Continent','Middle East','Arab World','Islamic World','The World','Other','Not clear', 'Dont know','Decline to answer','Not usable')) 
my_dataset$M901B = discretize(my_dataset$M901B, 
                              method = 'frequency', 
                              categories =14,
                              labels = c('Family', 'Locality', 'Region','country','Continent','Middle East','Arab World','Islamic World','The World','Other','Not clear', 'Dont know','Decline to answer','Not usable'))
# Proud of Nationality
my_dataset$M902 = discretize(my_dataset$M902, 
                             method = 'frequency', 
                             categories =7,
                             labels = c('Very proud', 'Quite proud', 'Not very proud','Notproud at all','Not clear', 'Dont know','Decline to answer'))
#Identity
my_dataset$M903 = discretize(my_dataset$M903, 
                             method = 'frequency', 
                             categories =9,
                             labels = c('Above country', 'Above Muslim', 'Above Arab','Above Christian','Above Kurd..','Other','Not clear', 'Dont know','Decline to answer'))
# Nationalism: Neighbors
my_dataset$M904A = discretize(my_dataset$M904A, 
                             method = 'frequency', 
                             categories =6,
                             labels = c('dont mind', 'do mind','Not clear', 'Dont know','Decline to answer','Not usable')) 
my_dataset$M904B = discretize(my_dataset$M904B, 
                              method = 'frequency', 
                              categories =6,
                              labels = c('dont mind', 'do mind','Not clear', 'Dont know','Decline to answer','Not usable'))
my_dataset$M904C = discretize(my_dataset$M904C, 
                              method = 'frequency', 
                              categories =6,
                              labels = c('dont mind', 'do mind','Not clear', 'Dont know','Decline to answer','Not usable'))
my_dataset$M904D = discretize(my_dataset$M904D, 
                              method = 'frequency', 
                              categories =6,
                              labels = c('dont mind', 'do mind','Not clear', 'Dont know','Decline to answer','Not usable'))
my_dataset$M904E = discretize(my_dataset$M904E, 
                              method = 'frequency', 
                              categories =6,
                              labels = c('dont mind', 'do mind','Not clear', 'Dont know','Decline to answer','Not usable'))
my_dataset$M904F = discretize(my_dataset$M904F, 
                              method = 'frequency', 
                              categories =6,
                              labels = c('dont mind', 'do mind','Not clear', 'Dont know','Decline to answer','Not usable'))
my_dataset$M904G = discretize(my_dataset$M904G, 
                              method = 'frequency', 
                              categories =6,
                              labels = c('dont mind', 'do mind','Not clear', 'Dont know','Decline to answer','Not usable'))
my_dataset$M904H = discretize(my_dataset$M904H, 
                              method = 'frequency', 
                              categories =6,
                              labels = c('dont mind', 'do mind','Not clear', 'Dont know','Decline to answer','Not usable'))
my_dataset$M904I = discretize(my_dataset$M904I, 
                              method = 'frequency', 
                              categories =6,
                              labels = c('dont mind', 'do mind','Not clear', 'Dont know','Decline to answer','Not usable'))
my_dataset$M904J = discretize(my_dataset$M904J, 
                              method = 'frequency', 
                              categories =6,
                              labels = c('dont mind', 'do mind','Not clear', 'Dont know','Decline to answer','Not usable'))
my_dataset$M904K = discretize(my_dataset$M904K, 
                              method = 'frequency', 
                              categories =6,
                              labels = c('dont mind', 'do mind','Not clear', 'Dont know','Decline to answer','Not usable'))
my_dataset$M904L = discretize(my_dataset$M904L, 
                              method = 'frequency', 
                              categories =6,
                              labels = c('dont mind', 'do mind','Not clear', 'Dont know','Decline to answer','Not usable')) 
my_dataset$M904M = discretize(my_dataset$M904M, 
                              method = 'frequency', 
                              categories =6,
                              labels = c('dont mind', 'do mind','Not clear', 'Dont know','Decline to answer','Not usable')) 
my_dataset$M904N = discretize(my_dataset$M904N, 
                              method = 'frequency', 
                              categories =6,
                              labels = c('dont mind', 'do mind','Not clear', 'Dont know','Decline to answer','Not usable')) 
my_dataset$M904O = discretize(my_dataset$M904O, 
                              method = 'frequency', 
                              categories =6,
                              labels = c('dont mind', 'do mind','Not clear', 'Dont know','Decline to answer','Not usable')) 
library(stats)
library(base)
library(Matrix)
library(arules)
library(dplyr)


women_Q <- my_dataset %>%
  select(MCOUNTRY,M101: M108,M710A : M710Y,M801A: M808)
head(women_Q)
neig_Q <- my_dataset %>%
  select(MCOUNTRY,M101: M108,M401: M708,M801A: M808,M904A: M904O)
#
relation_Q <- my_dataset %>%
  select(MCOUNTRY,M101: M108,M201:M203,M301F: M708,M801A: M808,M904A: M904O)

# 
mix_Q <-  my_dataset %>%
  select(MCOUNTRY,M101: M108,M201:M203,M301F: M708,M904A: M904O)
#summary(my_dataset)
library(Matrix)
library(arules)
# find association rules with default settings
rules <- apriori(my_dataset,parameter=list(supp=.17, conf=.6, target="rules"))
inspect(rules)

women_rules <- apriori(women_Q,parameter=list(supp=.17, conf=.6, target="rules"))
inspect(women_rules)
#
neig_rules <- apriori(neig_Q)
inspect(neig_rules)
#
relation_rules <- apriori(relation_Q)
inspect(relation_rules)

#
mix_rules <- apriori(mix_Q)
inspect(continous_data <- read.dta("MEIdataset.dta")_rules)
#rules<-apriori(trans,parameter=list(supp=.02, conf=.5, target="rules")) 