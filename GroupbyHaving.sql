


use tire_and_rim_shop1




---Group By () : It is used to divide the table or tables queried together into groups. It is also used in conjunction with aggragate functions.
--- How many wheels do we have according to the diameter?
select Diameter as Çap , count(*) as Adet  from Rims group by Diameter 

select Diameter, count(*)  as Adet from Tires where SalePrice < 1500 group by Diameter

select Brand , sum (ArrivalPrice ) as Total from Tires group by Brand

select Diameter ,  sum((SalePrice - ArrivalPrice) * UnýtsInStock) as [Total Remainder Of The Sale]  from Tires group by Diameter


select Brand , sum (ArrivalPrice ) as Total from Tires group by Brand




----/*Having : When we group with group by, we also use aggregate functions (count,sum,min,max,avg) expressions. 
----In these cases, we cannot filter with the "where" command. We use the "having" command for this. However, in cases where aggregate functions expressions are not used, we can filter with the "where" command. 

select Diameter ,  sum((SalePrice - ArrivalPrice) * UnýtsInStock) as [Total Remainder Of The Sale]  from Tires  group by Diameter having  sum((SalePrice - ArrivalPrice) * UnýtsInStock) > 3000 

select Diameter , sum(UnýtsInStock) as [Stock] from Tires group by Diameter having  sum(UnýtsInStock) > 10

