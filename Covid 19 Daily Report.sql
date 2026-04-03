-- Use existing database
USE school_db;

-- Clean view (no need to create new raw table)
DROP TABLE IF EXISTS covid_clean;

CREATE TABLE covid_clean AS
SELECT 
    STR_TO_DATE(date, '%Y%m%d') AS report_date,
    states,
    IFNULL(positive, 0) AS total_cases,
    IFNULL(death, 0) AS total_deaths,
    IFNULL(totalTestResults, 0) AS total_tests,
    IFNULL(recovered, 0) AS recovered,
    IFNULL(hospitalizedCurrently, 0) AS hospitalized,
    IFNULL(inIcuCurrently, 0) AS icu,
    IFNULL(onVentilatorCurrently, 0) AS ventilator,
    IFNULL(positiveIncrease, 0) AS daily_cases,
    IFNULL(deathIncrease, 0) AS daily_deaths,
    IFNULL(totalTestResultsIncrease, 0) AS daily_tests
FROM us_covid19_daily;

-- Preview data
SELECT * FROM covid_clean LIMIT 10;

-- KPI
SELECT MAX(total_cases) AS total_cases FROM covid_clean;
SELECT MAX(total_deaths) AS total_deaths FROM covid_clean;
SELECT MAX(total_tests) AS total_tests FROM covid_clean;

-- Trends
SELECT report_date, daily_cases
FROM covid_clean
ORDER BY report_date;

SELECT report_date, daily_deaths
FROM covid_clean
ORDER BY report_date;

-- Top peak days
SELECT report_date, daily_cases
FROM covid_clean
ORDER BY daily_cases DESC
LIMIT 10;

-- Recovery rate
SELECT 
    report_date,
    recovered,
    total_cases,
    ROUND((recovered / total_cases) * 100, 2) AS recovery_rate
FROM covid_clean
WHERE total_cases > 0;

-- Death rate
SELECT 
    report_date,
    total_deaths,
    total_cases,
    ROUND((total_deaths / total_cases) * 100, 2) AS death_rate
FROM covid_clean
WHERE total_cases > 0;

-- Hospital analysis
SELECT 
    report_date,
    hospitalized,
    icu,
    ventilator
FROM covid_clean
ORDER BY report_date;

-- 7-day average
SELECT 
    report_date,
    daily_cases,
    ROUND(
        AVG(daily_cases) OVER (
            ORDER BY report_date 
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ), 2
    ) AS avg_7_days
FROM covid_clean;