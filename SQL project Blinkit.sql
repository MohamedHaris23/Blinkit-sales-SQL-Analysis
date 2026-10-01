select * from blinkit_sales;

select 
sum(sales) as Total_sales,
avg(sales) as Average_sales,
count(itemidentifier) as Number_of_items,
avg(rating) as Average_rating
from blinkit_sales;


SELECT 
    ItemFatContent,
    ItemType,
    SUM(Sales) AS Total_Sales
FROM blinkit_sales
GROUP BY ItemFatContent, ItemType
ORDER BY Total_Sales DESC;

-- Total sales by outlet establishment year
SELECT 
    OutletEstablishmentYear,
    SUM(Sales) AS Total_Sales,
    AVG(Sales) AS Average_Sales
FROM blinkit_sales
GROUP BY OutletEstablishmentYear
ORDER BY OutletEstablishmentYear;