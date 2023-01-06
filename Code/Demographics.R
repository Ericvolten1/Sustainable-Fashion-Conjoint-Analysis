#load in data

df<-read.csv("~/Thesis Conjoint/Data/DF.csv")
df
summary(df)

#Test if there is a significant 
#difference between the age of men and women in the sample

df_female <- df[df$Gender == '2',]

stat.desc(df_female$Age)

df_male <- df[df$Gender == '1',]

stat.desc(df_male$Age)

df_malefemale <- df[df$Gender != '3',]

res <- t.test(Age ~ Gender, data = df_malefemale)
res

#Make some generic tables of demogrpahic data

tab <- table(df$CountryNamesFull)
tab

relFreq <- prop.table(tab)
relFreq

tab2 <- table(df$Education)
tab2

relFreq2 <- prop.table(tab2)
relFreq2

tab3 <- table(df$Gender)
tab3

relFreq3 <- prop.table(tab3)
relFreq3

#Counting number of respondets per age range

sum(df1$Age <= 17)
sum(df1$Age >= 18 & df1$Age <= 21)
sum(df1$Age >= 22 & df1$Age <= 25)
sum(df1$Age >= 26 & df1$Age <= 29)
sum(df1$Age >= 30)


#calculating the frequencies of 
#participants finding attribute levels unacceptable

#Library used for detailed statistics
library(pastecs)

stat.desc(df$Screening1)
sum(df$Screening1 <= 2)

stat.desc(df$Screening2)
sum(df$Screening2 <= 2)

stat.desc(df$Screening3)
sum(df$Screening3 <= 2)

stat.desc(df$Screening4)
sum(df$Screening4 <= 2)

stat.desc(df$Screening5)
sum(df$Screening5 <= 2)

stat.desc(df1$Screening6)
sum(df$Screening6 <= 2)

stat.desc(df$Screening7)
sum(df$Screening7 <= 2)


