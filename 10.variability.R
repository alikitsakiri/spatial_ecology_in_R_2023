# measurement of RS based variability

library(imageRy)
library(terra)
library(viridis)

im.list()

sent <- im.import("sentinel.png")
# band 1 = NIR
# band 2 = red 
# band 3 = green

im.plotRGB(sent, r=1, g=2, b=3)
im.plotRGB(sent, r=2, g=1, b=3)

nir <- sent[[1]]
plot(nir)
# LETS MOVE TO THE MOVING WINDOW TECHNIQUE 
#its a window of 3x3 pixels that moves inside an image and calculates the standard deviation of the 9 pixels inside the window, then the window moves right of 1 pixel and then we calculate another sd
#changes on dimension of the window, the sd changes.
# focal
sd3 <- focal(nir, matrix(1/9,3,3),fun=sd)
# The matrix is composed of 9 pixels from 1 to 9, and they are distributed 3 by 3 (3,3), the function we're going to calculate is the sd
plot(sd3)
viridisc <- colorRampPalette(viridis(7))(255)  # 255 is the amount of different nuances of the 7 colors used.
plot(sd3, col=viridisc)     # the part with the highest variability is the upper left

#exercise
# let's calculate the variability in a 7x7 pixels moving window
sd7 <- focal(nir, matrix(1/49, 7,7), fun=sd)
plot(sd7, col=viridisc)

# Exercise: plot via par(mfrow()) the 3x3 and the 7x7 standard deviation
par(mfrow=c(1,2))
plot(sd3, col=viridisc) 
plot(sd7, col=viridisc)    # if we enlarge the moving window (49 pixels instead of 9) then we have a higher variability. 

# original image plus the 7x7 sd
im.plotRGB(sent, r=1, g=2, b=3) 
plot(sd7, col=viridisc)    # in the upper left part we can see a lot of white, which indicates a high geological variability (or species variability in some cases), so it discriminates between snow/clouds and bare soil. 

# How can we decide which layer we should apply/calculate the standard deviation to? With multivariate analysis.
