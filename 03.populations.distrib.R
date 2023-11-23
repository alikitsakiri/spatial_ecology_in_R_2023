#
library(sdm)
library(terra) # predictors
library(rgdal) # species

file <- system.file("external/species.shp", package="sdm") 
species <- vect(file)
species
plot(species)

# looking at the occurrences
species$Occurrence
pres <- rana[rana$Occurrence==0,]
plot(pres, col="dark blue")
points(abse,col="light blue")
elev <- system.file("external/species.shp", package="sdm") 
elevmap <- rast(elev)
plot(elevmap)
elev <- rast("\Users\Αλίκη\AppData\Local\R\win-library\4.2\00LOCK\rgdal\libs\x64\rgdal.dll to C:\Users\Αλίκη\AppData\Local\R\win-library\4.2\rgdal\libs\x64\rgdal.dll")
