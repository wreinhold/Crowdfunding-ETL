# Crowdfunding-ETL

This was repository was created to complete an ETL project for the UNC Data Science Bootcamp that I am participating in.

This project was mainly split into two parts. The first involved reading two Excel files and transforming them into 4 CSVs. To do this, I read them into Pandas dataframes, split columns, and used list comprehension to create unique IDs for the categories and subcategories CSVs. For the campaign CSV, I cleaned the data and merged the data frame with the previous two so that I could include the unique IDs. Finally for the contacts CSV, I iterated through each row of the excel file to separate out the data from the column names that were set in each line. These were made into dictionaries which were then put into a dataframe. I then split the name column into first and last names and exported it as a CSV.

The second half of the ETL project required me to sketch out what a database with these CSV files would look like. To do this, I utilized the free app on the QuickDBD website -http://www.quickdatabasediagrams.com/. This sketch can be seen in the crowdfunding_db_schema.sql file. I then created this schema in postgresSQL and imported all of the data from each CSV. 
