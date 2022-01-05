



use IK_Sample_database


--Let's bring all the information about the desired location.


go
CREATE FUNCTION GETLOCATIONSINFO(@locaionsId int)  --- First, I named my function. I have written the value name and data type that my function will take in the brackets.
RETURNS TABLE 
   RETURN SELECT *from locations where location_id = @locaionsId  --In the operations I do in the select operation, I wrote the same operation to my function as I read the data in the tables.

go

-----Is our function working? Let's check.
select*from GETLOCATIONSINFO(1500)




----Let's write a function that returns information by employee name.

GO
create FUNCTION GETEMPLOYEELOCATION(@employeeName nvarchar(50),@employeeLastName nvarchar(50)) 
RETURNS TABLE 
   RETURN SELECT 
                
				 e.first_name ,
				 e.last_name, 
				 e.phone_number,
				 d.department_name,
				 l.city,
				 l.street_address,
				 l.state_province,
				 l.country_id
 
			   from locations l join departments d 
			   on d.location_id = l.location_id join employees e 
			   on e.department_id = d.department_id
			   where  e.first_name = @employeeName and e.last_name = @employeeLastName
go


----Is our function working? Let's check.
select*from GETEMPLOYEELOCATION ('Steven','King')

