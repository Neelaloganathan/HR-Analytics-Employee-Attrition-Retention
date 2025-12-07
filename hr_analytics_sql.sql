create database hr_analystics_db;

use hr_analystics_db;

select * from hr_analystics;

select count(*) as TotalEmployees
from hr_analystics;

select Gender, count(*) as Count
from hr_analystics
group by Gender;

select JobRole, avg(MonthlyIncome) as AvgIncome
from hr_analystics
group by JobRole
order by AvgIncome desc;

select Department,
       count(*) as TotalEmployees,
       sum(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount
from hr_analystics
group by Department
order by AttritionCount desc;

select JobLevel, avg(YearsAtCompany) as AvgYears
from hr_analystics
group by JobLevel
order by JobLevel;

SELECT JobRole, COUNT(*) AS AttritionCount
FROM hr_analytics
WHERE Attrition = 'Yes'
GROUP BY JobRole
ORDER BY AttritionCount desc;

SELECT EmployeeID, JobRole, MonthlyIncome
FROM hr_analytics
ORDER BY MonthlyIncome DESC
LIMIT 10;

SELECT 
    CASE 
        WHEN MonthlyIncome < 3000 THEN 'Low Income'
        WHEN MonthlyIncome BETWEEN 3000 AND 6000 THEN 'Medium Income'
        ELSE 'High Income'
    END AS IncomeCategory,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionEmployees
FROM hr_analytics
GROUP BY IncomeCategory
ORDER BY TotalEmployees DESC;







