
-- Table: air_temp
CREATE TABLE air_temp (
    year                   INTEGER,
    sampledate              DATE PRIMARY KEY,
    max_air_temp_adjusted   FLOAT,
    min_air_temp_adjusted   FLOAT,
    avg_air_temp_adjusted   FLOAT,
    range_air_temp_adjusted FLOAT,
    precip_raw_mm           FLOAT,
    snow_raw_cm             FLOAT,
    FOREIGN KEY (year) REFERENCES year(year)
);

-- Table: year
CREATE TABLE year (
    year                         INTEGER PRIMARY KEY,
    avg_max_air_temp_adjusted    FLOAT,
    avg_min_air_temp_adjusted    FLOAT,
    avg_precip_raw_mm            FLOAT,
    avg_snow_raw_cm              FLOAT,
    avg_ice_duration             FLOAT
);

CREATE TABLE lake_ice(
    lakeid     INTEGER,
    year       INTEGER,
    ice_on     DATE,
    ice_off    DATE,
    duration   INTEGER
);

COPY air_temp FROM 'air_temp_clean.csv' (Header TRUE);
COPY lake_ice FROM 'lake_ice_clean.csv' (Header TRUE);
COPY year FROM 'year.csv' (Header TRUE);