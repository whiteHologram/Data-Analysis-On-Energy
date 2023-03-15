mpinat <- read.csv("C:\\data\\MPI_national.csv")
mpisub <- read.csv("C:\\data\\MPI_subnational.csv")

View(mpinat)
View(mpisub)

barplot(mpisub[mpisub$Country=="Afghanistan",]$MPI.Regional, names= mpisub[mpisub$Country=="Afghanistan",]$Sub.national.region, las=2)

table(mpisub,INDEX = mpisub$Country)
boxplot(stats$`MPI National`,)

barplot(stats$`MPI National`, names= stats$Country, las=2)
mpi_table1 <- subset(mpinat, Country %in% c('India','China','Brazil','Mexico','Indonesia','Thailand'))


View(mpi_table1)


