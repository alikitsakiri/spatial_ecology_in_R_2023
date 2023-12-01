#the first lesson
#with R we can do math operations like summing up
#like 2 + 3
maria <- 2 +3

aliki <- 5 + 3
aliki

final <- maria * aliki
final

final^2


aliki2 <- c(10, 20, 30, 50, 70) 


maria2 <- c(100, 500, 600, 1000, 2000) 

#we can plot the results
plot(aliki2, maria2)

plot(aliki2, maria2, xlab="number of people", ylab="microplastics")


people <- aliki2
microplastics <- maria2

plot(people, microplastics)
plot(people, microplastics, pch=19)
# https://www.google.com/search?client=ubuntu-sn&hs=yV6&sca_esv=570352775&channel=fs&sxsrf=AM9HkKknoSOcu32qjoErsqX4O1ILBOJX4w:1696347741672&q=point+symbols+in+R&tbm=isch&source=lnms&sa=X&ved=2ahUKEwia9brkm9qBAxVrQvEDHbEYDuMQ0pQJegQIChAB&biw=1760&bih=887&dpr=1.09#imgrc=lUw3nrgRKV8ynM

plot(people, microplastics, pch=19, cex=2)
plot(people, microplastics, pch=19, cex=2, col="blue")
