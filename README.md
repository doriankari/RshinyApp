# Rshiny App

## Los Angeles Crimes Application 

*Welcome to the Los Angeles Crimes app, a comprehensive tool for exploring crime data in the city of Los Angeles. This Shiny web application provides visualizations and analyses by LA districts to help users understand crime trends and variations over time and across districts.*

*View of application*
![DASHBOARD](https://github.com/doriankari/RshinyApp/assets/146330254/7e148bd2-2c4e-4fac-a900-4d62fbc1d170)

## Getting Started

### Prerequisites

- R (version 3.6.0 or higher)
- RStudio
- Shiny and R packages

### Installation

1. Clone the repo:
   ```sh
   git clone [https://github.com/DamienL31/RshineApp/tree/main]
   ```
2. Download the repo, store the files in a folder and then create subfolders "www" in which you can put photos, "data" which will contain your data.
   
3. Open Packages.R : 
check that you have the same packages as in packages.R if not below the command :
```R
install.packages('package')
```
Then don't forget to load it :
```R
library(package)
```
4. Run the "Global.r" file, then change the path of the first line of code to access data.frame to your path (where "data" is stored).

5. Launch the "Crim_Appli.R" file, replace the first 2 lines of the "source" path with your own (where you've stored the repo) so that the Packages.R and Global.R files run.

6. Run the application locally by opening the `crim_appli.R` file in RStudio and clicking 'Run App'. 

## Application Structure

- `crim_appli.R`: Defines the user and server interface
- `global.R`: Contains the variables 
- `Packages.R`: Includes all packages for build an application
- `wwww` : Contains pictures

## Instructions 

Navigate through the tabs to access different analyses.
Utilize dropdowns and buttons to customize your data exploration experience.
Note: Please ensure your date range selection falls between 2020-01-01 and 2023-10-30 for accurate statistics.

Explore, analyze, and gain valuable insights into the crime landscape of Los Angeles with the Los Angeles Crimes Application!

## Contact
 
- [linkedin](https://www.linkedin.com/in/damien-lauger-8aa64a151)
- [Email](damien.lauger.edu@groupe-gema.com)
