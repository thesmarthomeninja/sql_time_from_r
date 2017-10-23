#If you use SQL (I sure hope you do) then this is a real treat if you're tired of manually 
#pulling jazz from SQL directly into an R dataframe.  I'm going to give you the guides
#that I used and simply show you all I had to do.  But follow these guides closely
#and contact your IT or network administrator if you need to get special permission access
#to use R to pull your data from SQL.

#Helpful Youtube Guide: https://www.youtube.com/watch?v=2xQX76nEdvo

#Caveats: https://support.rstudio.com/hc/en-us/articles/214510788-Setting-up-R-to-connect-to-SQL-Server-

#If you want to flip this project up and do R commands in SQL instead: https://www.mssqltips.com/sqlservertip/4127/sql-server-2016-r-services-display-r-plots-in-reporting-services/

#Another good guide for basics with SQL: http://blog.hackerearth.com/exclusive-sql-tutorial-on-data-analysis-r

#RODBC: https://cran.r-project.org/web/packages/RODBC/RODBC.pdf

#Another good guide: https://www.red-gate.com/simple-talk/sql/reporting-services/making-data-analytics-simpler-sql-server-and-r/



#install and load your package

install.packages("RODBC")

library(RODBC)

#To Connect To SQL via your ODBC Driver Setup Shown in first video download it here windows peeps: https://www.microsoft.com/en-us/download/details.aspx?id=36434

cn <- odbcConnect("Test R")

# Bombs away baby.
test <- sqlQuery(cn, "<PASTE YOUR SQL QUERY HERE")
