use tire_and_rim_shop1


--USER DEFINED FUNCTION

---Let's make a function for our profit calculation.

go
create function KARHESAPLA(@satisfiyati MONEY , @alisfiyati money,  @stokmiktari smallint) ---First we give the name of the function. Then we write it with the data types of the columns we will use in it.

returns int  as  --We write the data type we want to convert.
  begin return  (@satisfiyati - @alisfiyati )* @stokmiktari  end --we apply the operation we want to do in our function.
  go

--WE CHECK OUR FUNCTION.
  select   Diameter, 
  sum(dbo.KARHESAPLA(SalePrice,ArrivalPrice,UnitsInStock  ) )from tires group by Diameter


 --- Let's make a function to capitalize letters in text
  go
create function buyukharf(@gelendeger nvarchar(50) )

returns nvarchar(500)  as 
  begin return  upper(@gelendeger)  end 
  go

---Is our function working? Let's check.
  select SuppliersId, dbo.buyukharf(CompanyName) from Suppliers

  select CompanyName, dbo.buyukharf(Address) from Suppliers




--Let's prepare a function for the profit we get.
go
create function TOPLAMKAZANC(@birimfiyat int , @adet int  )
   returns int 
   as 
   begin return ((@birimfiyat * @adet - (((@birimfiyat * @adet) /100) *18))) end 
go
   


--Let's prepare a function for the profit we get.
go
create function TOPLAMKAZANC(@birimfiyat int , @adet int  )
   returns int 
   as 
   begin return ((@birimfiyat * @adet - (((@birimfiyat * @adet) /100) *18))) end 
go
   

---Is our function working? Let's check.

select TiresId , dbo.TOPLAMKAZANC(TiresUnitPrice,TireQuantity) as Kazanc from OrdersDetails

select RimsId , dbo.TOPLAMKAZANC(RimsUnitPrice,RimsQuantity) as Kazanc from OrdersDetails

