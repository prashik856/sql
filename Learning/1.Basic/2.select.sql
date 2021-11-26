/*
Basic Sql Commands

'show' command:
displays information contained in the DB and its tables.
*/
show DATABASES; 
/*
lists the databases managed by the server.
*/

show tables;
/*
Used to display all of the tables currently selected by mysql DB
*/

show columns from customers;
/*
show columns displays infor about the columns in a given table.
In our example, from customers table.

show columns displays the following values for each table column:
Field: column name
Type: column data type
Key: indicates whether the column is indexed
Default: default value assigned to the column
Extra: may contain any additional information that is available about the given column.
*/


/*
'select' statement
Used to select data from DB.
The result is stored in a result table, which is called the result-set.

*/

select <column_list> from <table_name>
/*
Here, column list includes more one or more columns
table_name is the name of the table
*/

select firstname from customers;
/*
selects firstname from the customers table.
*/

select firstname, lastname from customers;
/*
multiple columns from customers table.
*/