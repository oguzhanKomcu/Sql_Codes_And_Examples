


use IK_Sample_database

create trigger trg_LastName on employees
instead of insert
 as 
  begin 
     declare @lastname nvarchar(20), @lastnameupper nvarchar(20),
	 @first_name nvarchar(70),@email nvarchar (100) , @phone int , @hire_date date ,
	 @job_id int , @salary decimal(8, 2),
	 @manager_id int ,
	 @department_id int  ; 
	 SELECT @lastname= last_name ,
	 @first_name= first_name ,
	 @email = email , @phone = phone_number , @hire_date = hire_date, 
	 @job_id= job_id , @salary =salary, @manager_id = manager_id , 
	 @department_id = department_id   from inserted
	 set @lastnameupper = upper(@lastname)

	 insert employees VALUES ( @first_name,@lastnameupper
	,@email , @phone, @hire_date  ,
	 @job_id  , @salary,
	 @manager_id  ,
	 @department_id)

	 END

	 insert into employees VALUES ('Oðuzhan','kömcü','oguzkmc@hmail.com' ,'53458796','1995-07-10','6','8000','100','3' )
	 select*from employees








	 insert Shippers (CompanyName,Phone) VALUES (@companyName,@formatedPhoneNumber)
	 END 


insert into Shippers values ('Yurt içi kargo','02129999999')
select*from Shippers

select * from employees