USE BreakdownService;

-- TASK 3:
-- Retrieve the first 3 members from the Member table.
SELECT *
FROM Members
LIMIT 3;

-- Retrieve 3 members, skipping the first 2.
SELECT *
FROM Members
LIMIT 3 
OFFSET 2;

-- Retrieve all vehicles whose Vehicle_Make starts with 'T'.
SELECT *
FROM vehicles
WHERE Vehicle_Make LIKE 'T%';

-- Retrieve all breakdowns that occurred between '2023-01-01' and '2023-06-30'.
SELECT *
FROM breakdown
WHERE breakdown_date>= '2023-01-01' AND breakdown_date<='2023-06-30';

-- Retrieve details of vehicles with three Vehicle_Registration of you own choice in the list –  for -- example vehicles with registration 'ABC123', 'XYZ789', 'ANZ789'.
SELECT *
FROM vehicles
WHERE Vehicle_Registration='ABC123' OR Vehicle_Registration='GHI789' OR Vehicle_Registration='MNO345';

-- Retrieve the number of breakdowns each vehicle has had.
SELECT vehicle_registration, COUNT(*) AS 'Number of Breakdowns'
FROM breakdown
GROUP BY vehicle_registration;


-- Retrieve all members sorted by Member_Age in descending order
SELECT *
FROM Members 
ORDER BY 'Member_AGE' DESC;

-- Retrieve all vehicles that are either 'Toyota' make or 'Honda' make, and the model starts with 'C’
SELECT * 
FROM vehicles
WHERE Vehicle_Make='Toyota' OR Vehicle_Make='Honda' AND (Vehicle_Model LIKE 'C%');

-- Retrieve all engineers who do not have any breakdowns assigned (use LEFT JOIN and IS NULL)
SELECT e.*
FROM engineer e
LEFT JOIN breakdown b ON e.engineer_id = b.engineer_id
WHERE b.engineer_id IS NULL;


-- Retrieve all members aged between 25 and 40
SELECT *
FROM members
WHERE Member_Age >= 25 AND Member_Age <= 40;


-- Retrieve all members whose First_Name starts with 'J' and Last_Name contains 'son'
UPDATE members
SET last_name = 'Jenson'
WHERE member_id = 1;

SELECT * 
FROM members
WHERE first_name LIKE 'J%' AND Last_name LIKE 'son%';

-- Retrieve the top 5 oldest member.
SELECT * 
FROM members 
ORDER BY Member_Age DESC
LIMIT 5;

-- Retrieve all vehicle registrations in uppercase.
SELECT UPPER (Vehicle_Registration)
FROM vehicles;

-- Retrieve the details of all members along with the vehicles they own.
SELECT *
FROM 
    members
JOIN 
    vehicles ON members.member_id = vehicles.member_id;



-- TASK 5

-- AVG = Average value of numbers
SELECT AVG(salary) AS average_salary FROM employees;

-- MAX - maximum value in a set of values 
Select MAX (Salary) AS Highest_salary
FROM employees;

-- MIN - minimum value in a set of values
SELECT MIN(Salary) AS lowest_salary
FROM emplyees;

-- SUM - calculates the total sum of a column
SELECT SUM(Salary) AS Total_Salary
FROM emplyees;

