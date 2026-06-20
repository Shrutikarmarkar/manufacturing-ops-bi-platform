with date_spine as (
    select 
        row_number() over (order by (select null)) - 1 as n
    from master.dbo.spt_values
),

date_spine_dates as (
    select 
        dateadd(day, n, cast('2020-01-01' as date)) as date_day
    from date_spine
    where n <= datediff(day, '2020-01-01', '2027-01-01')
)

select
    date_day as date,
    datepart(year, date_day) as year,
    datepart(quarter, date_day) as quarter,
    datepart(month, date_day) as month,
    datename(month, date_day) as month_name,
    format(date_day, 'yyyy-MM') as year_month,
    datepart(week, date_day) as week,
    datepart(weekday, date_day) as day_of_week,
    datename(weekday, date_day) as day_name

from date_spine_dates