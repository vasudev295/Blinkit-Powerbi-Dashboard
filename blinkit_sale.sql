select * from blinkit_grocery_data;

--kpi question  
1. TOTAL SALES
SELECT CAST(SUM(Total_Sales) / 1000000.0 AS DECIMAL(10,2)) AS Total_Sales_Million
FROM blinkit_grocery_data;

2. AVERAGE SALES
SELECT CAST(AVG(Total_Sales) AS INT) AS Avg_Sales
FROM blinkit_grocery_data;

3. NO OF ITEMS
SELECT COUNT(*) AS No_of_Orders
FROM blinkit_grocery_data;

4. AVG RATING
SELECT CAST(AVG(Rating) AS DECIMAL(10,1)) AS Avg_Rating
FROM blinkit_grocery_data;

B. Total Sales by Fat Content:
SELECT Item_Fat_Content, CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM blinkit_grocery_data
GROUP BY Item_Fat_Content

C. Total Sales by Item Type
SELECT Item_Type, CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM blinkit_grocery_data
GROUP BY Item_Type
ORDER BY Total_Sales DESC

--sql case study query 

1. Which are the top 10 items based on total sales?

SELECT item_type, SUM(total_sales) AS total_sales
FROM blinkit_grocery_data
GROUP BY item_type
ORDER BY total_sales DESC
LIMIT 10;

2.Most Profitable Item Type by Outlet
SELECT outlet_identifier, item_type, SUM(total_sales) AS total_sales
FROM blinkit_grocery_data
GROUP BY outlet_identifier, item_type
ORDER BY outlet_identifier, total_sales DESC;



3. Impact of Item Fat Content on Sales

SELECT item_fat_content, SUM(total_sales) AS total_sales
FROM blinkit_grocery_data
GROUP BY item_fat_content
ORDER BY total_sales DESC;







