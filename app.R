source("packages.R")
source("global.R")

# UI
ui <- fluidPage(
  titlePanel("Crimes à Los Angeles de 2020 à 2023"),
  
  sidebarLayout(
    sidebarPanel(
      # Vous pouvez ajouter des filtres supplémentaires ici
      # par exemple : selectInput(), dateRangeInput(), etc.
    ),
    
    mainPanel(
      tabsetPanel(
        tabPanel("Graphique", 
                 plotOutput("crimePlot")
        ),
        tabPanel("Carte", 
                 leafletOutput("crimeMap")
        )
      )
    )
  )
)

# Server logic
server <- function(input, output) {
  
  # Fonction pour générer le graphique
  output$crimePlot <- renderPlot({
    # Vous pouvez utiliser ggplot pour créer un graphique en fonction des données
    # Ceci est un exemple générique. Assurez-vous d'adapter votre code à vos données.
    ggplot(data, aes(x = Date, fill = Crm.Cd.Desc)) +
      geom_bar() +
      labs(title = "Nombre de crimes par type",
           x = "Date",
           y = "Nombre de crimes") +
      theme_minimal()
  })
  
  # Fonction pour générer la carte
  output$crimeMap <- renderLeaflet({
    # Vous pouvez utiliser Leaflet pour créer une carte interactive
    # Ceci est un exemple générique. Assurez-vous d'adapter votre code à vos données.
    leaflet(data) %>%
      addTiles() %>%
      addMarkers(~34.052235, ~118.243683, popup = ~Crm.Cd.Desc)
  })
}

# Lancer l'application Shiny
shinyApp(ui = ui, server = server)
