
2 + 3

zima <- 2 + 3
zima

aliki <- 5 + 3
aliki

final <- zima * aliki
final

final^2


sophi <- c(10, 20, 30, 50, 70) 


paula <- c(100, 500, 600, 1000, 2000) 

plot(paula, sophi)

plot(paula, sophi, xlab="number of people", ylab="microplastics")


people <- paula
microplastics <- sophi

plot(people, microplastics)
plot(people, microplastics, pch=19)
# https://www.google.com/search?client=ubuntu-sn&hs=yV6&sca_esv=570352775&channel=fs&sxsrf=AM9HkKknoSOcu32qjoErsqX4O1ILBOJX4w:1696347741672&q=point+symbols+in+R&tbm=isch&source=lnms&sa=X&ved=2ahUKEwia9brkm9qBAxVrQvEDHbEYDuMQ0pQJegQIChAB&biw=1760&bih=887&dpr=1.09#imgrc=lUw3nrgRKV8ynM

plot(people, microplastics, pch=19, cex=2)
plot(people, microplastics, pch=19, cex=2, col="blue")
