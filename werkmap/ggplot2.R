#GGPLOT2

#DATA VISUALISEREN MET GGPLOT2 UIT DE TIDYVERSE!
library("tidyverse") # tidyverse gaan we vandaag het meest gebruiken. 
# Hier zitten alle packages in die je nodig hebt


options(scipen = 999) #deze instelling kan je negeren. 


## 1. type 'df' in je console om de data te bekijken 
## 2. de View() functie is hier ook erg handig voor 
View(df)



###Zojuist heb je met dplyr geleerd hoe je tabellen kan maken met informatie zoals 
###jij die wil zien!
###We gaan verder met het visualiseren van de tabel die je aan het einde van 
###het dplyr script hebt gemaakt!

avg_pop_2002 <- df %>% #gebruik df
  filter(year == 2002) %>% #filter df op 2002
  group_by(continent) %>%  #groepeer de gefilterde df op continent
  summarise(avg_pop = mean(pop)) #bereken voor elk continent in 2002 de gemiddelde pop

###Met ggplot2 gaan we deze tabel visueel maken. Bij ggplot hoef je vandaag maar 2 dingen
###te doen. 
### 1. Aangeven welke data je gebruikt en hoe je deze gebruikt
### 2. Een plot type uitkiezen. 

### In de praktijk krijg je dan code die er als volgt uit ziet: 
ggplot(data = avg_pop_2002, aes(x = continent, y = avg_pop)) +
  geom_col()

#OPDRACHT1.1
###je kan echter nog vanalles veranderen aan deze plot! Gebruik de cheat sheet om 
### 1. de kleur van de staven te veranderen, 
### 2. Een titel aan de plot te geven 
### 3. De plot te kantelen
### 4. Gebruik stackoverflow om er achter te komen hoe je de balken van groot naar klein zet. 



###COMBINEREN DPLYR EN GGPLOT
#Nu gaan we een nieuwe set maken en deze visualiseren voor je opdracht gever. 
#Je opdrachtgever, Jan, wil weten of er over de jaren heen een toename is van zowel 
#levensverwachting als populatie. 


#OPDRACHT 2.1
#maak een tabel met daarin per jaar: de gemiddelde levensverwachting en de totale populatie
#van alle landen
#HINT: gebruikt group_by, summarise, mean en sum!



#OPDRACHT 2.2
#Maak 2 grafieken waarin je het verloop van levensverwachting en totale populatie laat zien!






















