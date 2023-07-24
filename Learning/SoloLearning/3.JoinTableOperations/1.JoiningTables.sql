/*
Joining Tables:
combine data from two or more tables.
a "joining tables" creates a temporary table showing the data from the joined tables.
To join the two tables, specify them as a comma separated list in the FROM clause.

Each table contains "ID"
*/
select customer.id, customers.name, orders.name, orders.amount from customers, orders 
where customers.id = orders.customers_id
order by customers.id;

