





use IK_Sample_database



---INSERT FUNCTION IN SQL TRIGGER

--Let's add a new employee and increase the number of employees in the department.

CREATE TRIGGER tp_YeniCalýsýsan on Employees
after insert --We write the operation to be done in the table after we finish it.
as  
   begin 
      declare   @departmanýd  int  ; --we define variables
	
	  select  @departmanýd = department_id   from inserted --WE MATCH THE VARIABLES I CREATE AND WRITE THE TABLE TO FIND THE BACKGROUND DATA.

	  update departments
	  set  NumberOfEmployees = NumberOfEmployees + 1 where department_id = @departmanýd
	  end

---LET'S ADD OUR NEW EMPLOYEE
insert employees (first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) 
         
		  values  
		             ('oguzhan' , 'Lambert' , 'adam@gmail.com' , '564.897.7458','1990-01-01',5,4000.00,114,10)


--CONTROL
SELECT*FROM departments
SELECT*FROM employees




-/*EXAMPLE FROM ANOTHER DATABASE*/

USE tire_and_rim_shop



---UPDATE FUNCTION IN SQL TRIGGER---

--Let's increase the number of the product in our basket and increase the total price and delete it from stock.

alter trigger tg_tutarDegisikligi on OrdersDetails
after update 
 as begin declare 
                 @adet int , 
                 @tireId int ,
				 @yeniadet int ,
				 @eskitutar  int ,
				 @yenitutar int ;


              select  @adet = TireQuantity , 
			          @tireId=TiresId , 
					  @eskitutar= [Total Fee] from deleted --first deleted table which will go after update
			  
			  select  @yeniadet = TireQuantity , 
			          @tireId=TiresId ,
					  @yenitutar=[Total Fee] from inserted --Then the inserted table to be inserted is written.
	
	           
			  update OrdersDetails set [Total Fee] =  (TiresUnitPrice * @yeniadet)where TiresId = 17
			  update Tires set UnýtsInStock = UnýtsInStock  - (@yeniadet-@adet) 
              where TiresId = @tireId
    		  end

--LET'S INCREASE THE NUMBER OF PRODUCTS IN OUR CART.
update OrdersDetails set TireQuantity  = TireQuantity+1 where TiresId = 17


--CONTROL
 select*from OrdersDetails
 select*from Tires



---DELETE FUNCTION WITH TRIGGER-


--If the order is cancelled, the quantity in the given order will be added to the stock again.

alter trigger tg_FiyatGüncelleme on OrdersDetails
after delete 
as begin
         declare @tireId int ,
		         @adet int ;
			    

         select  @tireId= OrdersId ,@adet = TireQuantity  from deleted
		    update Tires
   set UnýtsInStock = UnýtsInStock + @adet
   where TiresId = @tireId 
   End


 ---The order placed has been cancelled.
   delete  from OrdersDetails where TiresId = 17 
   
---CONTOL  
  select * from OrdersDetails
  select * from Tires
		            
          




