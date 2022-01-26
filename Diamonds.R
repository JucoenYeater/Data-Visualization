library(ggplot2)
library(dplyr)
diamonds
attach(diamonds)

#Atomic list can't be found, just reload the library
data=diamonds

mytable<-table(cut,clarity)
mytable

summary(mytable)

#Gives new subset of data where the cut is ideal only
data_ideal<-filter(diamonds,cut=="Ideal")



d<-ggplot(data=diamonds)+
  geom_point(mapping=aes(x=carat, y=price))
e<-ggplot(data=diamonds)+
  geom_point(mapping=aes(x=cut, y=price))
f<-ggplot(data=diamonds)+
  geom_point(mapping=aes(x=color, y=price))
g<-ggplot(data=diamonds)+
  geom_point(mapping=aes(x=clarity, y=price))
h<-ggplot(data=diamonds)+
  geom_point(mapping=aes(x=x, y=price))
i<-ggplot(data=diamonds)+
  geom_point(mapping=aes(x=y, y=price))
j<-ggplot(data=diamonds)+
  geom_point(mapping=aes(x=z, y=price))
windows()
d
e
f
g
h
i
j


d<-ggplot(data=diamonds)+
  geom_point(mapping=aes(x=carat, y=price, color=cut)) +
  facet_grid(color~clarity) 
d

d<-ggplot(data=diamonds)+
  geom_point(mapping=aes(x=carat, y=price, color=cut)) +
  facet_grid(color~clarity) 
d

d<-ggplot(data=diamonds)+
  geom_point(mapping=aes(x=carat, y=price, color=cut)) +
  facet_wrap(~x, nrow=2) 
d
