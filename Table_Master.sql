SELECT o.date AS order_date, pc.categoryname AS category_name, p.prodname AS product_name, p.price AS product_price, o.quantity AS order_qty, (p.price * o.quantity) AS total_sales, c.customeremail AS cust_email, c.customercity AS cust_city
FROM orders o
JOIN products p ON o.prodnumber = p.prodnumber
JOIN productcategory pc ON p.category = pc.categoryid
JOIN customers c ON o.customerid = c.customerid
ORDER BY o.date ASC;