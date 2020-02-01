dat2<-read.delim("DataSets/DataSets/murders.csv", sep=",", header=T)
head(dat2)
str(dat2)
View(dat2)
dat<-read.csv("DataSets/DataSets/murders.csv")
View(dat)


tiradas<-numeric()
for (i in 1:100){tiradas[i]<-play()}

jugadas<-matrix(nrow=100,ncol=3)
for (i in 1:100){jugadas[i,]<-get_simbols()}
colnames(jugadas)<-c("First","Second","Third")

s<-numeric()
for (i in 1:100){s[i]<-score(jugadas[i,])}

#Otra forma de hacer lo mismo
s<-apply(jugadas,1,score2)
s

#El 1 significa para todas tus filas y 2 sería para todas tus columnas.

