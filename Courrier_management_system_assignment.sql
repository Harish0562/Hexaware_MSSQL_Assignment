use Courrier_management_assignement;
CREATE TABLE users (
    userID INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    contactNumber VARCHAR(20),
    address TEXT
);

CREATE TABLE Courier (
    courierID INT PRIMARY KEY,
    senderName VARCHAR(255),
    senderAddress TEXT,
    receiverName VARCHAR(255),
    receiverAddress TEXT,
    weight DECIMAL(5, 2),
    status VARCHAR(50),
    trackingNumber VARCHAR(20) UNIQUE,
    deliveryDate DATE
);

ALTER TABLE Courier ADD employeeID INT;

UPDATE Courier SET employeeID = 1 WHERE courierID = 1;
UPDATE Courier SET employeeID = 2 WHERE courierID = 2;
UPDATE Courier SET employeeID = 3 WHERE courierID = 3;
UPDATE Courier SET employeeID = 4 WHERE courierID = 4;
UPDATE Courier SET employeeID = 5 WHERE courierID = 5;
UPDATE Courier SET employeeID = 6 WHERE courierID = 6;
UPDATE Courier SET employeeID = 7 WHERE courierID = 7;
UPDATE Courier SET employeeID = 8 WHERE courierID = 8;
UPDATE Courier SET employeeID = 9 WHERE courierID = 9;
UPDATE Courier SET employeeID = 10 WHERE courierID = 10;

select * from Courier;


CREATE TABLE CourierServices (
    serviceID INT PRIMARY KEY,
    serviceName VARCHAR(100),
    cost DECIMAL(8, 2)
);

CREATE TABLE Employee (
    employeeID INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    contactNumber VARCHAR(20),
    role VARCHAR(50),
    salary DECIMAL(10, 2)
);

CREATE TABLE Location (
    locationID INT PRIMARY KEY,
    locationName VARCHAR(100),
    address TEXT
);

CREATE TABLE Payment (
    paymentID INT PRIMARY KEY,
    courierID INT,
    locationID INT,
    amount DECIMAL(10, 2),
    paymentDate DATE,
    FOREIGN KEY (courierID) REFERENCES Courier(courierID),
    FOREIGN KEY (locationID) REFERENCES Location(locationID)
);

INSERT INTO users(userID, name, email, password, contactNumber, address)
VALUES
(1, 'Arjun', 'arjun@gmail.com', 'password123', '1234567890', '123 Street, City'),
(2, 'Kaviya', 'kaviya@gmail.com', 'securepass', '9876543210', '456 Street, Town'),
(3, 'Mani', 'mani@gmail.com', 'pass123', '8765432109', '789 Street, Village'),
(4, 'Priya', 'priya@gmail.com', 'mysecurepass', '7654321098', '012 Street, County'),
(5, 'Raj', 'raj@gmail.com', 'password456', '6543210987', '345 Street, District'),
(6, 'Nisha', 'nisha@gmail.com', 'pass456', '5432109876', '678 Street, State'),
(7, 'Ganesh', 'ganesh@gmail.com', 'securepassword', '4321098765', '901 Street, Country'),
(8, 'Saranya', 'saranya@gmail.com', 'password789', '3210987654', '234 Street, Province'),
(9, 'Kumar', 'kumar@gmail.com', 'mypass789', '2109876543', '567 Street, Region'),
(10, 'Shalini', 'shalini@gmail.com', 'passwordabc', '1098765432', '890 Street, Territory');


SELECT * FROM Users;

