n = 20
ps = 0.2
q = 1 - ps

#2a
pasien_sembuh = 4
dbinom(pasien_sembuh, n, ps)

#2b histogram
peluang <- dbinom(1:20, 20, 0.2)
data = data.frame(y=c(peluang), x=c(1:20))
barplot(data$y, names.arg=data$x, ylab="Peluang", xlab="Jumlah Pasien")

#2c rataan dan varian
rataan = pasien_sembuh * ps
cat("rataan: ", rataan, "\n")
varian = pasien_sembuh * ps * q
cat("varian: ", varian, "\n")