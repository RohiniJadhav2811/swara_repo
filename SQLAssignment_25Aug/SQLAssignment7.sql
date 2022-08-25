-- Write a query that lists each order number followed by the name of the customer
-- who made the order.
SELECT orders.onum,customers.cname FROM customers 
INNER JOIN orders ON 
orders.cnum=customers.cnum;




--Write a query that gives the names of both the salesperson and the customer for each order along
--with the order number.
SELECT salespeople.sname,customers.cname,orders.onum
FROM salespeople,customers,orders WHERE 
orders.cnum=customers.cnum 
AND orders.snum=salespeople.snum;


--Write a query that produces all customers serviced by salespeople with a commission above 12%.
--Output the customer’s name, the salesperson’s name, and the salesperson’s rate of commission.SELECT customers.cname,salespeople.sname,salespeople.comm 
SELECT customers.cname,salespeople.sname,salespeople.comm 
FROM customers INNER JOIN salespeople 
ON salespeople.snum=customers.snum WHERE salespeople.comm >0.12;



--Write a query that calculates the amount of the 
--salesperson’s commission on each order by a customer with a rating above 100.
SELECT salespeople.snum, salespeople.comm,customers.rating 
FROM salespeople INNER JOIN customers ON 
   customers.snum=salespeople.snum WHERE customers.rating>100;



--Write a query that produces all pairs of salespeople who are living in the same city.
--Exclude combinations of salespeople with themselves as well as duplicate rows with the order reversed
select s1.sname,s1.city from salespeople s1,salespeople s2  
WHERE 
s1.city=s2.city 
AND  s1.sname!=s2.sname;

 