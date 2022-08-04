library(leaflet)
library(htmltools)
library(htmlwidgets)

data <- read.csv2("/Users/Nikon/Desktop/CMC MSU/MC/5 sem/R/maps/coor.txt", sep = "\t", dec = ".", header = TRUE)
map <- leaflet(data) %>% 
  addTiles() %>%
  addMarkers(~data$cor_x, ~data$cor_y, label = ~htmlEscape(data$Num)) %>%
  setView(lng = 2.3, lat = 48.8, zoom = 4.2) %>%
  addProviderTiles("OpenTopoMap")
map
save_html(map, "mapOut.html", background = "white", libdir = "lib")
