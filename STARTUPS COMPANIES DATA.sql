-------DATA ANALYSIS OF STARTUP COMPANIES-----

SELECT *
FROM DBO.AngelList_Startups$


-----Different categories/market of all startups.---

SELECT DISTINCT Market
from dbo.AngelList_Startups$

------there are 200 categories in total


------ all Startups in Fin tech market
SELECT *
FROM DBO.AngelList_Startups$
WHERE Market LIKE 'Fin tech'

-------Gini is the only 'FIN TECH' Startup, located in Munich.
-------it is at seed stage
------- 0 amount raised so far



--------total number of startups that joined per year.

SELECT DISTINCT COUNT(NAME) AS [TOTAL STARTUP PER YEAR],  Joining_Year
FROM (
SELECT Name, Location, Joining_Year
FROM dbo.AngelList_Startups$) sub
GROUP BY Joining_Year
ORDER BY Joining_Year

------Year with least startup is 2018 with 4 startups
------Year with most startup is 2014 with 278 startups




-------Amount raised per year-----

SELECT SUM([Total Raised]) AS [TOTAL RAISED PER YEAR], Joining_Year
FROM (
SELECT Name, Location, Joining_Year, [Total Raised]
FROM dbo.AngelList_Startups$) sub
GROUP BY Joining_Year
ORDER BY Joining_Year

------Year with least amount is 2018 with $1,368,000
------Year with most amount is 2014 with $1,960,661,348.


----- Total raised per startups 
SELECT DISTINCT * 
FROM DBO.AngelList_Startups$ 
ORDER BY [Total Raised]

------Startup company with the higest raised fund is Kreditech with $583,900,000
------Startup company with the lowest raised fund is DDstocks with $12,000

