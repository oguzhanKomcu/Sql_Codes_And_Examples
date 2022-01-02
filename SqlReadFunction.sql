
use tire_and_rim_shop1



---Select : It is the command that sees the operations of pulling and selecting data from the table in the database.
select*from Tires

--Select bringing a column from the desired table with the select command.
select TiresId, Diameter, Thickness, Width , Brand , Season , YearOfProduction, Type from Tires

---*AS :It serves to temporarily rename the table.
select Diameter as Çap , Thickness as Kalınlık , Width as Genişlik from Tires


---Where :By making various queries over the data, we filter by using the where condition together with the select operation.

select  TiresId , Diameter, Thickness, Width , Brand , Season , YearOfProduction, Type from Tires where SalePrice < 1500

select *from Rims where WheelBoltSpacing = '4x100' 

---* And :It is used in cases where filtering increases and data that fits the condition is desired. 
select * from Rims where Offset between 'ET25' and 'ET30'

---* Or :In cases of excessive filtering, the condition is fulfilled if any of the condition statements are met.  
select * from Tires where Diameter = 19 or Diameter = 18 

---* İn :It is used when the or operator is required more than once.
select * from Tires where Diameter in (19,18,17)



--Order By :Used to sort data in ascending or descending order.
select * from Tires where Thickness < 50 order by Thickness  asc 

---* Desc :Rows already low
select*from Rims where SalePrice > 4000 order by SalePrice desc

---* Asc :Rows in least
select*from Suppliers  order by CompanyName asc



---Like :The like operator is used with where and queries whether there is a record matching a specified pattern.
select CustomerId, CustomerName from Customers where CustomerName  like 'A%'
 
select TiresId, Diameter, Thickness, Width , Brand , Season , YearOfProduction, Type from Tires where Brand like 'M%' order by SalePrice 

select * from Tires where Brand not like 'Mic%'

select*from Suppliers where CompanyName like '%oğ%'



--Aggragete Function

--Sum() :It helps us to collect the numeric fields in the column of our table.
select sum(ArrivalPrice * UnıtsInStock) as [Total Cost] from Rims  

---** What is our total revenue from sales ? 
select sum((TiresUnitPrice * TireQuantity - (((TiresUnitPrice * TireQuantity) /100) *18)) +
    
            (RimsUnitPrice * RimsQuantity - (((RimsUnitPrice * RimsQuantity) /100) *18)) ) as [Sale Total]  from OrdersDetails


---Count() :Method returns the number of records that meet the specified criteria.
SELECT count(*) as [Total Rims] FROM Rims

----*Distinct :With the keyword "distinct", it ignores the duplicate lines in the column in the parameter used in the count function.
select count(distinct Brand) as [Total Brand]  from Tires


---Avg() :Averages the values ​​of the selected column.
select avg(ArrivalPrice * UnıtsInStock) as [Total Cost] from Tires 

---Min() and Max() :Gets the lowest value and the highest value.lly.
select min(Diameter) froM Tires

select  maX(ArrivalPrice) from Tires




---Group By () : It is used to divide the table or tables queried together into groups. It is also used in conjunction with aggragate functions.
--- How many wheels do we have according to the diameter?
select Diameter as Çap , count(*) as Adet  from Rims group by Diameter 

select Diameter, count(*)  as Adet from Tires where SalePrice < 1500 group by Diameter

select Diameter ,  sum((SalePrice - ArrivalPrice) * UnıtsInStock) as [Total Remainder Of The Sale]  from Tires group by Diameter






