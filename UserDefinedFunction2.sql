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
