library(rmarkdown)
library(dplyr)

# Load the cleaned EVS dataset (assuming evs_clean is saved)
load("data/evs_clean.Rdata") # or re-run data cleaning here directly

# Get unique country names
countries <- unique(evs_clean$country)

# Loop through each country to generate reports
for (cnt in countries) {
  rmarkdown::render(input = "country_report.Rmd", # your parameterized Rmd file
                    output_file = paste0("batch/EVS_report_", cnt, ".html"),
                    params = list(country = cnt))
}
