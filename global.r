# Importe les données 

print("data charged")
data <- read.csv("DATA/Crime_Data.csv", header = TRUE, sep = ";")
print("data load")

titre_appli = " analyse crime 2023"

variables_data = names(data)

