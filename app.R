# # # Simulation de données de criminalité à Los Angeles
source("packages.R")
#source("global.R")

# UI
ui <- dashboardPage(
  dashboardHeader(title = "Dashboard CRIME LA"),
  dashboardSidebar(
    sidebarMenu(
      pickerInput(
        "city_select", label = "Villes",
        choices = unique(data$AREA.NAME),
        options = list('actions-box' = TRUE),
        multiple = TRUE,
        selected = unique(data$AREA.NAME)[1:4]
      ),
      pickerInput(
        "crime_select", label = "Crimes",
        choices = c("Cambriolage" = "BURGLARY", 
                    "Viol" = "RAPE, FORCIBLE", 
                    "Vol" = "ROBBERY", 
                    "Enlèvement" = "KIDNAPPING", 
                    "Véhicule volé" = "VEHICLE - STOLEN"),
        options = list('actions-box' = TRUE),
        multiple = TRUE,
        selected = c("BURGLARY", "ROBBERY")
      ),

      menuItem("Home", tabName = "home", icon = icon("home")),
      menuItem("Map", tabName = "map", icon = icon("map")),
      menuItem("Graphs", tabName = "graphique", icon = icon("chart-line")),
      menuItem("Data Set", tabName = "data_set", icon = icon("table")),
      menuItem("Summary", tabName = "Summary", icon = icon("chart-pie"))
    )
  ),
  
  
  dashboardBody(
    tabItems(
      tabItem(
        tabName = "home",
        h2("USA, Los Angeles Crimes Data: 2020 To 2023", align = "center"),
        br(),
        p("This application offers an in-depth exploration of crime data in Los Angeles,
  providing a comprehensive analysis of trends, variations, and criminal 
  patterns prevalent within this metropolis.
  Its aim is to deliver a nuanced and contextualized understanding of 
  the city's criminal landscape through interactive visualizations and 
  data analysis tools.", align = "center"),
        br(),
        div(
          style = "text-align: center;",
          tags$img(src = "LAPD.png", height = "400px", width = "600px"),
          br(),
          br(),
          p(em("Done by Mr Amri Karim."),br(),em("contact: amri.dk@hotmail.com"))
        )
      ),
      tabItem(
        tabName = "map",
        leafletOutput("map")
      ),
      tabItem(
        tabName = "graphique",
        tabsetPanel(
          tabPanel("Armes Utilisées", icon = icon("gun")),
          tabPanel("Sexe des Victimes", icon = icon("venus-mars")),
          tabPanel("Ethnicité des Victimes", icon = icon("globe-americas")),
          tabPanel("Type de Crime", icon = icon("exclamation-triangle"))
        )
        #plotOutput("graphique_output")
      ),
      tabItem(
        tabName = "data_set",
        dataTableOutput("tableau"),
      ),
      tabItem(
        tabName = "Summary",
        verbatimTextOutput("SummaryData")
      )
    )
  )
)
#
# Server logic
server <- function(input, output) {
  
  # Création d'une variable réactive pour filtrer les données en fonction des sélections de ville et de crime
  filtered_data <- reactive({
    selected_cities <- input$city_select
    selected_crimes <- input$crime_select
    
    # Filtrer les données en fonction des sélections
    filtered <- data[data$AREA.NAME %in% selected_cities & data$Crm.Cd.Desc %in% selected_crimes, ]
    return(filtered)
  })
  
  output$map <- renderLeaflet({
    leaflet(filtered_data()) %>%
      addTiles() %>%
      addCircleMarkers(clusterOptions = markerClusterOptions(
        radius = 5, # Taille du marqueur
        color = "blue", # Couleur du marqueur
        fillOpacity = 0.8, # Opacité du remplissage
        popup = ~filtered_data()$Crm.Cd.Desc, # Texte du popup
        label = ~filtered_data()$Crm.Cd.Desc # Texte affiché lorsque vous survolez le marqueur
      ))
  })
  
  output$graphique_output <- renderPlot({
    # Code pour créer vos graphiques en fonction des sélections (à compléter)
    # Utilisez les données filtrées : filtered_data()
  })
  
  output$tableau <- renderDataTable({
    filtered_data()
  })
  
  output$SummaryData <- renderPrint({
    summary(filtered_data())
  })
}


shinyApp(ui = ui, server = server)
