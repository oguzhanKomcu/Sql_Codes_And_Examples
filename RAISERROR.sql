

--@msgnum = It specifies the code of the error. Every error in SQL has a number. We have given the number of the error that we will create ourselves.

--@severity = The severity level is an integer between 0 and 25, with each level representing the seriousness of the error .
-- 0–10 Informational messages
-- 11–18 Errors
-- 19–25 Fatal errors


--@msgtext = We have created the message text of our error.
--@with_log = logs the error in the error log and the application log.

exec sp_addmessage @msgnum = 500010, @severity=16 , @msgtext = 'The Id you entered could not be found.',
@with_log='true'

select * from sys.messages where message_id = 500010 


alter procedure find_wheel__id (@id INT )
AS
       IF @id<=0 OR @id>=25
BEGIN
       RAISERROR (500010,10,1)  -- If the condition is not met, we will get our error here.
RETURN 0
  END

SELECT * FROM Tires
WHERE TiresId = @id

Execute find_wheel__id '30'


