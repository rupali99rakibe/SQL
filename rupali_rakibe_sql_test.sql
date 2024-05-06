-- Last name starts with MY or contain SE 

SELECT last_name 
FROM sql_hr.employees 
WHERE last_name LIKE 'My%' OR last_name LIKE '%SE%';

-- Last name contains b followed by R or U 

SELECT last_name FROM employees
WHERE last_name REGEXP 'b[RU]b';

SELECT last_name 
FROM sql_store.customers
WHERE last_name REGEXP 'b[RU]b';


SELECT customer_id,order_date,shipper_id FROM orders 
WHERE shipper_id Is NULL;

-- Start order time by order_id = 2 descending orders as per their total price

SELECT o.order_id, o.customer_id, o.order_date, o.shipper_id, 
       SUM(oi.quantity * oi.unit_price) AS total_price
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_id = 2
GROUP BY o.order_id, o.customer_id, o.order_date, o.shipper_id;

-- get the top 3 loyal customers
 SELECT * FROM customers
 order by points desc 
 LIMIT 3;

-- JOIN ORDER_ITEMS TABLE WITH PRODUCT

SELECT * FROM order_items o
JOIN products p
ON o.product_id = o.product_id;

--  In sql_invoicing join 3 tables payment, client, payment_methods, and show name of the client and payment method

SELECT payments.amount,c.name,payment_methods.payment_method_id
FROM clients c
JOIN payments ON  clients.client_id = payments.client_id
JOIN payment_methods ON payment_methods.payment_method_id = payments.payment_methods.id;

-- Join product with order_items table and show product_id, product name, and quantity

SELECT O.product_id,products.name,O.quantity FROM order_items O
JOIN products ON O.product_id = products.product_id; 


--  Get all rows with these columns – order_date, order_id, first_name, shipper, status
SELECT order_date,order_id, customers.first_name, shipped_date, shipper_id, status FROM orders O
JOIN customers ON customers.customer_id = O.customer_id;

--   Write a query from sql_invoicing to get date, client name, amount, payment method
SELECT p.date,clients.name,p.amount,p.payment_method FROM payments p
JOIN clients ON clients.client_id = p.client_id;

-- Get customer_id, first_name, points, type 0-1000 bronze, 2000-3000 silver and 3000> gold


SELECT customer_id, first_name, points,
    CASE
        WHEN points > 0 AND points < 1000 THEN 'bronze'
        WHEN points >= 1000 AND points < 2000 THEN 'silver'
        WHEN points >= 2000 THEN 'gold'
    END AS medal
FROM customers;

-- Last name ends with EY or ON 


SELECT last_name FROM customers 
WHERE last_name LIKE '%EY' OR last_name LIKE '%ON';

-- Get the customers whose phone numbers ends with 9
 SELECT PHONE FROM customers
WHERE phone LIKE '%9';

-- From order_items tables, get the items for the order number 6 where the total price >30 
SELECT order_id,unit_price,quantity,(unit_price * quantity) AS total_price FROM order_items
 WHERE order_id = 6 and (unit_price * quantity) > 30;
 
-- Get the order placed in 2019

SELECT order_date FROM orders
WHERE YEAR(order_date) = '2019-01-01'; 