INSERT INTO Courier (courierID, senderName, senderAddress, receiverName, receiverAddress, weight, status, trackingNumber, deliveryDate)
VALUES
(1, 'John Doe', '123 Elm Street', 'Jane Smith', '456 Oak Avenue', 2.5, 'Delivered', 'TRACK001', '2023-09-10'),
(2, 'Robert Brown', '789 Maple Road', 'Emily Davis', '101 Birch Lane', 1.2, 'In Transit', 'TRACK002', '2024-09-19'),
(3, 'David Lee', '234 Cedar Street', 'Michael Green', '567 Pine Blvd', 3.0, 'Processing', 'TRACK003', '2023-09-15'),
(4, 'Laura White', '890 Spruce Way', 'Emma Wilson', '321 Willow Court', 2.7, 'Delivered', 'TRACK004', '2023-09-11'),
(5, 'William Taylor', '654 Chestnut Circle', 'Olivia Adams', '987 Aspen Drive', 4.1, 'In Transit', 'TRACK005', '2023-09-13'),
(6, 'John Doe', '123 Elm Street', 'Michael Green', '567 Pine Blvd', 5.0, 'Processing', 'TRACK006', '2023-09-14'),
(7, 'Emily Davis', '101 Birch Lane', 'Robert Brown', '789 Maple Road', 3.5, 'Delivered', 'TRACK007', '2023-09-10'),
(8, 'Jane Smith', '456 Oak Avenue', 'William Taylor', '654 Chestnut Circle', 2.9, 'Processing', 'TRACK008', '2023-09-16'),
(9, 'Laura White', '890 Spruce Way', 'David Lee', '234 Cedar Street', 1.8, 'In Transit', 'TRACK009', '2023-09-18'),
(10, 'Emma Wilson', '321 Willow Court', 'Olivia Adams', '987 Aspen Drive', 2.0, 'Delivered', 'TRACK010', '2023-09-17');

INSERT INTO CourierServices (serviceID, serviceName, cost)
VALUES
(1, 'Standard Delivery', 10.00),
(2, 'Express Delivery', 20.00),
(3, 'Same Day Delivery', 25.00),
(4, 'Overnight Delivery', 30.00),
(5, 'Weekend Delivery', 35.00),
(6, 'International Shipping', 50.00),
(7, 'Economy Delivery', 8.00),
(8, 'Next Day Delivery', 18.00),
(9, 'Two-Day Shipping', 22.00),
(10, 'Freight Delivery', 75.00);


INSERT INTO Employee (employeeID, name, email, contactNumber, role, salary)
VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com', '555-1111', 'Courier', 35000.00),
(2, 'Bob Carter', 'bob.carter@example.com', '555-2222', 'Manager', 55000.00),
(3, 'Charlie Young', 'charlie.young@example.com', '555-3333', 'Dispatcher', 40000.00),
(4, 'Diana Scott', 'diana.scott@example.com', '555-4444', 'Courier', 35000.00),
(5, 'Ethan Ford', 'ethan.ford@example.com', '555-5555', 'Admin', 45000.00),
(6, 'Fiona Blake', 'fiona.blake@example.com', '555-6666', 'Courier', 36000.00),
(7, 'George Hall', 'george.hall@example.com', '555-7777', 'Supervisor', 48000.00),
(8, 'Helen Moore', 'helen.moore@example.com', '555-8888', 'Manager', 55000.00),
(9, 'Ian Baker', 'ian.baker@example.com', '555-9999', 'Courier', 34000.00),
(10, 'Jenny Watts', 'jenny.watts@example.com', '555-1010', 'Dispatcher', 41000.00);

INSERT INTO Location (locationID, locationName, address)
VALUES
(1, 'New York Hub', '101 Manhattan St, New York, NY'),
(2, 'Los Angeles Hub', '202 Hollywood Blvd, Los Angeles, CA'),
(3, 'Chicago Hub', '303 Windy City Rd, Chicago, IL'),
(4, 'Houston Hub', '404 Lone Star Ln, Houston, TX'),
(5, 'Phoenix Hub', '505 Desert Ave, Phoenix, AZ'),
(6, 'San Francisco Hub', '606 Bay St, San Francisco, CA'),
(7, 'Dallas Hub', '707 Big D Blvd, Dallas, TX'),
(8, 'Miami Hub', '808 Ocean Dr, Miami, FL'),
(9, 'Seattle Hub', '909 Rainy St, Seattle, WA'),
(10, 'Boston Hub', '1010 Freedom Trail, Boston, MA');

INSERT INTO Payment (paymentID, courierID, locationID, amount, paymentDate)
VALUES
(1, 1, 1, 25.00, '2023-09-10'),
(2, 2, 2, 40.00, '2023-09-12'),
(3, 3, 3, 30.00, '2023-09-15'),
(4, 4, 4, 50.00, '2023-09-11'),
(5, 5, 5, 35.00, '2023-09-13'),
(6, 6, 6, 60.00, '2023-09-14'),
(7, 7, 7, 45.00, '2023-09-10'),
(8, 8, 8, 55.00, '2023-09-16'),
(9, 9, 9, 20.00, '2023-09-18'),
(10, 10, 10, 65.00, '2023-09-17');

