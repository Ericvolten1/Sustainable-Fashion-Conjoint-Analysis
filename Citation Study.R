# load in citation data
df<-read.csv("~/Thesis Conjoint/Data/Citation_study.csv")
df

# library needed ggplot2
library(ggplot2)

#Create apa theme
apatheme=theme_bw()+
  theme(panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),
        panel.border=element_blank(),
        axis.line=element_line(),
        text=element_text(family='Times'),
        legend.title=element_blank())


#CHange name of Times font when needed
windowsFonts("Times" = windowsFont("Times New Roman"))



Citation_plot=ggplot(df, aes(Year, Total.citations))+
  geom_jitter()+
  scale_color_manual(values=c('black','black'))+
  geom_smooth(method=lm, color="black")+
  labs(x='Year', y='Total Citations')+
  apatheme

#Show plot
Citation_plot
