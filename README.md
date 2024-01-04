# Rshiny App
## Introduction
L'application DASHBOARD CRIME L.A offre une expérience intéractive pour explorer et comprendre les tendances de criminalité à Los Angeles, de 2020 à 2023.

Voici un aperçu de l'application : 
![DASHBOARD](https://github.com/doriankari/RshinyApp/assets/146330254/7e148bd2-2c4e-4fac-a900-4d62fbc1d170)



## Comment éxécuter l'application
- Avoir R et R studio sur votre machine
- Téléchagez l'ensemble du projet depuis le [Répository R-ShinyApp](https://github.com/doriankari/RshinyApp.git)
- Téléchargez le jeu de données via ce lien [Crime-Data](https://data.lacity.org/Public-Safety/Crime-Data-from-2020-to-Present/2nrs-mtv8/about_data)
- Mettre le fichier dans un dossier DATA que vous créez
- Installez les packages nécéssaires en utilisant le script R : packages.R
- Lancer le script : global.R
- Ouvrez ensuite le fichier : Webapp_DataCrime.R
- Appuyez sur Run App pour lancer l'application
  

## Fonctionnalités de l'Application

### Onglet "Home"
Cet onglet présente une introduction à l'application, affiche quelques chiffres clés et comprend un graphique montrant le nombre de délits par année.

### Onglet "Graphs"
Sélectionnez une année dans les deux menus déroulants et visualisez la répartition des délits en fonction du sexe et de l'âge des victimes pour l'année en question.
Type de délit

### Onglet "Map"
Cliquez sur un quartier puis sur la carte intéractive vous aurez la représentation de la répartition des délits ainsi que leur type.

### Onglet "Type de délit"
Dans le menu déroulant sélectionnez un type de délit et dans la table intéractive regardez les informations pour chaque délit.

## Remarques 
- Dans l'onglet "Localisation" vous aurez uniquement les données de certains crime car sinon la carte serait trop surchargée et illisible.
- Dans l'onglet "Type de délit" vous pouvez filtrer par type de délits dans le menu déroulant mais également par année , par lieu... grâce à la barre de recherche située à droite au dessus de la table.
