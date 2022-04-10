#6
n = 100
m = 50
sd = 8
x1 = 0
x2 = 0

#6a
par(mfrow = c(2,1))
data = rnorm(n=n, mean=m, sd=sd)
arrz = c()

for (i in data)
{
  z = (i - m)/sd
  arrz = append(arrz, z)
  
  if (i < m)
  {
    x1 = x1 + 1
  }
  
  else
  {
    x2 = x2 + 1
  }
}


result = plot(arrz, type='l')

paste("Rata-rata: ", m)
paste("x1: ", x1)
paste("x2: ", x2)

#6b histogram
hist(rnorm(n = n, mean = m, sd = sd), breaks = 50, main="5025201245_Achmad Ferdiansyah_B_DNhistogram")

#6c
varian = sd^2