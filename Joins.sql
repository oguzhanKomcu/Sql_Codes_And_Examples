

use tire_and_rim_shop1


--JOIN :A database can have related tables. We may need common data in these tables. By using the "JOIN" statement in SQL, the tables are joined virtually and the data becomes meaningful.
 
---/* Let's combine the tire and supplier tables.

select 
      t.TiresId , 
      t.Diameter, 
	  t.Thickness, 
	  t.Width ,
	  t.Brand,
	  tars.SuppliersId,
	  tars.TireAndRimSuppliersId 
	  from Tires t join TireAndRimSuppliers tars on  t.TiresId = tars.TiresId  
/*  First, we join the common tables with join and give the tables abbreviation names so that the data in the tables are not mixed. Then we apply the "Id"s that are related to each other with "on" */


--- Let's combine the rims, tires and suppliers tables.

select * from TireAndRimSuppliers tars join Rims r  
		on tars.RimsId = r.RimsId join Tires t
		on t.TiresId = tars.TiresId


--/*Let's join and group the tables with Join. 

---What is the total we obtained from the sale of tires with 16 rims?

select    t.Diameter , 
		sum((od.TiresUnitPrice*od.TireQuantity)-(((od.TiresUnitPrice*od.TireQuantity)/100)*18)) as Total 
		from OrdersDetails od join Orders o
		on od.OrdersId = o.OrdersId join Tires t 
		on t.TiresId = od.TiresId 
		group by  t.Diameter
		order by 2 desc  


---Which brand of tire did we sell the most?

select    t.Brand , 
		sum((od.TiresUnitPrice*od.TireQuantity)-(((od.TiresUnitPrice*od.TireQuantity)/100)*18)) as Total 
		from OrdersDetails od join Orders o
		on od.OrdersId = o.OrdersId join Tires t 
		on t.TiresId = od.TiresId 
		group by  t.Brand
		order by 2 desc  



