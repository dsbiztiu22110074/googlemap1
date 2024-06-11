d <- read.csv(file = 'C:/Users/salty/OneDrive/ドキュメント/campus_location_TIU.csv')

library(DT)
datatable(d)

#{r, fig.height = 4, fig.width = 8}

library(leaflet)

leaflet() %>%
  addTiles() %>% 
  addMarkers(lng = d$lng, lat = d$lat,
             popup = paste0(d$name, '<br>', d$address)) %>% 
  addMiniMap(positio = 'topright') %>%
  addScaleBar(position="bottomleft")

