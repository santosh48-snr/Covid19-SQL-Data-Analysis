COVID-19 Data Analysis using SQL

Project Overview

This project focuses on analyzing COVID-19 daily data using SQL. The main objective is to clean raw data and extract meaningful insights such as total cases, death rates, recovery rates, and trends over time.

The dataset contains daily reports of COVID-19 cases, including testing, hospitalization, and recovery information.

Objectives
The goals of this project are:
- To clean and transform raw COVID-19 data
- To calculate key performance indicators such as total cases, deaths, and tests
- To analyze trends in daily cases and deaths
- To identify peak days with the highest number of cases
- To calculate recovery and death rates
- To perform hospital and ICU usage analysis
- To compute a 7-day moving average for better trend understanding

Tools and Technologies
- SQL (MySQL)
- Window Functions
- Data Cleaning Techniques

Dataset Description

The dataset includes the following information:

- Date (in YYYYMMDD format)
- State names
- Total positive cases
- Total deaths
- Total test results
- Number of recovered patients
- Hospitalized, ICU, and ventilator data
- Daily increase in cases, deaths, and tests

Data Cleaning

The raw dataset contained null values and unformatted dates. The following steps were performed:

- Converted date into proper SQL date format
- Replaced null values with 0 using IFNULL
- Created a clean table named covid_clean for analysis

Analysis Performed

Key Metrics

Calculated overall totals such as:
- Total cases
- Total deaths
- Total tests

Trend Analysis
Analyzed how cases and deaths changed over time using daily data.

Peak Days
Identified the top 10 days with the highest number of reported cases.

Recovery Rate
Calculated the percentage of recovered patients compared to total cases.

Death Rate
Calculated the percentage of deaths compared to total cases.

Hospital Analysis
Analyzed hospitalization data including ICU and ventilator usage.

Moving Average
Computed a 7-day rolling average of daily cases to smooth out fluctuations.

Key Insights
The analysis shows that COVID-19 cases had noticeable spikes during certain periods. Recovery rates improved over time, while death rates remained relatively lower compared to total cases. Hospital and ICU usage increased during peak case periods. The 7-day moving average helped in understanding the overall trend more clearly.

How to Run

1. Import the dataset into a MySQL database
2. Run the SQL script provided in the project
3. Execute the queries to view results and analysis

Conclusion
This project demonstrates how SQL can be used for real-world data analysis. It highlights the importance of data cleaning, aggregation, and trend analysis in understanding large datasets.

Author
Santosh
