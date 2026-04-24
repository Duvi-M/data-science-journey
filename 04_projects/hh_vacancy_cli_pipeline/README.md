# HeadHunter Vacancy Data Pipeline with UNIX Tools

This project implements a command-line data pipeline for collecting and preprocessing job vacancy data from the HeadHunter API.

## Pipeline

1. Collect vacancy data from the HeadHunter API using `curl`
2. Format and process JSON data with `jq`
3. Convert JSON data into CSV
4. Sort vacancies by creation date and ID
5. Clean job position names
6. Compute descriptive statistics
7. Partition the dataset by date
8. Concatenate partitions back into a single dataset

## Tools

- UNIX Shell
- curl
- jq
- sort
- uniq
- sed
- cat

## Skills Demonstrated

- API data collection
- JSON processing
- CSV preprocessing
- Shell scripting
- Basic data engineering pipeline
- Data cleaning
- Descriptive statistics