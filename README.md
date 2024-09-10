# MySQL-Breakdown-Service-Database

Task Overview
The primary objective of this database is to systematically manage and organize data for a breakdown company. Each member registers with the company, and the database handles the complexity of members owning multiple vehicles by linking each vehicle to its respective member. This facilitates efficient management of service requests and maintenance histories.
The database also streamlines the assignment and tracking of breakdown incidents, logging details such as the vehicle involved, the assigned engineer, and the time and location of the breakdown. This helps in providing timely assistance and analyzing breakdown patterns to optimize resource allocation. Integrating member, vehicle, and engineer data into a unified system ensures high organization, accuracy, and accessibility, which is crucial for delivering exceptional service and maintaining a competitive edge.

Task 1: Create Tables
Create the following tables with the specified columns:
Member Table:
•	Member_ID (Primary Key): int 
•	First_Name: varchar(20)
•	Last_Name: varchar(20)
•	Member_Location: varchar(20)
•	Member_Age: int

Vehicle Table:
•	Vehicle_Registration (Primary Key): varchar(10)
•	Vehicle_Make: varchar(10)
•	Vehicle_Model: varchar(10)
•	Member_ID (Foreign Key): int

Engineer Table:
•	Engineer_ID (Primary Key): int
•	First_Name: varchar(20)
•	Last_Name: varchar(20)

Breakdown Table:
•	Breakdown_ID (Primary Key): int
•	Vehicle_Registration (Foreign Key): varchar(10)
•	Engineer_ID (Foreign Key): int
•	Breakdown_Date: date
•	Breakdown_Time: time
•	Breakdown_Location: varchar(20)

Using the ALTER command, set the foreign keys.
Task 2: Insert Data
Insert the following data into the tables:
Member Table:
•	5 records
Vehicle Table:
•	8 records
Engineer Table:
•	3 records
Breakdown Table:
•	12 records
o	Ensure there are 2 breakdowns on the same day
o	Ensure there are 3 breakdowns in the same month
o	Ensure at least 3 vehicles have broken down more than once

Task 3: Perform Queries
1.	Retrieve the first 3 members from the Member table.
2.	Retrieve 3 members, skipping the first 2.
3.	Retrieve all vehicles whose Vehicle_Make starts with 'T'.
4.	Retrieve all breakdowns that occurred between '2023-01-01' and '2023-06-30'.
5.	Retrieve details of vehicles with three Vehicle_Registration of you own choice in the list –  for example vehicles with registration 'ABC123', 'XYZ789', 'ANZ789'.
6.	Retrieve the number of breakdowns each vehicle has had.
7.	Retrieve all members sorted by Member_Age in descending order
8.	Retrieve all vehicles that are either 'Toyota' make or 'Honda' make, and the model starts with 'C’
9.	Retrieve all engineers who do not have any breakdowns assigned (use LEFT JOIN and IS NULL)
10.	Retrieve all members aged between 25 and 40
11.	Retrieve all members whose First_Name starts with 'J' and Last_Name contains 'son'
12.	Retrieve the top 5 oldest member.
13.	Retrieve all vehicle registrations in uppercase.
14.	Retrieve the details of all members along with the vehicles they own.
15.	Retrieve all members and any associated vehicles, including members who do not own any vehicles.
16.	Retrieve all vehicles and the associated members, including vehicles that are not owned by any members
17.	Retrieve the number of breakdowns each member has had
18.	Retrieve all breakdowns along with member first name and last name that occurred for vehicles owned by members aged over 50

Task 4 and 5 - research 

Task 6: Update and Delete Records
1.	Update 3 records of your own choice from the Engineer table.
2.	Delete 2 records or your own choice from the breakdown table.

