/*
Tahsin Bekir YAKTU 
https://github.com/tyaktu
https://medium.com/@tahsinyaktu
www.linkedin.com/in/tby1
*/


USE [RFM]
IF OBJECT_ID('[dbo].[RFM2012]','U') IS NOT NULL
	DROP TABLE [dbo].[RFM2012]

	SET ANSI_NULLS ON
	SET QUOTED_IDENTIFIER ON

	CREATE TABLE [dbo].[RFM2012](
		[CustomerID] [varchar](20) NULL,
		[LastInvoiceDate] [date] NULL,
		[Recency] [int] NULL,
		[Frequency] [int] NULL,
		[Monatery] [money] NULL,
		[Recency_Scale] [int] NULL,
		[Frequency_Scale] [int] NULL,
		[Monatery_Scale] [int] NULL,
		[Score] [int] NULL,
		[Segment] [varchar](100) NULL,
		[Segment2] [varchar](100) NULL
	) ON [PRIMARY]

	SET ANSI_PADDING ON

		CREATE UNIQUE CLUSTERED INDEX [ClusteredIndex-CustomerID] ON [dbo].[RFM2012]
		(
			[CustomerID] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
		GO


TRUNCATE TABLE RFM2012
GO
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
INSERT INTO RFM2012(CustomerID) SELECT DISTINCT [CUSTOMER ID] FROM ONLINERETAIL_2012
GO
UPDATE RFM2012 SET LastInvoiceDate =t.mInvoiceDate  from RFM2012 r inner join (select  [Customer ID],MAX(InvoiceDate)mInvoiceDate from ONLINERETAIL_2012 GROUP BY [Customer ID]) t on r.customerID=t.[Customer ID]
GO
UPDATE RFM2012 SET Recency=DATEDIFF(DAY,LastInvoiceDate,'2013-01-01')
GO
UPDATE RFM2012 SET Frequency=t.cInvoice from RFM2012 r inner join (select  [Customer ID],COUNT(Distinct Invoice) cInvoice from ONLINERETAIL_2012 GROUP BY [Customer ID]) t on r.customerID=t.[Customer ID]
GO
UPDATE RFM2012 SET Monatery=t.sMonatary from RFM2012 r inner join (SELECT [Customer ID],sum([Price]*[Quantity])  sMonatary from ONLINERETAIL_2012 GROUP BY [Customer ID]) t on r.customerID=t.[Customer ID]
GO
update RFM2012 SET Recency_Scale=( select RANK from ( SELECT  *, NTILE(5) OVER( ORDER BY Recency desc) Rank FROM RFM2012 ) t where  CustomerID=RFM2012.CustomerID)
GO
update RFM2012 SET Frequency_Scale=( select RANK from ( SELECT  *, NTILE(5) OVER( ORDER BY Frequency) Rank FROM RFM2012 ) t where  CustomerID=RFM2012.CustomerID)
GO
update RFM2012 SET Monatery_Scale=0
update RFM2012 SET Monatery_Scale=( select RANK from ( SELECT  *, NTILE(5) OVER( ORDER BY Monatery) Rank FROM RFM2012 where Monatery>'5' ) t where  CustomerID=RFM2012.CustomerID)
GO
UPDATE RFM2012 SET Score=0
UPDATE RFM2012 SET Score=cast(recency_scale as nvarchar(1))+cast(Frequency_Scale as nvarchar(1))+cast(Monatery_Scale as nvarchar(1))  FROM [RFM].[dbo].[RFM2012] 
GO
UPDATE RFM2012 SET Segment ='Hibernating Customers'			WHERE Recency_Scale LIKE  '[1-2]%' AND Frequency_Scale LIKE '[1-2]%' --
UPDATE RFM2012 SET Segment ='At Risk'						WHERE Recency_Scale LIKE  '[1-2]%' AND Frequency_Scale LIKE '[3-4]%' --
UPDATE RFM2012 SET Segment ='Cannot Lose Them But Losing'	WHERE Recency_Scale LIKE  '[1-2]%' AND Frequency_Scale LIKE '[5]%'   
UPDATE RFM2012 SET Segment ='About To Sleep'				WHERE Recency_Scale LIKE  '[3]%' AND Frequency_Scale LIKE '[1-2]%'   --
UPDATE RFM2012 SET Segment ='Need Attention'				WHERE Recency_Scale LIKE  '[3]%' AND Frequency_Scale LIKE '[3]%' 	 
UPDATE RFM2012 SET Segment ='Loyal'							WHERE Recency_Scale LIKE  '[3-4]%' AND Frequency_Scale LIKE '[4-5]%' 
UPDATE RFM2012 SET Segment ='Promising'						WHERE Recency_Scale LIKE  '[4]%' AND Frequency_Scale LIKE '[1]%' 	 --
UPDATE RFM2012 SET Segment ='New Customers'					WHERE Recency_Scale LIKE  '[5]%' AND Frequency_Scale LIKE '[1]%' 	 
UPDATE RFM2012 SET Segment ='Potential Loyalist'			WHERE Recency_Scale LIKE  '[4-5]%' AND Frequency_Scale LIKE '[2-3]%' --
UPDATE RFM2012 SET Segment ='Champions'						WHERE Recency_Scale LIKE  '[5]%' AND Frequency_Scale LIKE '[4-5]%' 
GO
UPDATE RFM2012 set Segment2= r2.segment FROM RFM2012 R1 inner join RFM_DEF R2 on r1.score=r2.score  
GO
ALTER INDEX [ClusteredIndex-CustomerID] ON [dbo].[RFM2012] REBUILD PARTITION = ALL WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