--Task2:
--1)
select * from users;
--2)
select * from Courier where receiverName='Michael Green' or senderName='Michael Green';
--3)
select * from Courier;
--4)
select * from Courier where courierID=5;
--5)
select courierID,trackingNumber, deliveryDate from Courier where status='Delivered';
--6)
select * from Courier where status !='Delivered';
--7)
select * from Courier where deliveryDate='2023-09-11';
--8)
select * from Courier where status='In Transit';
--9)
SELECT courierID, COUNT(*) AS totalPackages FROM Courier GROUP BY courierID;
--10)
SELECT courierID, AVG(DATEDIFF(day, GETDATE(), DeliveryDate)) AS avgDeliveryTime FROM Courier GROUP BY courierID;
--11)
SELECT * FROM Courier WHERE weight BETWEEN 2.0 AND 5.0;
--12)
SELECT * FROM Employee WHERE name LIKE '%John%';
--13)
SELECT Courier.* FROM Courier JOIN Payment ON Courier.courierID = Payment.courierID WHERE Payment.amount > 50;

--Task3:
--14)
SELECT employeeID, COUNT(courierID) AS totalCouriers FROM Courier GROUP BY employeeID;
--15)
SELECT locationID, SUM(amount) AS totalRevenue FROM Payment GROUP BY locationID;
--16)
SELECT l.locationName, COUNT(p.courierID) AS TotalCouriersDelivered FROM Location l JOIN Payment p ON l.locationID = p.locationID
GROUP BY l.locationName;
--17)
SELECT TOP 1 courierID, AVG(DATEDIFF(day, deliveryDate, GETDATE())) AS deliveryTime FROM Courier WHERE deliveryDate IS NOT NULL
GROUP BY courierID ORDER BY deliveryTime DESC;
--18)
SELECT l.locationName, SUM(p.amount) AS TotalPayments FROM Location l JOIN Payment p ON l.locationID = p.locationID 
GROUP BY l.locationName HAVING SUM(p.amount) < 1000;
--19)
SELECT l.locationName, SUM(p.amount) AS TotalPayments FROM Location l JOIN Payment p ON l.locationID = p.locationID
GROUP BY l.locationName;
--20)
SELECT c.courierID, c.trackingNumber, SUM(p.amount) AS TotalPayments FROM Courier c JOIN Payment p ON c.courierID = p.courierID
WHERE p.locationID = 5 GROUP BY c.courierID, c.trackingNumber HAVING SUM(p.amount) > 10;
--21)
SELECT c.courierID, c.trackingNumber, SUM(p.amount) AS TotalPayments FROM Courier c JOIN Payment p ON c.courierID = p.courierID
WHERE p.paymentDate > '2023-09-11' GROUP BY c.courierID, c.trackingNumber HAVING SUM(p.amount) > 10;
--22)
SELECT l.locationName, SUM(p.amount) AS TotalReceived FROM Location l JOIN Payment p ON l.locationID = p.locationID
WHERE p.paymentDate < '2024-09-19' GROUP BY l.locationName HAVING SUM(p.amount) > 30;

