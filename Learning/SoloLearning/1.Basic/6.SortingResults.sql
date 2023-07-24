/*
Fully Qualified Names
*/

select city from customers;
select customers.city from customers;
/*
Both are equivalent.
The second query above is called the fully qualified name of that column.
This kind of syntax is useful when working with multiple tables that may share the same column names.
*/

select * from customers order by firstName;
/*
Order by is used with select to sort the returned data.
The query above will sort the data retrieved by the firstname column (Ascending).
By default order by shows result in ascending order.
*/


select * from customers order by lastname, age;
/*
Sorting multiple columns:
order by can sort retrieved data by multiple columns.
When using order by with more thatn one column, separate the list of columns
to follow order by with commas.

Here the first sorting preference will be given to lastname, and then to age.
If two guys have same last name, but one's age is smaller, the guy with a smaller name will appear first.

Order by command will order by the first column listed, then by the second and so on.
*/