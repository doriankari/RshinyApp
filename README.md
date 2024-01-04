# Rshiny App

## Los Angeles Crimes Application 

*This application offers an in-depth exploration of crime data in Los Angeles,
  providing a comprehensive analysis of trends, variations, and criminal 
  patterns prevalent within this metropolis.
  Its aim is to deliver a nuanced and contextualized understanding of 
  the city's criminal landscape through interactive visualizations and 
  data analysis tools.*

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
   git clone [https://github.com/doriankari/RshinyApp.git]
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
4. Run the "global.r" file, then change the path of the first line of code to access data.frame to your path (where "data" is stored).

5. Launch the "app.R" file, replace the first 2 lines of the "source" path with your own (where you've stored the repo) so that the Packages.R and Global.R files run.

6. Run the application locally by opening the `crim_appli.R` file in RStudio and clicking 'Run App'. 

## Application Structure

- `app.R`: Defines the user and server interface
- `global.R`: Contains the variables 
- `Packages.R`: Includes all packages for build an application
- `wwww` : Contains pictures

## Instructions 

Navigate through the tabs to access different analyses.
Utilize dropdowns and buttons to customize your data exploration experience.
Note: Please ensure your date range selection falls between 2020-01-01 and 2023-10-30 for accurate statistics.

Explore, analyze, and gain valuable insights into the crime landscape of Los Angeles with the Los Angeles Crimes Application!

## Contact

- [My Linkedin](https://www.linkedin.com/in/dorian-amri-8685a2177/)
- [Email](amri.dk@hotmail.com)
