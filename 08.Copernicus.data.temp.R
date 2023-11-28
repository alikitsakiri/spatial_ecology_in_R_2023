#we will talk about copernicus and its data
#we use this link https://land.copernicus.vgt.vito.be/PDF/portal/Application.html
#register and log in
#download data from copernicus
install.packages("ncdf4")
library(ncdf4)
library(terra)

#where the data are going to be stored in my computers path
setwd("C:/Users/Αλίκη/Downloads") #use ths / instead of \
newnameoftheobject <- rast("c_gls_SSM1km_202311250000_CEURO_S1CSAR_V1.2.1 (1).nc")
plot(newnameoftheobject)
#change the name
soilm2023 <- rast("c_gls_SSM1km_202311250000_CEURO_S1CSAR_V1.2.1 (1).nc")
plot(soilm2023)
#there are two elements, use the first
plot(soilm2023[[1]])

#change colors
c1 <- colorRampPalette(c("red", "orange", "yellow")) (100)
plot(soilm2023[[1]], col=cl)


#we want to crop the image on some points
ext <- c(22, 26, 55, 57) #minimum longtitude, max long, min latitude, max lat
soilm2023c <- crop(soilm2023, ext)
plot(soilm2023c[[1]], col=cl)


#lets put another image from copernicus
soilm2023_24 <- rast("c_gls_SSM1km_202311240000_CEURO_S1CSAR_V1.2.1.nc")
plot(soilm2023_24)
soilm2023_24 <- crop(soilm2023_24, ext)
plot(soilm2023_24[[1]], col=cl)
