# Madison Lake Ice Duration and Weather Patterns

This repository contains the data cleaning, SQL querying, and basic visual analysis of meteorological and lake ice cover data collected in Madison, Wisconsin.

## Repository Structure
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
  

## Data Access

[Madison Wisconsin Daily Meteorological Data 1869 - current](https://portal.edirepository.org/nis/metadataviewer?packageid=knb-lter-ntl.20.37)

This database contains information about meteorological variables collected near Madison, Wisconsin. It includes data on average precipitation, air temperature values, adjusted air temperature values, and snow depth information including the dates when the data was collected. 


[North Temperate Lakes LTER: Ice Duration - Madison Lakes Area 1853 - current](https://portal.edirepository.org/nis/mapbrowse?scope=knb-lter-ntl&identifier=33&revision=39)

This dataset contains information about the duration of ice sheets on north temperate lakes near Madison, Wisconsin. It includes the starting and ending date of freezeovers, lake identification data, and the number of days the lake remained frozen.

## Dependencies

Required systems and dependencies can be found in the dependencies.txt file. 

## Acknowledgements

This project was done as part of [The Bren School Master of Environmental Data Science](https://bren.ucsb.edu/masters-programs/master-environmental-data-science/academics-meds-program) degree program as part of the [EDS 213: Databases and Data Management](https://ucsb-library-research-data-services.github.io/bren-eds213/) class. I would like to thank the instructors of this class, Dr. Julien Brun, Greg Janée, and Annie Adams for their instruction and guidance during this process.

## References 

Anderson, L., D.M. Robertson, and National Weather Service. 2024. Madison Wisconsin Daily Meteorological Data 1869 - current ver 37. Environmental Data Initiative. https://doi.org/10.6073/pasta/cf3c226d82e8885b9cd0a55908226cc3 (Accessed 2025-05-15).

Magnuson, J.J., S.R. Carpenter, and E.H. Stanley. 2024. North Temperate Lakes LTER: Ice Duration - Madison Lakes Area 1853 - current ver 39. Environmental Data Initiative. https://doi.org/10.6073/pasta/7ef5d8a32c65439fd903a9cbeeacb23a (Accessed 2025-05-15).



