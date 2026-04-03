COVID-19 Data Analysis using SQL (MySQL Project)

Project Overview

This project focuses on analyzing COVID-19 daily data using SQL. The objective is to clean raw data and extract meaningful insights such as total cases, death rates, recovery rates, and trends over time.

The dataset contains daily COVID-19 reports including testing, hospitalization, and recovery information.

Objectives

- Clean and transform raw COVID-19 data
- Calculate key performance indicators (KPIs)
- Analyze trends in daily cases and deaths
- Identify peak days with the highest number of cases
- Calculate recovery and death rates
- Perform hospital and ICU usage analysis
- Compute a 7-day moving average for trend analysis

Tools and Technologies

- SQL (MySQL)
- Window Functions
- Data Cleaning Techniques

Dataset Description

The dataset includes:

- Date (YYYYMMDD format)
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
- Created a clean table named "covid_clean" for analysis

Analysis Performed

Key Metrics

- Total cases
- Total deaths
- Total tests

Trend Analysis

Analyzed how daily cases and deaths changed over time.

Peak Days

Identified the top 10 days with the highest reported cases.

Recovery Rate

Calculated the percentage of recovered patients compared to total cases.

Death Rate

Calculated the percentage of deaths compared to total cases.

Hospital Analysis

Analyzed hospitalization data including ICU and ventilator usage.

Moving Average

Computed a 7-day rolling average of daily cases to smooth fluctuations.

Project Highlights

- Used real-world COVID-19 dataset
- Applied data cleaning techniques
- Used SQL window functions for advanced analysis
- Generated meaningful insights from raw data

Key Insights

COVID-19 cases showed noticeable spikes during certain periods. Recovery rates improved over time, while death rates remained relatively lower compared to total cases. Hospital and ICU usage increased during peak periods. The 7-day moving average helped in understanding overall trends more clearly.

How to Run

1. Import the dataset into a MySQL database
2. Run the SQL script provided in the project
3. Execute queries to view results and analysis

Conclusion

This project demonstrates how SQL can be used for real-world data analysis. It highlights the importance of data cleaning, aggregation, and trend analysis when working with large datasets.

Author

Santosh BK
