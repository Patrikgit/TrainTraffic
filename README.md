# TrainTraffic
SQL server project with railway traffic

This is a prototype to visualize and analyze Finnish railway traffic. <br>The source is a CSV file holding records between 2017-01-01 and 2017-07-12.

The solution consists of a Visual studio database project 2019 (TrainTraffic)
and a SSIS project (ETL).

The CSV file is located locally and imported to table <code>land.train45</code> the database by the ETL project.
Transformation is made in the database view <code>dbo.train45_2017</code>, this is also where the Power BI report imports the data.

A service login is made for the user in order to reach the database.
