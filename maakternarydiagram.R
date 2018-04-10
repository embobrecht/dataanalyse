library(ggtern)
library(ggplot2)

library(ggtern)
#Orignal Data as per Question

#  (60,20,20,9.0)waarde is verzonnen in de data set
granuliet <- c(5,10,15,20,25,30,35,10,7.7,13.8,15.4,100,0,66.6,33.3,50,20,0,60,80)
westerwald <- c(35,30,25,20,15,10,5,22.5,17.3,31.2,34.6,0,100,33.3,66.6,20,50,0,20,10)
pkl <- c(60,60,60,60,60,60,60,66.5,75,55,50,0,0,0,0,30,30,100,20,10) 
d <- c(6.25,4.6,6.1,4.7,3,2.1,1.7,4.6,6.15,4.8,5.45,3.3,7.7,2,4.55,2.3,3.4,9.7,2,2)
df <- data.frame(granuliet, westerwald, pkl, d)

#For labelling each point.
df$id <- 1:nrow(df)

ggtern(data=df,aes(x=granuliet,y=pkl,z=westerwald),aes(x,y,z)) + 
  stat_density_tern(geom="polygon",color='black',
                    n=500,h=0.75,expand = 1.1,
                    base='identity',
                    aes(fill   = ..level..,weight = d),
                    na.rm = TRUE) + 
  geom_point(color="black",size=5,shape=21) +
  geom_text(aes(label=d),size=3) + 
  scale_fill_gradient(low="blue",high="red") + 
  scale_color_gradient(low="blue",high="red") + 
  theme_rgbw() + 
  theme(legend.justification=c(0,1), legend.position=c(0,1)) +
  theme_gridsontop() + 
  guides(fill = guide_colorbar(order=1),color="none")
  
