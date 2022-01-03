

use tire_and_rim_shop1



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

select Brand , sum (ArrivalPrice ) as Total from Tires group by Brand

select Diameter ,  sum((SalePrice - ArrivalPrice) * UnıtsInStock) as [Total Remainder Of The Sale]  from Tires group by Diameter


select Brand , sum (ArrivalPrice ) as Total from Tires group by Brand




----/*Having : When we group with group by, we also use aggregate functions (count,sum,min,max,avg) expressions. 
----In these cases, we cannot filter with the "where" command. We use the "having" command for this. However, in cases where aggregate functions expressions are not used, we can filter with the "where" command. 

select Diameter ,  sum((SalePrice - ArrivalPrice) * UnıtsInStock) as [Total Remainder Of The Sale]  from Tires  group by Diameter having  sum((SalePrice - ArrivalPrice) * UnıtsInStock) > 3000 

select Diameter , sum(UnıtsInStock) as [Stock] from Tires group by Diameter having  sum(UnıtsInStock) > 10

