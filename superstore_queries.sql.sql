USE superstore_db;
SELECT * FROM `samplesuperstore working version 1`;

USE superstore_db;

USE superstore_db;

SELECT 
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(AVG(Discount) * 100, 2) AS Avg_Discount_Percent
FROM `samplesuperstore working version 1`;


SELECT 
     Category,
     `Sub-Category`,
     ROUND(SUM(Sales), 2) AS Total_Sales,
     ROUND(SUM(Profit), 2) AS Total_Profit
 FROM `samplesuperstore working version 1`
 GROUP BY Category, `Sub-Category`
 ORDER BY Total_Profit DESC
;


SELECT 
    `Sub-Category`, 
    ROUND(SUM(Sales), 2) AS Total_Sales, 
    ROUND(SUM(Profit), 2) AS Total_Profit 
FROM `samplesuperstore working version 1` 
GROUP BY `Sub-Category` 
HAVING SUM(Profit) < 0 
ORDER BY Total_Profit ASC;



USE superstore_db;

-- 1. تحليل الأداء حسب المناطق
SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM `samplesuperstore working version 1`
GROUP BY Region
ORDER BY Total_Profit DESC;

-- 2. تحليل الأداء حسب شرائح العملاء
SELECT 
    Segment,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM `samplesuperstore working version 1`
GROUP BY Segment
ORDER BY Total_Profit DESC;

-- 3. تحليل أثر نسبة الخصم على الأرباح حسب الفئات الفرعية
SELECT 
    `Sub-Category`,
    ROUND(AVG(Discount) * 100, 2) AS Avg_Discount_Percent,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM `samplesuperstore working version 1`
GROUP BY `Sub-Category`
ORDER BY Avg_Discount_Percent DESC;
 
 

