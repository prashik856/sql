/*
The in operator:
The in operator is used when we want to comprate a column with more than one value.
E.g. select all customers from new york, los angeles and chicago.

With ors, it looks this this:
*/
select * from customers where city = 'New York' or city = 'Los Angeles' or city = 'Chicago';



/*
We can do the same using IN as follows:
We need to use parenthesis here!
*/
select * from customers where city in ('New York', 'Los Angeles', 'Chicago');


/*
The no in operator:
The no in operator allows us to exclude a list of specific values from the result set.

If we add the not keyword before IN in our previous query, customers living in those cities will be excluded.
*/
select * from customers where city not in ('New York', 'Los Angeles', 'Chicago');


