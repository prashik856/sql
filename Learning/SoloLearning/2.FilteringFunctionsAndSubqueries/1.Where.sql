/*
The where statement
*/

select column_list from table_name where condition;
/*
where clause is used to extract only those records that fulfill a specified criterion
*/

select * from customers where ID=7;
/*
Get a specific record
*/


/*
Sql Operators:
Comparison Operators and Logical Operators are used in the where clause to filer the data to be selected.

= Equal
!= Not Equal
> Greater than
< Less than
>= Ge
<= Le
Between Between an inclusive range
*/
select * from customers where id != 5;


/*
The Between Operator
Selects values within a rang both inclusive.
first value is lower bound and second value is upper bound.
*/
select column_names from table_name where column_name BETWEEN value1 and value2;
select * from customers where ID between 3 and 7;



/*
Text Values:
surround any text that appears in the statement with single quotation marks (')
If our text contains an apostrophe ('), we should use two single quote characters to escape the apostrophe.
e.g. 'Can''t'
*/
select id, firstname, lastname, city from customers where city='New York';
