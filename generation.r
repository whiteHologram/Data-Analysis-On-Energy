totalrenew <- import("C:\\data\\renewablesTotalPowerGeneration.csv")
totalnonrenew <- import("C:\\data\\nonRenewablesTotalPowerGeneration.csv")
top20countryrenew <- import("C:\\data\\top20CountriesPowerGeneration.csv")
renewbyyear <- import("C:\\data\\renewablePowerGeneration97-17.csv")

View(top20countryrenew)
View(totalnonrenew)
contribution <- table(totalrenew$`Contribution (TWh)`)
final_renew <- as.data.frame(t(totalrenew))
final_nonrenew <- as.data.frame(t(totalnonrenew))
barplot(totalrenew$`Contribution (TWh)`, names=totalrenew$`Mode of Generation`, xlab='Mode', ylab='Contribution', las=2)
barplot(totalnonrenew$`Contribution (TWh)`, names=totalnonrenew$`Mode of Generation`, xlab='Mode', ylab='Contribution', las=2)

barplot(top20countryrenew$`Total (TWh)`, names=top20countryrenew$Country, xlab='Country', ylab='Total Renewable Generation', las=2)
barplot(top20countryrenew$`Hydro(TWh)`, names=top20countryrenew$Country, xlab='Country', ylab='Total Hydro Generation', las=2)
barplot(top20countryrenew$`Biofuel(TWh)`, names=top20countryrenew$Country, xlab='Country', ylab='Total Biofuel Generation', las=2)
barplot(top20countryrenew$`Solar PV (TWh)`, names=top20countryrenew$Country, xlab='Country', ylab='Total Solar Generation', las=2)
barplot(top20countryrenew$`Geothermal (TWh)`, names=top20countryrenew$Country, xlab='Country', ylab='Total Geothermal Generation', las=2)

View(renewbyyear)
View(top20countryrenew)
clean_renewbyyear <- subset(renewbyyear, Year>1999 & Year<2018)
View(clean_renewbyyear)
sums <-colSums(clean_renewbyyear[2:5])
pie(sums, labels = c('Hydro', 'Biofuel', 'Solar', 'Geothermal'), edges =200, radius = 1, clockwise = FALSE )
title('(TWh) Renewable Generation 2000-2017 Total')

boxplot(clean_renewbyyear[2:5], names = c('Hydro','Biofuel','Solar','Thermal'), las=2, xlab='TWh', ylab='Generation')
barplot(clean_renewbyyear$`Hydro(TWh)`, names=clean_renewbyyear$Year, xlab='year', ylab='Hydro Generation TWh', las=2)
barplot(clean_renewbyyear$`Biofuel(TWh)`, names=clean_renewbyyear$Year, xlab='year', ylab='Biofuel Generation TWh', las=2)
barplot(clean_renewbyyear$`Solar PV (TWh)`, names=clean_renewbyyear$Year, xlab='year', ylab='Solar Generation TWh', las=2)
barplot(clean_renewbyyear$`Geothermal (TWh)`, names=clean_renewbyyear$Year, xlab='year', ylab='Geothermal Generation TWh', las=2)


final_topgen <- as.data.frame(t(top20countryrenew))
View(renew_table1)


renew_table1 <- subset(top20countryrenew, Country %in% c('India','China','Brazil','Mexico','Indonesia','Thailand'))