-- ******* TASK 4*********
--23)
SELECT p.paymentID, p.amount, p.paymentDate, c.courierID, c.senderName, c.receiverName, c.weight, c.status, c.trackingNumber
FROM Payment p JOIN Courier c ON p.courierID = c.courierID;
--24)
SELECT p.paymentID, p.amount, p.paymentDate, l.locationID, l.locationName, l.address
FROM Payment p JOIN Location l ON p.locationID = l.locationID;
--25)
SELECT p.paymentID, p.amount, p.paymentDate, c.courierID, c.senderName, c.receiverName, l.locationID, l.locationName, l.address
FROM Payment p JOIN Courier c ON p.courierID = c.courierID JOIN Location l ON p.locationID = l.locationID;
--26)
SELECT p.paymentID, p.amount, p.paymentDate, c.trackingNumber, c.senderName, c.receiverName, c.status
FROM Payment p JOIN Courier c ON p.courierID = c.courierID;
--27)
SELECT c.courierID, c.trackingNumber, SUM(p.amount) AS totalPayments
FROM Courier c JOIN Payment p ON c.courierID = p.courierID GROUP BY c.courierID, c.trackingNumber;
--28)
SELECT * FROM Payment WHERE paymentDate = '2023-09-10';
--29)
SELECT p.paymentID, p.courierID, c.senderName, c.receiverName, c.weight, c.status, c.trackingNumber, c.deliveryDate
FROM Payment p JOIN Courier c ON p.courierID = c.courierID;
--30)
SELECT p.paymentID, p.courierID, p.amount, p.paymentDate, l.locationName, l.address 
FROM Payment p JOIN Location l ON p.locationID = l.locationID;
--31)
SELECT c.courierID, c.trackingNumber, SUM(p.amount) AS totalPayments
FROM Courier c JOIN Payment p ON c.courierID = p.courierID GROUP BY c.courierID, c.trackingNumber;
--32)
SELECT * FROM Payment WHERE paymentDate BETWEEN '2023-09-01' AND '2023-09-30';
--33)
SELECT u.userID, u.name, c.courierID, c.senderName, c.receiverName FROM Users u LEFT JOIN Courier c ON u.userID = c.courierID;
--34)
SELECT c.courierID, c.trackingNumber, s.serviceName, s.cost 
FROM Courier c LEFT JOIN CourierServices s ON c.courierID = s.serviceID;
--35)
SELECT e.employeeID, e.name, p.paymentID, p.amount FROM Employee e LEFT JOIN Payment p ON e.employeeID = p.courierID;
--36)
SELECT u.name AS userName, s.serviceName FROM Users u CROSS JOIN CourierServices s;
--37)
SELECT e.name AS employeeName, l.locationName FROM Employee e CROSS JOIN Location l;
--38)
SELECT c.courierID, c.senderName, c.senderAddress FROM Courier c;
--39)
SELECT c.courierID, c.receiverName, c.receiverAddress FROM Courier c;
--40)
SELECT c.courierID, c.trackingNumber, s.serviceName, s.cost
FROM Courier c LEFT JOIN CourierServices s ON c.courierID = s.serviceID;
--41)
SELECT e.employeeID, e.name, COUNT(c.courierID) AS totalCouriers
FROM Employee e LEFT JOIN Courier c ON e.employeeID = c.employeeID GROUP BY e.employeeID, e.name;
--42)
SELECT l.locationName, SUM(p.amount) AS totalAmount
FROM Location l JOIN Payment p ON l.locationID = p.locationID GROUP BY l.locationName;
--43)
SELECT c1.courierID,c1.senderName,c1.senderAddress,c1.receiverName,c1.receiverAddress,c1.weight,c1.status,
c1.trackingNumber,c1.deliveryDate,c1.employeeID
FROM Courier c1 INNER JOIN Courier c2 ON c1.senderName = c2.senderName
WHERE c1.courierID <> c2.courierID;
--44)
SELECT name, role FROM Employee GROUP BY role, name HAVING COUNT(*) > 1;
--45)
SELECT p.paymentID, p.amount, c.senderAddress
FROM Payment p JOIN Courier c ON p.courierID = c.courierID WHERE c.senderAddress LIKE '123 Elm Street';
--46)
SELECT * FROM Courier WHERE senderAddress LIKE '123 Elm Street';
--47)
SELECT e.employeeID, e.name, COUNT(c.courierID) AS totalDelivered
FROM Employee e JOIN Courier c ON e.employeeID = c.employeeID WHERE c.status = 'Delivered' GROUP BY e.employeeID, e.name;
--48)
SELECT c.courierID, c.trackingNumber, p.amount, s.cost
FROM Courier c
JOIN Payment p ON c.courierID = p.courierID
JOIN CourierServices s ON c.courierID = s.serviceID WHERE p.amount > s.cost;

--****scope*****
--49)
SELECT * Courier WHERE weight > (SELECT AVG(weight) FROM Courier);
--50)
SELECT name, salary FROM Employee WHERE salary > (SELECT AVG(salary) FROM Employee);
--51)
SELECT SUM(cost) AS totalCost FROM CourierServices WHERE cost < (SELECT MAX(cost) FROM CourierServices);
--52)
SELECT DISTINCT c.courierID, c.trackingNumber FROM Courier c JOIN Payment p ON c.courierID = p.courierID;
--53)
SELECT locationID, MAX(amount) AS maxPayment FROM Payment GROUP BY locationID;
--54)
SELECT * FROM Courier c1
WHERE c1.weight > (SELECT MAX(c2.weight) FROM Courier c2 WHERE c2.senderName = 'Laura White');



