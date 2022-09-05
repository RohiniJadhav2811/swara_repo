-- Write a query that uses a subquery to obtain all orders for the customer named Cisneros.
--  Assume you do not know his customer number (cnum).
select orders.onum,orders.cnum FROM orders 
where 
orders.cnum=(select customers.cnum from customers where cname='cisneros');


--Write a query that produces the names and 
--ratings of all customers who have above- average orders.
select cname,rating from customers 
where rating >(select avg(rating) from customers) ;


-- Write a query that selects the total amount in orders for each salesperson 
--for whom this total is greater than the amount of the largest order in the table.
select snum,sum(amt) from orders group by snum 
HAVING  sum(amt)>
(select max(amt) from orders );



-- Write a query that selects all customers 
--whose ratings are equal to or greater than ANY of Serres.
SELECT * from customers where
 rating >=ANY (select rating FROM customers where snum IN 
 (select snum from salespeople 
WHERE sname='Serres'));



-- Write a query using ANY or ALL that will find all salespeople 
--who have no customers located in their city.
SELECT * FROM salespeople WHERE city!=ANY (SELECT city FROM customers);


-- Write a query that selects all orders for 
--amounts greater than any for the customers in London.
SELECT * FROM orders WHERE amt > ANY (SELECT amt
FROM orders o, customers c WHERE  c.cnum=o.cnum
AND c.city='London');


-- Extract all the orders of Motika.
select * from orders where snum=(select snum FROM salespeople where sname='Motika');


-- Find all the order attribute to salespeople servicing customers in London.
SELECT * FROM orders WHERE orders.snum in 
(select salespeople.snum FROM salespeople WHERE city='London');



-- Find names and numbers of all salesperson who have more than one customer. 
SELECT snum,sname FROM salespeople s
WHERE 1 < (SELECT COUNT(*) FROM customers WHERE snum=s.snum);


--Find salespeople number,name and city who have multiple customers.
SELECT snum,sname FROM salespeople s
WHERE 1 < (SELECT COUNT(*) FROM customers WHERE snum=s.snum);


-- Select customers who have a greater rating than any other customer in Rome.
Select * from customers where 
rating > ANY (select rating from customers where city='Rome');



-- Select all orders that had amounts that were 
--greater that at least one of the orders from ‘1990-10-04’ .
select * from orders where amt >(
    select min(amt) from orders where odate='1990-10-04');



-- Find all orders with amounts smaller than any amount for a customer in San Jose 
SELECT * from orders WHERE amt <
ANY(SELECT amt FROM orders,customers where customers.city='San Jose'
 AND orders.cnum=customers.cnum );

 

--Select those customers whose rating are higher than 
--every customer in Paris.
SELECT * FROM customers WHERE rating >ALL(
     SELECT rating FROM customers WHERE city='Paris');

