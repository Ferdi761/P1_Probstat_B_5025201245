#NOMOR 3
rata_lahir = 4.5

#3a
jumlah_lahir = 6
dpois(jumlah_lahir, rata_lahir)

#3b
data = data.frame(y = c(dpois(jumlah_lahir, rata_lahir)), x = c(1:365))
barplot(data$y, names.arg = data$x, ylab = "probabilitas", xlab = "hari ke-", ylim = 0:1)

#3d rataan dan varian lambda = rata_lahir
rataan = rata_lahir
varian = rata_lahir
rataan
varian
#varian dan rataan sama

