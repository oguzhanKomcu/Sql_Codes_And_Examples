

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





