
   --NameSurnameIndex1 = Index name 
   -- CUSTOMERS = Table name 
   --NAMESURNAME = Column name

CREATE NONCLUSTERED INDEX NameSurnameIndex1 ON CUSTOMERS
(
   NAMESURNAME
)

