#DATA BEWERKEN MET DPLYR UIT DE TIDYVERSE
library("tidyverse") # tidyverse gaan we vandaag het meest gebruiken. 
                     # Hier zitten alle packages in die je nodig hebt

install.packages("gapminder") ##installeer gapminder package 
df <- gapminder::gapminder ##laad de gapminderdata in r

## 1. type 'df' in je console om de data te bekijken 
## 2. de View() functie is hier ook erg handig voor 
View(df)

#######################DPLYR#######################

#SELECT
###selecteer specifieke kolommen uit je dataset

select(df, year)


###OPDRACHT 1.1 ###
### selecteer nu zelf de kolom: pop
select(...)


###OPDRACHT 1.2 ###
### selecteer in een keer 2 kolommen: year en pop



#ARRANGE
###Sorteer je data op een of meerdere kolommen
arrange(df, country)


###OPDRACHT 2.1
###Sorteer je data op: lifeExp
arrange(...)



###OPDRACHT 2.2
###Sorteer je data op: lifeExp en year




#FILTER
###Filter uit je set alleen dat wat je wil zien!
filter(df, year == 2002)



###OPDRACHT 3.1
### Filter op alle rijen waar lifeExp groter is dan 81
#HINT: gebruik ">" (groter dan) in je filter functie

filter(...)


###OPDRACHT 3.2
###Maak een set met landen in Asia die in 2002 een populatie hadden die kleiner was dan 15000000





