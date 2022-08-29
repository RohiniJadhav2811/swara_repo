

--Create an index that will enable a user to pull orders 
--for ‘1990-10-03’ out of the Orders table quickly.
CREATE INDEX INDEX_DATE ON orders(odate);

--If the Orders table has already been created,
-- how can you force the onum field to be unique
--(assume all current values are unique)?
Alter table orders add CONSTRAINT unique_onum unique(onum);

--Create an index that would permit salesperson to retrieve his orders.
CREATE INDEX orders_snum ON orders(snum);

--Let us assume that each salesperson is to have only one customer of a given rating,
-- and that this is currently the case. Create an index that enforces it.
CREATE INDEX cust_rate ON customers(rating,snum);

--Create an index to speed up searching order on a given date by given customer
CREATE INDEX ODATE_new ON orders(odate,cnum);


