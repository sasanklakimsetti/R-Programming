# install.packages("ggplot2")
#ggplot - grammar of graphics
library(ggplot2)
View(iris)
ggplot(data=iris) # screen will be there but no outpu
# so add next layer after data layer aesthetics including axis
ggplot(data=iris, aes(x=Sepal.Length,
                      y=Sepal.Width))  # providing Sepal.Length for x-axis and Sepal.Width for y-axis using aes("aesthetics")
# to show data, we use geom functions (geometries). we can create the different plots needed
p<-ggplot(data=iris,aes(x=Sepal.Length,
                     y=Sepal.Width))
p+geom_point()
# or
ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width))+geom_point()
# facet(): used to create subgraphs
ggplot(data=iris,mapping=aes(x=Sepal.Length,y=Sepal.Width))+geom_point()+facet_wrap(~Species)+geom_smooth(method = "lm")  # lm means linear regression model, the plot will be made using the model
# this used facet_wrap to make different graphs in the same graph according to the type of Species
# cordinate layer allows you to adjust x and y axis
library(dplyr)
ggplot(filter(iris, Species=="setosa"),aes(x=Sepal.Length,y=Sepal.Width))+
  geom_point()+
  coord_cartesian(xlim=c(4,8),ylim=c(2,5))   # assigning the limits using coord_cartesian()
# coord_cartesian can only accept two limits inside the xlim and ylim

# theme
ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width))+
  geom_point()+
  facet_wrap(~Species)+
  geom_smooth(method="lm")+
  theme(axis.text = element_text(color = "red",size = 12))   # we can change the theme of axis values using theme() function

ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width))+
  geom_point()+
  facet_wrap(~Species)+
  geom_smooth(method="lm")+
  theme(axis.text = element_text(color = "red",size = 12))

ggplot(filter(iris, Species=="setosa"),aes(x=Sepal.Length,y=Sepal.Width))+
  geom_point(col="red")+
  coord_cartesian(xlim=c(4,8),ylim=c(2,5))  # using col inside the geom_point(), we can change the color of the points

# use mtcars dataset and perform all ggplot functions
view(mtcars)
print(colnames(mtcars))

ggplot(data=mtcars,
       aes(x=gear,y=cyl))+
  geom_col(fill="red")+
  coord_cartesian(xlim = c(3,4),ylim = c(4,6))+
  facet_wrap(~hp)+
  geom_smooth(method = "lm")+
  theme(axis.text = element_text(color="blue", size="6"))
