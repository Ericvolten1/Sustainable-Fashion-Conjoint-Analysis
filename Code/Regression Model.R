#load in data

df<-read.csv("~/Thesis Conjoint/Data/DF4.csv")
df
summary(df)


#Create moderation variables

df$x1z1 <- df$ProductionUnacceptable*df$ProUnStrength

df$x2z2 <- df$TurkeyUnacceptable*df$TurUnStrength

df$x3z3 <- df$BangladeshUnacceptable*df$BangUnStrength

df$x4z4 <- df$SpainUnacceptable*df$SpaUStrength

df$x5z5 <- df$QualityUnacceptable*df$QuUnStrength


#Run regression analysis

lm_df = lm(formula = TotalViolations ~ ProductionUnacceptable+TurkeyUnacceptable+BangladeshUnacceptable+SpainUnacceptable+QualityUnacceptable+x1z1+x2z2+x3z3+x4z4+x5z5+PriceImportance+QualityImportance+MaterialImportance+ProductionImportance+COOImportance+Gender+Age+Education+CountryNamesFull, data = df)
summary(lm_df)
