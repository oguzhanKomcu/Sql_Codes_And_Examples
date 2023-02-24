
   --NameSurnameIndex1 = Index name 
   -- CUSTOMERS = Table name 
   --NAMESURNAME = Column name

CREATE NONCLUSTERED INDEX NameSurnameIndex1 ON CUSTOMERS
(
   NAMESURNAME
)

-- The code that shows how many lines are searched during the query in the message section
SET statistics io on
select * from CUSTOMERS WHERE NAMESURNAME LIKE 'Oğuzhan Kömcü'



--Script showing table row and dimension information
SP_SPACEUSED 'CUSTOMERS'


--We also indexed a different column in the same table.
--Note: There is a size cost in the index operation. If we want to make each column, we will get one more file size equal to the data size. This can also create costs.
Use DATAABASE
GO
CREATE  NONCLUSTERED INDEX  tELnUMBERIndex1 on CUSTOMERS
(
   TELNR
)
GO



--INCLUDE table creation script
--It is more correct to make an include table for queries that are not a single line but more than one line.

CREATE  NONCLUSTERED INDEX   BirthDateIndex1 on CUSTOMERS
(
   BIRTHDATE
)
INCLUDE ( NAMESURNAME,TELNR,TOWN,CITY,NAME_,SURNAME,TCNO,GENDER) 

SET statistics io on
select * from CUSTOMERS WHERE BIRTHDATE = '1953-02-02'


--Since the indexing to the primary key is also unique, 
--it returns that row directly, 
--but even if it finds that row in a field relative to Tc, 
--it continues to search because it thinks there may be another one. 
--We need to specify that this is not repeated in the table, it is unique.

CREATE UNIQUE INDEX tc_Index
ON Persons 
(
    TC
); 









