SELECT TOP (1000) [ID]
      ,[DESCRIPTION]
      ,[qty]
	  ,[PRICE]
      ,[DISCOUNT]
      ,[extendedAmount]
      ,[shoppingTripId]
      ,[originalPOSIdentity]
      ,[modifiedTime]
      ,datediff(SECOND,(LAG(modifiedTime,1) OVER(ORDER BY modifiedtime)),[modifiedTime]) as TBS
  FROM [SSC].[ssc].[shoppingtripitems]
  --where shoppingTripId = 191
 
SELECT [shoppingTripId], convert(numeric,modifiedtime, 114)
FROM [SSC].[ssc].[shoppingtripitems]
--group by shoppingTripId


SELECT        ID, startTripTime, endTripTime, DATEDIFF(SECOND, startTripTime, endTripTime) AS TotTripSeconds, totalQuantity, DATEDIFF(SECOND, startTripTime, endTripTime)/totalQuantity AS AvgTBS
FROM            ssc.shoppingtrip
Where totalQuantity >0
order by totalQuantity


