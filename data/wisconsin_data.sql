

-- Table: year
CREATE TABLE year (
    year                         INTEGER PRIMARY KEY,
    avg_max_air_temp_adjusted    FLOAT,
    avg_min_air_temp_adjusted    FLOAT,
    avg_precip_raw_mm            FLOAT,
    avg_snow_raw_cm              FLOAT,
    avg_ice_duration             FLOAT
);

-- Table: air_temp
CREATE TABLE air_temp (
    year                   INTEGER,
    sampledate              DATE PRIMARY KEY,
    max_air_temp_adjusted   FLOAT,
    min_air_temp_adjusted   FLOAT,
    range_air_temp_adjusted FLOAT,
    precip_raw_mm           FLOAT,
    snow_raw_cm             FLOAT,
    FOREIGN KEY (year) REFERENCES year(year)
);

CREATE TABLE lake_ice(
    lakeid     TEXT,
    year       INTEGER,
    ice_on     DATE,
    ice_off    DATE,
    duration   INTEGER
);

COPY year FROM 'year.csv' (HEADER TRUE);
COPY air_temp FROM 'air_temp_clean.csv' (HEADER TRUE);
COPY lake_ice FROM 'lake_ice_clean.csv' (HEADER TRUE);


-- Question: Are minimum air temperatures related to the duration of ice cover?

SELECT 
  year, 
  avg_snow_raw_cm, 
  avg_ice_duration
FROM year
ORDER BY year;
