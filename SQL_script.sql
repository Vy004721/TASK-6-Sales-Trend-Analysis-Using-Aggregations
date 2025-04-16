use task6;
SELECT 
    YEAR(o.orderDate) AS year,
    MONTH(o.orderDate) AS month,
    SUM(p.amount) AS monthly_revenue,
    COUNT(DISTINCT o.orderNumber) AS order_volume
FROM 
    orders o
JOIN 
    payments p ON o.customerNumber = p.customerNumber
WHERE 
    o.orderDate >= '2004-01-01' AND o.orderDate < '2005-01-01'
GROUP BY 
    YEAR(o.orderDate), MONTH(o.orderDate)
ORDER BY 
    year, month;
