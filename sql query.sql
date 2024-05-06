SHOW DATABASES;
USE sql_inventory;
-- USE sql_invoicing
SELECT * FROM customers;
SELECT * FROM sql_store.customers;
SELECT customer_id,first_name,last_name,points FROM customers
WHERE customer_id = 1;
SELECT * FROM customers
WHERE customer_id = 1;


-- MATHEMATICAL OPERATIONS
SELECT customer_id,first_name,last_name,points,points+10 AS updated FROM customers;
SELECT customer_id,first_name,last_name,points,points+10*100 AS updated FROM customers;
SELECT customer_id,first_name,last_name,points,points*
10+100 AS updated FROM customers;
SELECT customer_id,first_name,last_name,points,points*(
10+100) AS updated FROM customers;

-- collect unique values
SELECT state FROM customers;
SELECT DISTINCT state FROM customers;


-- operators support by sql
-- AIRTHMATIC OPERATOR
-- LOGICAL OPERATOR 
-- COMPARISON OPERATOR
-- BETWEEN
-- IN
-- LIKE

SELECT * FROM customers
WHERE points < 3000;
SELECT * FROM customers
WHERE points > 3000;
SELECT * FROM customers
-- WHERE points <> 205;
-- WHERE state = 'VA'
WHERE state <> "FL";
SELECT * FROM customers
WHERE birth_date > "1991-03-07";

SELECT * FROM customers 
-- WHERE birth_date <= "1990-01-01" AND points > 3000;
-- WHERE birth_date <= "1990-01-01" OR points > 3000;
-- WHERE NOT(birth_date <= "1990-01-01" OR points > 3000);
-- WHERE birth_date <= '1990-01-01' OR points > 1000 AND state = 'VA'
-- WHERE (birth_date <= '1990-01-01' OR points > 1000) AND state = 'VA'
-- WHERE (birth_date <= '1990-01-01' OR points > 1000)
-- WHERE NOT(birth_date <= '1990-01-01' OR points > 1000)
WHERE (birth_date >= '1990-01-01' AND points < 1000);
SELECT * FROM customers
-- WHERE state ="VA" OR state = "GA" OR state= "CA";

-- IN OPERATOR
-- WHERE state IN ("VA" , "CA" ,"GA")
WHERE state NOT IN ("VA" , "CA" ,"GA");

SELECT * FROM customers
-- WHERE points > 1000 AND points < 3000;

WHERE points BETWEEN 1000 AND 3000;


-- LIKE 

-- %
-- _
SELECT * FROM customers
-- WHERE last_name LIKE "%b";
-- %b - startswith
-- b% - endswith
-- %b% - anywhere
-- WHERE last_name LIKE "%brush%"
-- underscore(-) use for represent character
-- WHERE last_name LIKE "_____y"
 WHERE last_name LIKE "B____Y";
 SELECT * FROM customers
 WHERE phone LIKE "%9";
 
 -- REGEXP
-- ^ - STARTSWITH
-- $ - ENDSWITH
-- SELECT * FROM customers
-- WHERE last_name REGEXP "^field"
SELECT * FROM customers
WHERE last_name REGEXP "field$";

-- for multiple conditions
 
SELECT * FROM customers
WHERE last_name REGEXP "field|mac";
-- SELECT * FROM customers
-- WHERE last_name REGEXP "field|mac ey$|gh$";
SELECT * FROM customers
WHERE last_name REGEXP 'field|mac|ey|gh';

SELECT * FROM customers
WHERE last_name REGEXP 'field|mac|rose';

-- SELECT * FROM customers
-- WHERE last_name REGEXP IN ('field|mac|rose');


SELECT * FROM  customers
WHERE last_name REGEXP "[eb]y";
SELECT * FROM customers
WHERE last_name REGEXP "[egb]y";

SELECT * FROM customers
WHERE last_name REGEXP "b[egy]";

SELECT * FROM customers
WHERE last_name REGEXP "[a-h]y";

SELECT * FROM customers
WHERE last_name REGEXP "n[a-h]";


SELECT * FROM customers
WHERE phone IS NULL;

SELECT * FROM customers
WHERE phone IS NOT NULL;


-- ORDER BY CLAUSE
SELECT * FROM customers
ORDER BY first_name DESC;


SELECT * FROM customers
ORDER BY first_name;

SELECT * FROM customers
ORDER BY first_name ,customer_id;

 -- ROW OPERATIONS 
SELECT * FROM customers
LIMIT 3;

SELECT * FROM customers
LIMIT 3,6;

SELECT * FROM customers
LIMIT 6,3;
SELECT * FROM customers
LIMIT 6,2;

-- GET top 3 loyal customers

SELECT * FROM customers
ORDER BY points DESC
LIMIT 3