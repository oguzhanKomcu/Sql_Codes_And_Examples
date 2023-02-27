--It would be more accurate to give it as "dbo.name_" when giving a function name and avoid confusion.
--While defining the variable in the function, we write it as "@variableName" + "as" + "variable type".
--Then we create it as "returns + variable type" to specify the return type.
--If you want to create a variable inside our function, we create it as "declare + as + @variableName + variable type".
--Then we create our necessary conditions or it may be in different transactions.
-- If we want to assign a value to our variable in the function, we can do this with the "SET" command.
"set+ @ourvariable + =  + value"
--To finish our function as well "RETURN @RESULT
--END" we are making a comeback in this way.


CREATE FUNCTION DBO.MONTHNAME_(@DATE AS DATETIME)
RETURNS VARCHAR(10)
AS
BEGIN
DECLARE @RESULT AS VARCHAR(10)
IF DATEPART (MONTH,@DATE)=1 
SET @RESULT='01.OCK'
IF DATEPART (MONTH, @DATE)=2 
SET @RESULT='02. SUB'
IF DATEPART (MONTH,@DATE)=3 SET @RESULT='03. MAR'
IF DATEPART (MONTH, @DATE)=4 SET @RESULT='04. NÝS'
IF DATEPART (MONTH,@DATE)=5 SET @RESULT='05.MAY'
IF DATEPART (MONTH,@DATE)=6 SET @RESULT='06.HAZ'
IF DATEPART (MONTH, @DATE)=7 SET @RESULT='07. TEM'
IF DATEPART (MONTH, @DATE)=8 SET @RESULT='08.AGU'
IF DATEPART (MONTH,@DATE)=9 SET @RESULT='09. EYL'
IF DATEPART (MONTH,@DATE)=10 SET @RESULT='10. EKI'
IF DATEPART (MONTH, @DATE)=11 SET @RESULT='11.KAS'
IF DATEPART (MONTH,@DATE)=12 SET @RESULT='12. ARA'
RETURN @RESULT
END

--test
SELECT DBO.MONTHNAME('20230816')


--I have product , order , order details tables in the database. 
--I want to create a sql user function with these. 
--I'm going to give this function a month and a year. Accordingly, 
--he will give me the most sold product that month, its quantity,
--and the least sold product and its quantity.
--If we want to return a batch of data. For this we need to say "returns table".


CREATE FUNCTION dbo.GetMonthlyStats(@Month INT, @Year INT)
RETURNS TABLE
AS
RETURN
    SELECT 
        TOP 1
        p.ProductName,
        od.Quantity AS 'MostSoldQuantity',
        MIN(od.Quantity) AS 'LeastSoldQuantity'
    FROM Orders o
    INNER JOIN OrderDetails od
        ON o.OrderID = od.OrderID
    INNER JOIN Products p
        ON od.ProductID = p.ProductID
    WHERE MONTH(o.OrderDate) = @Month
        AND YEAR(o.OrderDate) = @Year
    GROUP BY p.ProductName, od.Quantity
    ORDER BY od.Quantity DESC
    
    
    
  
CREATE FUNCTION DBO.GET_ITEM_PRICE (@PRICETYPE AS VARCHAR(10))
RETURNS FLOAT
AS
BEGIN
DECLARE @RESULT AS FLOAT
BEGIN
DECLARE @RESULT AS FLOAT
IF @PRICETYPE='MIN'
BEGIN
SELECT @RESULT=MIN (UNITPRICE) FROM ORDERDETAILS 
END
IF @PRICETYPE='MAX'
BEGIN
SELECT @RESULT=MAX(UNITPRICE) FROM ORDERDETAILS 
END
IF @PRICETYPE='AVG'
BEGIN
SELECT @RESULT=MAX(UNITPRICE) FROM ORDERDETAILS 
END


return @RESULT 
END




--Function that placed the last order of the customer
CREATE FUNCTION get_last_order_date (customer_id INT)
RETURNS DATETIME
BEGIN
    DECLARE last_order_date DATETIME;
    SELECT MAX(order_date) INTO last_order_date
    FROM orders
    WHERE customer_id = customer_id;
    RETURN last_order_date;
END;


