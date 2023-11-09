#lets make indices, vegetation indices
im.list()

m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
im.plotRGB(m1992, 2, 1, 3)
im.plotRGB(m1992, 2, 3, 1)
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")
im.plotRGB(m2006, r=2, g=3, b=1)
#lets do an exercise, build a multiframe with 1992 and 2006 images
par(mfrow=c(1,2))
im.plotRGB(m1992, 2, 3, 1)
im.plotRGB(m2006, 2, 3, 1)
null everything
dev.oof()
#make a plot
plot(m1992[[1]])
#DVI = NIR - RED
#bands: 1=NIR, 2=RED, 3=GREEN
dvi1992 = m1992[[1]] - m1992[[2]]
plot(dvi1992)
cl <- colorRampPalette(c("darkblue", "yellow", "red", "black")) (100)
plot(dvi1992, col=cl)
#exercise : calculate dvi of 2006
dvi2006 = m2006[[1]] - m2006[[2]]
plot(dvi2006, col=cl)
#NDVI
ndvi1992 = (m1992[[1]]- m1992[[2]]) / (m1992[[1]] + m1992[[2]])
ndvi1992 = dvi1992 / (m1992[[1]] + m1992[[2]])
plot(ndvi1992, col=cl)

#ndvi 2006
ndvi2006 = dvi2006 / (m2006[[1]] + m2006[[2]])
plot(ndvi1992, col=cl)

#together with par
par(mfrow=c(1,2))
plot(ndvi1992, col=cl)
plot(ndvi2006, col=cl)

clvir <- colorRampPalette(c("violet", "dark blue", "blue", "green", "yellow"))(100) # specifying a color scheme
plot(ndvi2006, col=clvir)




#speeding the calculation 
ndvi2006a <- im.ndvi(m2006, 1, 2)
plot(ndvi2006a, col=cl)
