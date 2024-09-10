# MySQL-Breakdown-Service-Database


Description
This project involves creating and managing a MySQL database for a breakdown company. The database is designed to handle member registrations, vehicle ownership, and breakdown incidents efficiently. It integrates member, vehicle, and engineer data to ensure high organization, accuracy, and accessibility, which is crucial for delivering exceptional service and maintaining a competitive edge.

Objectives
- Systematically manage and organize data for a breakdown company.
- Link multiple vehicles to their respective members.
- Efficiently manage service requests and maintenance histories.
- Streamline the assignment and tracking of breakdown incidents.
- Provide timely assistance and analyze breakdown patterns to optimize resource allocation.

Tasks
Task 1: Create TablesCreate the following tables with the specified columns:
Member Table- Member_ID (Primary Key): int
- First_Name: varchar(20)
- Last_Name: varchar(20)
- Member_Location: varchar(20)
- Member_Age: int
Vehicle Table- Vehicle_Registration (Primary Key): varchar(10)
- Vehicle_Make: varchar(10)
- Vehicle_Model: varchar(10)
- Member_ID (Foreign Key): int
Engineer Table- Engineer_ID (Primary Key): int
- First_Name: varchar(20)
- Last_Name: varchar(20)
Breakdown Table- Breakdown_ID (Primary Key): int
- Vehicle_Registration (Foreign Key): varchar(10)
- Engineer_ID (Foreign Key): int
- Breakdown_Date: date
- Breakdown_Time: time
- Breakdown_Location: varchar(20)
- Using the ALTER command, set the foreign keys.

Task 2: Insert DataInsert the following data into the tables:
Member Table- 5 records
Vehicle Table- 8 records
Engineer Table- 3 records
Breakdown Table- 12 records
    - Ensure there are 2 breakdowns on the same day.
    - Ensure there are 3 breakdowns in the same month.
    - Ensure at least 3 vehicles have broken down more than once.

Task 3: Perform Queries- Retrieve the first 3 members from the Member table.
- Retrieve 3 members, skipping the first 2.
- Retrieve all vehicles whose Vehicle_Make starts with 'T'.
- Retrieve all breakdowns that occurred between '2023-01-01' and '2023-06-30'.
- Retrieve details of vehicles with three Vehicle_Registration of your choice in the list – for example, vehicles with registration 'ABC123', 'XYZ789', 'ANZ789'.
- Retrieve the number of breakdowns each vehicle has had.
- Retrieve all members sorted by Member_Age in descending order.
- Retrieve all vehicles that are either 'Toyota' make or 'Honda' make, and the model starts with 'C'.
- Retrieve all engineers who do not have any breakdowns assigned (use LEFT JOIN and IS NULL).
- Retrieve all members aged between 25 and 40.
- Retrieve all members whose First_Name starts with 'J' and Last_Name contains 'son'.
- Retrieve the top 5 oldest members.
- Retrieve all vehicle registrations in uppercase.
- Retrieve the details of all members along with the vehicles they own.
- Retrieve all members and any associated vehicles, including members who do not own any vehicles.
- Retrieve all vehicles and the associated members, including vehicles that are not owned by any members.
- Retrieve the number of breakdowns each member has had.
- Retrieve all breakdowns along with member first name and last name that occurred for vehicles owned by members aged over 50.

Task 4 and 5: Research
Conduct research as needed.

Task 6: Update and Delete Records- Update 3 records of your own choice from the Engineer table.
- Delete 2 records of your own choice from the Breakdown table.

