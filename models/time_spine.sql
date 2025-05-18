{{ config(materialized='table') }}

WITH RECURSIVE

-- Generate a series of dates from 2018 to 2025 (adjust range as needed)
dates AS (
    SELECT DATEADD(day, -1, DATE '2018-01-01') as date
    UNION ALL
    SELECT DATEADD(day, 1, date)
    FROM dates
    WHERE date < '2025-12-31'
)

SELECT 
    date as date_day,
    EXTRACT(year FROM date) as year,
    EXTRACT(month FROM date) as month,
    EXTRACT(day FROM date) as day_of_month,
    DAYNAME(date) as day_name,
    MONTHNAME(date) as month_name,
    DATE_TRUNC('week', date) as date_week,
    DATE_TRUNC('month', date) as date_month,
    DATE_TRUNC('quarter', date) as date_quarter,
    DATE_TRUNC('year', date) as date_year
FROM dates
ORDER BY 1
