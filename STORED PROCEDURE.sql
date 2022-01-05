

use IK_Sample_database



--STORED PROCEDURE



--Get dependents table in one procedure.
create proc sp_Dependents 
 as begin 
     select  * from dependents end

--contol
execute sp_Dependents 




---Salary amount inquiry procedure by name and surname 

create proc sp_Salary (@name varchar(50) , @lastname varchar(50))
 as begin
  select  e.first_name,
          e.last_name,
		  j.min_salary,
		  j.max_salary
     
       from jobs j join employees e on j.job_id = e.job_id  where e.first_name=@name and e.last_name = @lastname end
	
--control--
execute sp_Salary 'Steven' , 'King'


---The procedure that brings the patient cared for by the desired employee

create proc sp_EmployeeDependents(@name varchar(50) , @lastname varchar(50))
 as begin
  select  
		  dp.first_name,
		  dp.last_name,
		  dp.relationship
       from  employees e join dependents dp 
	   on e.employee_id = dp.employee_id 
	   where  e.first_name = @name and e.last_name = @lastname 
	   end

---control
 execute sp_EmployeeDependents 'Bruce' , 'Ernst'
