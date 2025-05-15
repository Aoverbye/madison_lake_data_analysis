# Analysis of Lake Ice and Meterological Data In Madison, Wisconsin

This repository contains the data cleaning, SQL querying, and basic visual analysis of meteorological and lake ice cover duration data collected in Madison, Wisconsin.

### Repository Structure
``` 
madison_lake_data_analysis
├── data
│   ├── air_temp.csv
│   ├── air_temp_clean.csv
│   ├── lake_ice.csv
│   ├── lake_ice_clean.csv
│   ├── wisconsin_data.sql
│   └── year.csv
├── data_cleaning.qmd
├── dependencies
├── graphs.qmd
├── madison_lake_data_analysis.Rproj
├── README.md
└── wisconsin_data.db
```

## Order of Operations

**1. Data Cleaning:** Raw datasets were loaded and cleaned using data_cleaning.qmd.

**2. Database Setup:** Cleaned data was saved locally and structured tables were created in wisconsin_data.sql. This SQL file contains the schema and import logic and is located in the data folder.

**3. Database Population:** Cleaned CSVs were imported into DuckDB using the schema. Queries were then written and tested in SQL.

**4. Visualization:** Queried results from DuckDB were imported into graphs.qmd for plotting and visualizarion
  

## Data

Madison Wisconsin Daily Meteorological Data 1869 - current
This database contains information about meteorological variables collected near Madison, Wisconsin. It includes data on average precipitation, air temperature values, adjusted air temperature values, and snow depth information including the dates when the data was collected. 
North Temperate Lakes LTER: Ice Duration - Madison Lakes Area 1853 - current
This dataset contains information about the duration of ice sheets on north temperate lakes near Madison, Wisconsin. It includes the starting and ending date of freezeovers, lake identification data, and the number of days the lake remained frozen.

## Dependencies

Required systems and dependencies can be found in the dependencies.txt file. 

