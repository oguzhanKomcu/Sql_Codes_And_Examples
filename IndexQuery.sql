
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

