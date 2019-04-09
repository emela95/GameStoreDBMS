--show all list of customers in database
select * from customer;

--show list of employees and the customers they handle
select e.EmpID, e.Lname, e.Fname, e.customerID, c.Fname from employee e INNER JOIN customer c ON e.customerID = c.customerID;

--show wishlist of customers

select * from wishlist;

--list the gamestore names
select location from gamestore;


--get the inventory of gamestores
select g.name, i.Quantity from gamestore g INNER JOIN inventory i ON g.gamestoreID = i.Has_GameStoreID;

