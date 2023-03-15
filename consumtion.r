continentcon <- read.csv("C:\\data\\Continent_Consumption_TWH.csv")
head(continentcon)
View(continentcon)
plot(continentcon)
boxplot(continentcon$World , continentcon$OECD, continentcon$BRICS, continentcon$Europe, continentcon$`North America`, continentcon$`Latin America`,continentcon$Asia, continentcon$Africa,continentcon$Pacific, continentcon$`Middle-East`, continentcon$CIS)
boxplot(continentcon[2:12], las=2)

clean_table1 <- subset(continentcon, Year>1999 & Year<2018)
View(clean_table1)

boxplot(clean_table1[2:12], las=2)

countrycon <- read.csv("C:\\data\\Country_Consumption_TWH.csv")
clean_table2 <- subset(countrycon, Year== '2015')
View(clean_table2)
tablenew2<-as.data.frame(t(clean_table2))
View(tablenew2)

boxplot(clean_table2[2,3], las=2)
boxplot(clean_table2[4:15], las=2)
boxplot(clean_table2[16:30], las=2)
boxplot(clean_table2[31:45], las=2)

worldcon <- read.csv("C:\\data\\World Energy Consumption.csv")
View(worldcon)
clean_table3 <- subset(worldcon, year=='2015')
View(clean_table3)
clean_table3.1 <- table(clean_table3$country , clean_table3$year)

View(clean_table3.1)



clean_table4 <- table(clean_table3$country, clean_table3$electricity_generation, clean_table3$per_capita_electricity, clean_table3$renewables_electricity, clean_table3$energy_per_capita, clean_table3$fossil_electricity, clean_table3$fossil_cons_per_capita) 
View(clean_table4)
clean_table4 <- clean_table3[,c('country','electricity_generation','per_capita_electricity','renewables_electricity','energy_per_capita','fossil_electricity','fossil_cons_per_capita')]
View(clean_table4)
clean_table4.1 <- na.omit(clean_table4) 

View(clean_table4.1)

clean5 <- subset(clean_table4.1, country %in% c('Luxembourg', 'Iceland', 'Finland', 'Norway', 'Slovenia', 'Cyprus', 'Japan', 'Singapore', 'Estonia', 'Sweden', 'Sudan', 'Chad', 'Somalia', 'Mali', 'Nigeria', 'Benin', 'Guinea', 'Afghanistan', 'Cameroon', 'Pakistan'))
View(clean5)