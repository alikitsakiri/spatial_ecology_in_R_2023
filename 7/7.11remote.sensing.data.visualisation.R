#continue the previous lesson
library(imageRy)
library(terra)
im.list()
b2 <- im.import("sentinel.dolomites.b2.tif")
b3 <- im.import("sentinel.dolomites.b3.tif")
b4 <- im.import("sentinel.dolomites.b4.tif")
b8 <- im.import("sentinel.dolomites.b8.tif")
#stack images all together
stacksent <- c(b2, b3, b4, b8)
@play with the colors
im.plotRGB(stacksent, r=3, g=2, b=1)
im.plotRGB(stacksent, r=4, g=3, b=2)
im.plotRGB(stacksent, r=3, g=4, b=1)
im.plotRGB(stacksent, r=3, g=2, b=4)
#with pair we mean to correlate all the variables (even tables)
#we correlate to each other
pairs(stacksent)
#this represents every value of te system and we have their correlation 
