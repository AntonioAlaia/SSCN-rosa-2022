#SSCN rosa 2022 

install.packages("rvest") 
library(rvest) 
library(tidyverse) 

link = "https://it.wikipedia.org/wiki/Societ%C3%A0_Sportiva_Calcio_Napoli" 
page = read_html(link) 
rosa = page %>% html_nodes("td .wikitable td , td th") %>% html_text() 

view(rosa)