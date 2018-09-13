#DATA BEWERKEN MET DPLYR UIT DE TIDYVERSE
library("tidyverse") # tidyverse gaan we vandaag het meest gebruiken. 
                     # Hier zitten alle packages in die je nodig hebt

#install.packages("gapminder") ##installeer gapminder package 
df <- gapminder::gapminder %>% 
  mutate(pop = as.numeric(pop)) ##laad de gapminderdata in r

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




#COUNT
###tel hoeveel rijen de dataset heeft!
count(df)

###Op dit moment is deze functie niet zo spannend. Zometeen gaan we functies combineren
###en wordt het een stuk interessanter!







#GROUP_BY en SUMMARISE
###groepeer je data. Deze handeling zal op zichzelf niet veel met je data doen. 
###Je wanneer je de data echter aanroept in je console zal je zien dat er bij aan wordt 
###gegeven wat de groepen zijn. 

df_groep <- group_by(df, country)

###Nu het dataframe gegroepeerd is kan je met de summarise functie
###dezelfde functies als hierboven toepassen, maar nu worden de functies 
###per groep toegepast! Wat betekent dat? 
summarise(df_groep, som = sum(pop))

### als je de vorige 2 regels code hebt begrepen kan je nu je eigen tabellen gaan maken. 

###OPDRACHT 4.1
###Bereken per continent de gemiddelde levensverwachting
#HINT: je kan hier de vorige 2 regels code voor overnemen. Je hoeft alleen country en de 
#sum functie aan te passen!



###OPDRACHT 4.2
### Maak een tabel waarbij je kan zien wat de gemiddelde populatiegrootte is per jaar!
##HINT: groepeer per jaar en gebruik de mean() functie. 




###DE PIPE ( %>% )
#De pipe operator is een krachtig gereedschap die met de tidyverse meekomt. 
# 1. We gaan de pipe altijd gebruiken aan het einde van een regel code
# 2. De pipe geeft de uitkomst van de huidige regel door aan de volgende regel

###VOORBEELD:
2 + 2 %>% 
  + 2 %>% 
  - 3

#je kan het antwoord ook opslaan zodat je het later kan gebruiken voor een visualisatie
x <- 2 + 2 %>% 
  + 2 %>% 
  - 3

#vaak willen we verschillende bewerkingen uitvoeren op een set. De pipe maakt dit
#heel gemakkelijk!
df %>% #gebruik df
  filter(year == 2002) %>% #filter df op 2002
  group_by(continent) %>%  #groepeer de gefilterde df op continent
  summarise(avg_pop = mean(pop)) #bereken voor elk continent in 2002 de gemiddelde pop


#OPDRACHT 5.1
#ook dit wil je misschien visualiseren. Neem hieronder de bovenstaande code over.
#Wijs de nieuwe tabel toe aan avg_pop_2002 (je maakt dus een nieuw object a la x <- 2)
#hint: gebruik regel 119 als voorbeeld voor het toewijzen. 
  













