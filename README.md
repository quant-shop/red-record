# red-record

## Overview

This repository provides historical and contemporary datasets for the study of racialized state violence in the United States, focusing on:

- **Lynchings (1892–1894)** as documented by Ida B. Wells-Barnett. Original lynching data from "A RED RECORD. Tabulated Statistics and Alleged Causes of Lynchings in the United States, 1892-1893-1894." As a result, many records are incomplete or missing.

- **Fatal Police Shootings (2023–2024)** as recorded in the Washington Post Fatal Force Database. Database contains all fatal police interactions since 2015 in the U.S.

The datasets are intended for geospatial, statistical, and comparative research, especially for analyses centering Black men and women.

---

## Datasets

### 1. Lynching Data (Ida B. Wells, 1892–1894)

These files contain records of lynchings, including victim information, location, and alleged accusations, digitized from Ida B. Wells’ original pamphlets and reports.

- `df1892`

- `df1893`

- `df1893b`

- `df1894`

- `df1894b`

**Key Variables:**

- `Accusation`: Alleged reason for lynching (character)

- `State`: State abbreviation (e.g., "Ala." for Alabama) (character)

- `Name`: Name(s) of the victim(s) (character)

- `date` / `year`: Date or year of incident (Date/numeric)

- `latitude`, `longitude`: Geographical coordinates (numeric, where available)

- `gender`, `race`: Victim’s gender and race (where available, logical/character)

**Notes:**
- Data completeness varies; some fields may be missing or require cleaning.
- Some files (e.g., `df1893b`, `df1894b`) are alternative tabulations with similar variables.

---

### 2. Fatal Police Interactions (Washington Post)

These files record all known fatal police shootings in the U.S. for 2023 and 2024, including detailed incident and demographic information.

- `fatal` - full database is pulled in from the Washington Post

- `df2023` - subset of fatal interactions in 2023

- `df2024` - subset of fatal interactions in 2024

**Key Variables:**

- `id`: Unique incident identifier (integer)

- `date`, `year`: Date and year of incident (Date/numeric)

- `state.name`, `state.abb`: State name and abbreviation (factor)

- `city`, `county`: Location details (factor)

- `latitude`, `longitude`: Geographical coordinates (numeric)

- `name`: Name of the victim (character)

- `age`, `gender`, `race`: Demographic information (numeric/factor)

- `armed_with`: Type of weapon possessed, if any (factor)

- `threat_type`, `flee_status`: Circumstances of the incident (factor)

- `was_mental_illness_related`: Whether mental illness was a factor (logical)

- `body_camera`: Whether a body camera was used (logical)

- `agency_ids`: Law enforcement agency identifiers (character)

---

## Data Sources

- **Lynching Data:**  
  Digitized and transcribed from Ida B. Wells’ original pamphlets and reports (e.g., *A Red Record*).

- **Fatal Police Shootings:**  
  Downloaded from the [Washington Post Fatal Force Database](https://www.washingtonpost.com/graphics/investigations/police-shootings-database/).

---

## References

- Wells, I. B. (1895). *A Red Record: Tabulated Statistics and Alleged Causes of Lynchings in the United States, 1892–1894*.

- The Washington Post. (2023–2024). *Fatal Force Database*. [https://www.washingtonpost.com/graphics/investigations/police-shootings-database/](https://www.washingtonpost.com/graphics/investigations/police-shootings-database/)

