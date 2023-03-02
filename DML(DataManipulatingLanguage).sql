﻿



use tire_and_rim_shop1


---DML (Data Manipulating Language) : Adding, updating and deleting data in the database
---İnsert : In the insert operation, first the name of the table to which the insertion is made, and then the column names to be inserted are written in parentheses. 
---Afterwards, the "valeus" command and then the values ​​to be given in parentheses should be mentioned in order.

---Let's add a new customer to the customers table.
insert Customers (CustomerName, Address ,City, Phone) values ('Özdemir ASAF', 'Huzur Mah.Mutluluk Cad. Kahkaha Sok. No:6 D:8 Küçükçekmece','İstanbul','053418811938')
---Let's check
select*from Suppliers

---NOTE :If you add data without entering a value in the "Not null" table field, you will get an error. Fields that require data must be entered strictly.


--UPDATE :It is a command used to update the data in the table. When used with "where", it directly changes the data in the field to be changed.

---Let's add a new supplier to the Suppliers table and change it later.
insert Suppliers(CompanyName, Address ,City, Phone) values ('Sezgin Otomativ', 'İstiklal Mah. Menderes Cad. Tevfik FİKRET Sok. No:6 D:8 Bakırköy','İstanbul','05345605874')

---Let's change the phone number of the supplier we added.
update Suppliers set Phone = '05359877884'  where SuppliersId = 70

---DELETE : It deletes the specified data row in the table. If a specific row is not specified, it deletes the data in the whole table. This could turn into a very bad situation.

---Let's delete the new supplier we added.
delete  from Suppliers WHERE SuppliersId = 70



---If we want to create a backup table from our table, we use this code.
--Before backup table name = SuppliersYedek
--After base table name = Suppliers


SELECT * INTO SuppliersYedek FROM Suppliers  



