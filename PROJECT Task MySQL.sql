CREATE DATABASE BreakdownService;

USE BreakdownService;
CREATE TABLE Members
(
Member_ID INT Primary Key,
First_Name varchar(20),
Last_Name varchar(20),
Member_Location varchar(20),
Member_Age int
);

USE BreakdownService;
CREATE TABLE Vehicles
(
Vehicle_Registration varchar(10) Primary Key,
Vehicle_Make varchar(10),
Vehicle_Model varchar(10),
Member_ID int,
FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID)
);

USE BreakdownService;
CREATE TABLE Engineer
(
Engineer_ID INT Primary Key,
First_Name varchar(20),
Last_Name varchar(20)
);

CREATE TABLE Breakdown
(
Breakdown_ID INT Primary Key,
Vehicle_Registration varchar(10),
Engineer_ID int,
Breakdown_Date date,
Breakdown_Time time,
Breakdown_Location varchar(20),
FOREIGN KEY (Vehicle_Registration) REFERENCES Vehicles(Vehicle_Registration)
);


INSERT INTO members (member_id, first_name, last_name, member_location, member_age) VALUES
(1, 'John', 'Doe', 'London', 30),
(2, 'Jane', 'Smith', 'Manchester', 25),
(3, 'Alice', 'Johnson', 'Birmingham', 28),
(4, 'Robert', 'Brown', 'Leeds', 35),
(5, 'Emily', 'Davis', 'Liverpool', 22);

INSERT INTO vehicles (vehicle_registration, vehicle_make, vehicle_model, member_id) VALUES
('ABC123', 'Toyota', 'Corolla', 1),
('DEF456', 'Honda', 'Civic', 2),
('GHI789', 'Ford', 'Focus', 3),
('JKL012', 'BMW', 'X5', 4),
('MNO345', 'Audi', 'A4', 5),
('PQR678', 'Mercedes', 'C-Class', 1),
('STU901', 'Volkswagen', 'Golf', 2),
('VWX234', 'Nissan', 'Qashqai', 3);

INSERT INTO engineer (engineer_id, first_name, last_name) VALUES
(1, 'Tom', 'Harris'),
(2, 'Anna', 'Clark'),
(3, 'Peter', 'Wright');

INSERT INTO breakdown (breakdown_id, vehicle_registration, engineer_id, breakdown_date, breakdown_time, breakdown_location) VALUES
(1, 'ABC123', 1, '2024-08-01', '08:30:00', 'London'),
(2, 'DEF456', 2, '2024-08-01', '09:00:00', 'Manchester'),
(3, 'GHI789', 3, '2024-08-02', '10:15:00', 'Birmingham'),
(4, 'JKL012', 1, '2024-08-03', '11:45:00', 'Leeds'),
(5, 'MNO345', 2, '2024-08-04', '12:30:00', 'Liverpool'),
(6, 'PQR678', 3, '2024-08-05', '13:00:00', 'Sheffield'),
(7, 'STU901', 1, '2024-08-06', '14:15:00', 'Bristol'),
(8, 'VWX234', 2, '2024-08-07', '15:30:00', 'Nottingham'),
(9, 'ABC123', 3, '2024-08-08', '16:45:00', 'Leicester'),
(10, 'DEF456', 1, '2024-08-09', '17:00:00', 'Newcastle'),
(11, 'GHI789', 2, '2024-08-10', '18:15:00', 'London'),
(12, 'JKL012', 3, '2024-08-11', '19:30:00', 'Manchester');

ALTER TABLE breakdown ADD FOREIGN KEY (Engineer_ID) references  ENGINEER(Engineer_ID);

-- TASK 6

UPDATE engineer
SET First_name = 'Bob'
WHERE Engineer_ID = 1;

UPDATE engineer
SET last_name = 'Parker'
WHERE Engineer_ID = 3;

UPDATE engineer
SET First_name = 'Annie'
WHERE Engineer_ID = 2;

DELETE FROM breakdown
WHERE breakdown_id IN (1, 2);
