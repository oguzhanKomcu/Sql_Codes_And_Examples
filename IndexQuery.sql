
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
