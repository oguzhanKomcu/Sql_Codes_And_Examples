# Sql_Codes_And_Examples
In this file I show examples of working in database with Sql. Here, I gave information about both reading and creating a database.

## NEW DATABASE
I created a database. I prepared their tables and entered their data.
This site was built using [GitHub Pages](https://github.com/oguzhanKomcu/Sql_Codes_And_Examples/blob/main/tire_and_rim_shop1.sql).
I entered the sample data of the tables I created in the database.
You can check this page [GitHub Pages](https://github.com/oguzhanKomcu/Sql_Codes_And_Examples/blob/main/tire_and_rim_shop1.sql).
 

## SELECT COMMAND AND CONDITIONAL STATEMENTS 
The SELECT statement is used to select data from a database. This process is called querying. The data returned by the SELECT command is stored in a table called the result set.
Here, I made filters in the database I created with the "where" command along with the select command. Among them, I also showed the " and&or , in, like, order by " queries.
You can check this page [GitHub Pages](https://github.com/oguzhanKomcu/Sql_Codes_And_Examples/blob/main/SqlReadFunction.sql).

## AGGREGATE FUNCTİON
Mathematical operations can be done with aggregate functions. We will use the "sum, count, avg, min-max" commands for these.
You can check this page [GitHub Pages](https://github.com/oguzhanKomcu/Sql_Codes_And_Examples/blob/main/AggrageteFunction.sql).

## GROUP BY AND HAVİNG 
 It is used to divide the table or tables queried together into groups. It is also used in conjunction with aggragate functions.
 The having command has the same function as "where ", but we cannot use the "where" command because we use aggregate functions in group by statements. We use "having" for this.
 You can check this page [GitHub Pages](https://github.com/oguzhanKomcu/Sql_Codes_And_Examples/blob/main/GroupbyHaving.sql).
 
## DML (Data Manipulating Language)
 It performs the operations of calling the information, adding something new to the information, deleting the information and updating the information.For this, we use the     "insert, update, delete" commands.
 You can check this page [GitHub Pages](https://github.com/oguzhanKomcu/Sql_Codes_And_Examples/blob/main/DML(DataManipulatingLanguage).sql)

## DDL(DATA Definition Language)
It allows the creation, deletion and editing of some basic properties of tables, which are objects where data is kept.I used these when creating my database
You can check this page [GitHub Pages](https://github.com/oguzhanKomcu/Sql_Codes_And_Examples/blob/main/DDL(DATADefinitionLanguage).sql)

## JOİN
Join command is used to create a result table by querying two or more tables at the same time. We can also use "group by" and "order by" expressions together.
You can check this page [GitHub Pages](https://github.com/oguzhanKomcu/Sql_Codes_And_Examples/blob/main/Joins.sql)

## USER DEFİNED FUNCTİON
Working with SQL While working on tables, we can repeat the desired operations many times. However, when there is a change in the repeated operations, we need to change them one by one. For this, we define the operation in a function that we have created, and when there is any change, it will be sufficient to just change the operation in the function.
You can check this page [GitHub Pages](https://github.com/oguzhanKomcu/Sql_Codes_And_Examples/blob/main/UserDefinedFunction.sql)

### TABLE-VALUED FUNCTİON
TABLE-VALUE FUNCTION in an example database I showed.
You can check this page [GitHub Pages](https://github.com/oguzhanKomcu/Sql_Codes_And_Examples/blob/main/TABLE-VALUED%20FUNCT%C4%B0ON.sql)

## STORED PROCEDURE
In operations such as CRUD in the database, we have to rewrite and compile the code each time. When this is the case, there is a loss of performance in terms of both time and compilation. In such cases, the Store Procedure allows us to write code according to the expressions used in programming. Thus, we save time without having to do the same operations every time.STORED PROCEDURE in an example database I showed. 
You can check this page [GitHub Pages](https://github.com/oguzhanKomcu/Sql_Codes_And_Examples/blob/main/STORED%20PROCEDURE.sql)

## TRİGGERS İN SQL SERVER

### ALTER TRİGGER 
Trigger structure is a special type of store procedure that automatically runs before or when certain events occur in a table in relational database management systems. We use the trigger structure when we want certain operations to be performed on the same table or another table, before or when an insertion, updating, or deletion of a table occurs. I showed the application of the trigger with the examples I made.

You can check this page [GitHub Pages](https://github.com/oguzhanKomcu/Sql_Codes_And_Examples/blob/main/Trigger%C4%B0nSQL.sql)

### INSTEAD OF TRİGGER
It comes into play while the specified operation is taking place, and starts to execute the commands defined in it. That is, it replaces the specified operation. Since instead of trigger can be included in the operations, it can be used for control purposes. It checks in advance on the provision of suitable conditions.

You can check this page [GitHub Pages](https://github.com/oguzhanKomcu/Sql_Codes_And_Examples/blob/main/InsteadOfTriggers.sql)

##RAISERROR
While using SQL server, we sometimes got errors. These errors had numbers and messages. We can create errors in this way. By writing our own procedure, we can throw an error similar to the exception in C# when the value entered by the user is incorrect.I have shown the details in the example I applied.
You can check this page [GitHub Pages](https://github.com/oguzhanKomcu/Sql_Codes_And_Examples/blob/main/RAISERROR.sql)

