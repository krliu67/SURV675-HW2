# SURV675-HW2
---

## Project Overview

This project analyzes data from the 2017 European Values Study (EVS) dataset (ZA7500), examining attitudes towards gender roles (`v72`) and immigration (`v80`) across multiple European countries. The analysis includes descriptive statistics, visualizations exploring changes in attitudes by age, and regression models considering demographic factors such as age, sex, and education.

---

## Data

The dataset used is EVS wave 5 (2017), accessible from the [GESIS website](https://search.gesis.org/research_data/ZA7500).

**Variables used:**
- Dependent variables: `v72` (attitudes toward gender roles), `v80` (attitudes toward immigration)
- Independent variables: `age`, `age squared (age_sq)`, `sex`, `education`, `country`

The cleaned dataset (`evs_clean.RData`) is prepared from the original data by selecting relevant variables and filtering out missing values.

---

## Project Structure

```
EVS_Project/
│
├── data/
│   ├── ZA7500_v5-0-0.dta
│   └── evs_clean.RData
│
├── country_report.Rmd      # Parameterized R Markdown for batch reporting
├── generate_reports.R      # Script to generate batch reports
├── reports/                # Output folder for generated HTML reports
└── README.md               # This file
```

---

## Instructions

### Generating Reports

To generate batch reports for each country, run the following script:

```R
source("generate_reports.R")
```

This script loops over each country and produces individual HTML reports stored in the `reports/` folder. Please note that each country uses its abbreviated name.

---

## Dependencies

- R packages: `haven`, `dplyr`, `ggplot2`, `texreg`, `rmarkdown`

Install required packages with:

```R
install.packages(c("haven", "dplyr", "ggplot2", "texreg", "rmarkdown"))
```

---

## Output

The project outputs:
- Descriptive summaries for continuous and categorical variables
- Visualizations for attitudes toward gender roles and immigration across age groups
- Regression models with dynamic interpretations per country

---
