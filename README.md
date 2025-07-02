# red-record

## Overview

This repository provides historical and contemporary datasets for the study of racialized state violence in the United States, focusing on:

-   **Lynchings (1892–1894):** Tabulated by Ida B. Wells-Barnett in "A RED RECORD. Tabulated Statistics and Alleged Causes of Lynchings in the United States, 1892-1893-1894." Many records are incomplete or missing, reflecting the limitations of historical documentation.

-   **Fatal Police Shootings (2023–2024):** As recorded in the Washington Post Fatal Force Database, which documents all known fatal police interactions in the U.S. since 2015.

These datasets are intended for geospatial, statistical, and comparative research, with a particular focus on analyses centering Black men and women in the United States.

------------------------------------------------------------------------

## Datasets

### 1. Lynching Data (Ida B. Wells, 1892–1894)

Digitized records from Ida B. Wells’ original pamphlets and reports, including victim information, location, and alleged accusations.

-   `df1892`

-   `df1893`

-   `df1893b`

-   `df1894`

-   `df1894b`

**Key Variables:**

-   `Accusation`: Alleged reason for lynching (character)

-   `State`: State abbreviation (e.g., "Ala." for Alabama) (character)

-   `Name`: Name(s) of the victim(s) (character)

-   `date` / `year`: Date or year of incident (Date/numeric)

-   `latitude`, `longitude`: Geographical coordinates (numeric, where available)

-   `gender`, `race`: Victim’s gender and race (where available, logical/character)

**Notes:** Data completeness and structure vary by file. Some fields may be missing or require cleaning. Alternative tabulations (**`df1893b`**, **`df1894b`**) may have similar but not identical variables.

------------------------------------------------------------------------

### 2. Fatal Police Interactions (Washington Post)

These files record all known fatal police shootings in the U.S. (data is subset for 2023 and 2024). Data includes detailed incident and demographic information.

**Files:**

-   `fatal` - full database pulled from the Washington Post

-   `df2023` - subset of fatal interactions in 2023

-   `df2024` - subset of fatal interactions in 2024

**Key Variables:**

-   `id`: Unique incident identifier (integer)

-   `date`, `year`: Date and year of incident (Date/numeric)

-   `state.name`, `state.abb`: State name and abbreviation (factor)

-   `city`, `county`: Location details (factor)

-   `latitude`, `longitude`: Geographical coordinates (numeric)

-   `name`: Name of the victim (character)

-   `age`, `gender`, `race`: Demographic information (numeric/factor)

-   `armed_with`: Type of weapon possessed, if any (factor)

-   `threat_type`, `flee_status`: Circumstances of the incident (factor)

-   `was_mental_illness_related`: Whether mental illness was a factor (logical)

-   `body_camera`: Whether a body camera was used (logical)

-   `agency_ids`: Law enforcement agency identifiers (character)

A new **`race`** variable has been created from a re-coded v2 race variable update. Categories include:

-   **Black**: Individuals whose only reported race is Black.

-   **Black Other**: Individuals with multiracial responses that include Black (e.g., "Black;Hispanic", "White;Black").

-   **Non-Black**: All others.

------------------------------------------------------------------------

## Data Sources

-   **Lynching Data:**\
    Digitized and transcribed from Ida B. Wells’ original pamphlets and reports (e.g., *A Red Record*).

-   **Fatal Police Shootings:**\
    Downloaded from the [Washington Post Fatal Force Database](https://www.washingtonpost.com/graphics/investigations/police-shootings-database/).

------------------------------------------------------------------------

## References

-   Wells, I. B. (1895). *A Red Record: Tabulated Statistics and Alleged Causes of Lynchings in the United States, 1892–1894*.

-   The Washington Post. (2023–2024). *Fatal Force Database*. <https://www.washingtonpost.com/graphics/investigations/police-shootings-database/>
