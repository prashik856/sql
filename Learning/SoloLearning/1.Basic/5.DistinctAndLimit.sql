/*
The Distinct keyword
In case of Multiple duplicate records, it makes sense to return unique records.

*/

select DISTINCT column_name1, column_name2 from table_name;
/*
Distinct keyword is used in conjuction with select statement to eliminate all duplicate records and return only unique ones.
*/

select DISTINCT city from customers;
/*
peoply might come from same cities.
Distinct keyword only fetches unique values.
*/


/*
The limit keyword
Retrieve just a subset of records.
We can do this by using limit.
*/
select column_name1, column_name2 from table_name limit [number of records];

select id, firstname, lastname, city from customers limit 5;
/*
A good example
*/


select id, firstname, lastname, city from customers limit 4 offset 3;
/*
Pick up a set of records from a particular offset.
We pick up 4 records, starting from the third position in the above example.
btw, mysql starts counting from 0. So, the offset of the first row will actually be 0.
*/