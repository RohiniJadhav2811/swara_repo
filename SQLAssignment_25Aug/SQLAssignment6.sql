

-- Write a query that counts the number of salespeople registering
-- orders for each day.
--  (If asalesperson has more than one order on a given day,
--   he or she should be counted only once.).
select odate,COUNT(distinct snum) as total FROM orders GROUP BY odate;



-- Write a query on the Customers table that will 
-- find the highest rating in each city. Put the output in
-- this form:
-- For the city (city), the highest rating is : (rating).
select city,max(rating) as 'The highest rating is' from customers GROUP BY city;



-- Write a query that totals the orders for each day 
--and places the results in descending order.
SELECT count(onum),odate AS 'Total orders' FROM orders 
GROUP BY odate 
ORDER BY count(onum) DESC;


-- Write a query that selects the total amount in orders 
-- for each salesperson for whom this total is
-- greater than the amount of the largest order in the table.

SELECT snum,sum(amt) FROM orders GROUP BY snum HAVING sum(amt)>(SELECT max(amt) FROM orders);  



--Write a query that selects the highest rating in each city.
select city,max(rating) AS 'highest rating' FROM customers GROUP BY city;


--Largest order taken by each salesperson with order value more than Rs.3000. 7.
 --Select each customer smallest order.
SELECT snum,max(amt) FROM orders group by snum having (select max(amt))>3000.7;
SELECT snum,min(amt) FROM orders group by snum;


