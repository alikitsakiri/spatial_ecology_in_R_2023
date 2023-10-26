im.list()
im.import()
#install_github("") to instal packages from github
b2 <- im.import("sentinel.dolomites.b2.tif" )
#lets change the colors
clb <- colorRampPalette(c("dark grey","grey","light grey")) (100) # 100 is the amount of colours in the gradient
plot(b2, col=clb)
#import the green band from sentinel - 2 (band3)
b3 <- im.import("sentinel.dolomites.b3.tif" )
cl <- colorRampPalette(c("dark grey","grey","light grey")) (100)
plot(b2, col=cl)
