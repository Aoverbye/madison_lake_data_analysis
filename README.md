# Analysis of Madison Lake and Meterological Data

This repository contains data cleaning, querying, and brief analysis of data relating to meteorological and lake ice cover duration in Madison, Wisconsin. 

### Repository Structure
 
madison_lake_data_analysis
├── data
│   ├── air_temp.csv
│   ├── air_temp_clean.csv
│   ├── duckdb.exe
│   ├── lake_ice.csv
│   ├── lake_ice_clean.csv
│   ├── wisconsin_data.sql
│   └── year.csv
├── data_cleaning.qmd
├── dependencies
├── duckdb.exe
├── graphs.qmd
├── madison_lake_data_analysis.Rproj
├── README.md
└── wisconsin_data.db


### Order of operations

To do this analysis, I began by downloading both data sets and cleaning the data in the data_cleaning.qmd file. Once the data was cleaned, I downloaded it to my computer and created empty tables in the wisconsin_data.sql file. The wisconsin_data.sql file can be found in the data folder. The empty tables were then populated with data from the data_cleaning.qmd, uploaded to Duckdb and queried. Lastly, the data was loaded from Duckdb into the graphs.qmd file where it was visualized.   

## Data

Madison Wisconsin Daily Meteorological Data 1869 - current
This database contains information about meteorological variables collected near Madison, Wisconsin. It includes data on average precipitation, air temperature values, adjusted air temperature values, and snow depth information including the dates when the data was collected. 
North Temperate Lakes LTER: Ice Duration - Madison Lakes Area 1853 - current
This dataset contains information about the duration of ice sheets on north temperate lakes near Madison, Wisconsin. It includes the starting and ending date of freezeovers, lake identification data, and the number of days the lake remained frozen.

### Dependencies

Required systems and dependencies can be found in the dependencies.txt file. 

