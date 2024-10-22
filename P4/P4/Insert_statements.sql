-- Region
INSERT INTO Region VALUES (1, 'North');
INSERT INTO Region VALUES (2, 'South');
INSERT INTO Region VALUES (3, 'East');
INSERT INTO Region VALUES (4, 'West');
INSERT INTO Region VALUES (5, 'Central');
INSERT INTO Region VALUES (6, 'Northeast');
INSERT INTO Region VALUES (7, 'Southeast');
INSERT INTO Region VALUES (8, 'Northwest');
INSERT INTO Region VALUES (9, 'Southwest');
INSERT INTO Region VALUES (10, 'Midwest');

-- PostalCode
INSERT INTO PostalCode VALUES (12345, 'CityA');
INSERT INTO PostalCode VALUES (67890, 'CityB');
INSERT INTO PostalCode VALUES (13579, 'CityC');
INSERT INTO PostalCode VALUES (24680, 'CityD');
INSERT INTO PostalCode VALUES (98765, 'CityE');
INSERT INTO PostalCode VALUES (11111, 'CityF');
INSERT INTO PostalCode VALUES (22222, 'CityG');
INSERT INTO PostalCode VALUES (33333, 'CityH');
INSERT INTO PostalCode VALUES (44444, 'CityI');
INSERT INTO PostalCode VALUES (55555, 'CityJ');

-- Store
INSERT INTO Store VALUES (1, 1, 'Store1', 'Location1');
INSERT INTO Store VALUES (2, 2, 'Store2', 'Location2');
INSERT INTO Store VALUES (3, 3, 'Store3', 'Location3');
INSERT INTO Store VALUES (4, 4, 'Store4', 'Location4');
INSERT INTO Store VALUES (5, 5, 'Store5', 'Location5');
INSERT INTO Store VALUES (6, 1, 'Store6', 'Location6');
INSERT INTO Store VALUES (7, 2, 'Store7', 'Location7');
INSERT INTO Store VALUES (8, 3, 'Store8', 'Location8');
INSERT INTO Store VALUES (9, 4, 'Store9', 'Location9');
INSERT INTO Store VALUES (10, 5, 'Store10', 'Location10');

-- Delivery
INSERT INTO Delivery VALUES (1, '2023-01-01', '12:00:00');
INSERT INTO Delivery VALUES (2, '2023-02-01', '15:30:00');
INSERT INTO Delivery VALUES (3, '2023-03-01', '10:00:00');
INSERT INTO Delivery VALUES (4, '2023-04-01', '14:45:00');
INSERT INTO Delivery VALUES (5, '2023-05-01', '16:30:00');
INSERT INTO Delivery VALUES (6, '2023-06-01', '11:00:00');
INSERT INTO Delivery VALUES (7, '2023-07-01', '13:15:00');
INSERT INTO Delivery VALUES (8, '2023-08-01', '09:45:00');
INSERT INTO Delivery VALUES (9, '2023-09-01', '17:00:00');
INSERT INTO Delivery VALUES (10, '2023-10-01', '14:00:00');

-- Tracking
INSERT INTO Tracking VALUES (1, 'ABC123', '2023-01-03', 1);
INSERT INTO Tracking VALUES (2, 'XYZ456', '2023-02-03', 2);
INSERT INTO Tracking VALUES (3, 'DEF789', '2023-03-03', 3);
INSERT INTO Tracking VALUES (4, 'GHI012', '2023-04-03', 4);
INSERT INTO Tracking VALUES (5, 'JKL345', '2023-05-03', 5);
INSERT INTO Tracking VALUES (6, 'MNO678', '2023-06-03', 6);
INSERT INTO Tracking VALUES (7, 'PQR901', '2023-07-03', 7);
INSERT INTO Tracking VALUES (8, 'STU234', '2023-08-03', 8);
INSERT INTO Tracking VALUES (9, 'VWX567', '2023-09-03', 9);
INSERT INTO Tracking VALUES (10, 'YZA890', '2023-10-03', 10);

-- Customer
INSERT INTO Customer VALUES (1, 'John', 'Doe', '2022-01-10', '1990-05-15', 'Street1', 12345);
INSERT INTO Customer VALUES (2, 'Jane', 'Smith', '2022-02-15', '1985-08-20', 'Street2', 67890);
INSERT INTO Customer VALUES (3, 'Bob', 'Johnson', '2022-03-20', '1998-12-05', 'Street3', 13579);
INSERT INTO Customer VALUES (4, 'Alice', 'Williams', '2022-04-25', '1980-09-18', 'Street4', 24680);
INSERT INTO Customer VALUES (5, 'Charlie', 'Brown', '2022-05-30', '1995-02-22', 'Street5', 98765);
INSERT INTO Customer VALUES (6, 'Eva', 'Davis', '2022-06-05', '1992-06-10', 'Street6', 11111);
INSERT INTO Customer VALUES (7, 'Frank', 'Miller', '2022-07-15', '1987-11-15', 'Street7', 22222);
INSERT INTO Customer VALUES (8, 'Grace', 'Clark', '2022-08-20', '1993-04-20', 'Street8', 33333);
INSERT INTO Customer VALUES (9, 'Harry', 'Lee', '2022-09-25', '1982-08-25', 'Street9', 44444);
INSERT INTO Customer VALUES (10, 'Ivy', 'Wang', '2022-10-30', '1997-03-30', 'Street10', 55555);

-- Department
INSERT INTO Department VALUES (1, 1, 'Electronics', 'Electronics', '2022-01-20');
INSERT INTO Department VALUES (2, 2, 'Clothing', 'Apparel', '2022-02-25');
INSERT INTO Department VALUES (3, 3, 'Grocery', 'Food', '2022-03-10');
INSERT INTO Department VALUES (4, 4, 'Toys', 'Toys', '2022-04-15');
INSERT INTO Department VALUES (5, 5, 'Home', 'Furniture', '2022-05-20');
INSERT INTO Department VALUES (6, 1, 'Sports', 'Sporting Goods', '2022-06-25');
INSERT INTO Department VALUES (7, 2, 'Beauty', 'Cosmetics', '2022-07-30');
INSERT INTO Department VALUES (8, 3, 'Books', 'Literature', '2022-08-05');
INSERT INTO Department VALUES (9, 4, 'Automotive', 'Auto Parts', '2022-09-10');
INSERT INTO Department VALUES (10, 5, 'Pets', 'Pet Supplies', '2022-10-15');

-- Supplier
INSERT INTO Supplier VALUES (1, 'Supplier1', 'Location1', 'Type1', 50.00);
INSERT INTO Supplier VALUES (2, 'Supplier2', 'Location2', 'Type2', 75.00);
INSERT INTO Supplier VALUES (3, 'Supplier3', 'Location3', 'Type3', 60.00);
INSERT INTO Supplier VALUES (4, 'Supplier4', 'Location4', 'Type4', 80.00);
INSERT INTO Supplier VALUES (5, 'Supplier5', 'Location5', 'Type5', 70.00);
INSERT INTO Supplier VALUES (6, 'Supplier6', 'Location6', 'Type6', 55.00);
INSERT INTO Supplier VALUES (7, 'Supplier7', 'Location7', 'Type7', 65.00);
INSERT INTO Supplier VALUES (8, 'Supplier8', 'Location8', 'Type8', 90.00);
INSERT INTO Supplier VALUES (9, 'Supplier9', 'Location9', 'Type9', 85.00);
INSERT INTO Supplier VALUES (10, 'Supplier10', 'Location10', 'Type10', 100.00);

-- Manufacturer
INSERT INTO Manufacturer VALUES ('2022-01-05', 1);
INSERT INTO Manufacturer VALUES ('2022-02-10', 2);
INSERT INTO Manufacturer VALUES ('2022-03-15', 3);
INSERT INTO Manufacturer VALUES ('2022-04-20', 4);
INSERT INTO Manufacturer VALUES ('2022-05-25', 5);
INSERT INTO Manufacturer VALUES ('2022-06-30', 6);
INSERT INTO Manufacturer VALUES ('2022-07-05', 7);
INSERT INTO Manufacturer VALUES ('2022-08-10', 8);
INSERT INTO Manufacturer VALUES ('2022-09-15', 9);
INSERT INTO Manufacturer VALUES ('2022-10-20', 10);

-- Wholesaler
INSERT INTO Wholesaler VALUES (1, 500);
INSERT INTO Wholesaler VALUES (2, 1000);
INSERT INTO Wholesaler VALUES (3, 750);
INSERT INTO Wholesaler VALUES (4, 1200);
INSERT INTO Wholesaler VALUES (5, 800);
INSERT INTO Wholesaler VALUES (6, 600);
INSERT INTO Wholesaler VALUES (7, 900);
INSERT INTO Wholesaler VALUES (8, 1100);
INSERT INTO Wholesaler VALUES (9, 950);
INSERT INTO Wholesaler VALUES (10, 700);


-- SupplierLine
INSERT INTO SupplierLine VALUES (1, 1, 100);
INSERT INTO SupplierLine VALUES (2, 2, 200);
INSERT INTO SupplierLine VALUES (3, 3, 150);
INSERT INTO SupplierLine VALUES (4, 4, 250);
INSERT INTO SupplierLine VALUES (5, 5, 180);
INSERT INTO SupplierLine VALUES (6, 6, 120);
INSERT INTO SupplierLine VALUES (7, 7, 300);
INSERT INTO SupplierLine VALUES (8, 8, 90);
INSERT INTO SupplierLine VALUES (9, 9, 200);
INSERT INTO SupplierLine VALUES (10, 10, 150);

-- Products
INSERT INTO Products VALUES (1, 'Smartphone', 1, 1);
INSERT INTO Products VALUES (2, 'Laptop', 2, 2);
INSERT INTO Products VALUES (3, 'TV', 3, 3);
INSERT INTO Products VALUES (4, 'Clothing', 4, 4);
INSERT INTO Products VALUES (5, 'Toys', 5, 5);
INSERT INTO Products VALUES (6, 'Sports Equipment', 6, 6);
INSERT INTO Products VALUES (7, 'Beauty Products', 7, 7);
INSERT INTO Products VALUES (8, 'Books', 8, 8);
INSERT INTO Products VALUES (9, 'Car Parts', 9, 9);
INSERT INTO Products VALUES (10, 'Pet Supplies', 10, 10);

-- Billing
INSERT INTO Billing VALUES (1, 100, 2);
INSERT INTO Billing VALUES (2, 150, 3);
INSERT INTO Billing VALUES (3, 120, 1);
INSERT INTO Billing VALUES (4, 200, 4);
INSERT INTO Billing VALUES (5, 80, 2);
INSERT INTO Billing VALUES (6, 160, 5);
INSERT INTO Billing VALUES (7, 90, 2);
INSERT INTO Billing VALUES (8, 130, 3);
INSERT INTO Billing VALUES (9, 110, 2);
INSERT INTO Billing VALUES (10, 180, 4);

-- EBILL
INSERT INTO EBILL VALUES ('john.doe@example.com', 1);
INSERT INTO EBILL VALUES ('jane.smith@example.com', 2);
INSERT INTO EBILL VALUES ('bob.johnson@example.com', 3);
INSERT INTO EBILL VALUES ('alice.williams@example.com', 4);
INSERT INTO EBILL VALUES ('charlie.brown@example.com', 5);
INSERT INTO EBILL VALUES ('eva.davis@example.com', 6);
INSERT INTO EBILL VALUES ('frank.miller@example.com', 7);
INSERT INTO EBILL VALUES ('grace.clark@example.com', 8);
INSERT INTO EBILL VALUES ('harry.lee@example.com', 9);
INSERT INTO EBILL VALUES ('ivy.wang@example.com', 10);

select * from EBILL
-- Remove the third entry from EBILL
DELETE FROM EBILL WHERE billingID = 10;



-- PhysicalBill
INSERT INTO PhysicalBill VALUES (1, 1);
INSERT INTO PhysicalBill VALUES (2, 2);
INSERT INTO PhysicalBill VALUES (3, 3);
INSERT INTO PhysicalBill VALUES (4, 4);
INSERT INTO PhysicalBill VALUES (5, 5);
INSERT INTO PhysicalBill VALUES (6, 6);
INSERT INTO PhysicalBill VALUES (7, 7);
INSERT INTO PhysicalBill VALUES (8, 8);
INSERT INTO PhysicalBill VALUES (9, 9);
INSERT INTO PhysicalBill VALUES (10, 10);

-- Employees
INSERT INTO Employees VALUES (1, 1, 'Employee1', 'Last1', '2022-01-15', '1990-05-20');
INSERT INTO Employees VALUES (2, 2, 'Employee2', 'Last2', '2022-02-20', '1985-08-25');
INSERT INTO Employees VALUES (3, 3, 'Employee3', 'Last3', '2022-03-25', '1998-12-10');
INSERT INTO Employees VALUES (4, 4, 'Employee4', 'Last4', '2022-04-30', '1980-09-23');
INSERT INTO Employees VALUES (5, 5, 'Employee5', 'Last5', '2022-05-05', '1995-02-28');
INSERT INTO Employees VALUES (6, 1, 'Employee6', 'Last6', '2022-06-10', '1992-06-15');
INSERT INTO Employees VALUES (7, 2, 'Employee7', 'Last7', '2022-07-15', '1987-11-20');
INSERT INTO Employees VALUES (8, 3, 'Employee8', 'Last8', '2022-08-20', '1993-04-25');
INSERT INTO Employees VALUES (9, 4, 'Employee9', 'Last9', '2022-09-25', '1982-08-30');
INSERT INTO Employees VALUES (10, 5, 'Employee10', 'Last10', '2022-10-30', '1997-03-30');

-- Manager
INSERT INTO Manager VALUES (20, 1);
INSERT INTO Manager VALUES (25, 2);
INSERT INTO Manager VALUES (22, 3);
INSERT INTO Manager VALUES (27, 4);
INSERT INTO Manager VALUES (30, 5);
INSERT INTO Manager VALUES (18, 6);
INSERT INTO Manager VALUES (23, 7);
INSERT INTO Manager VALUES (28, 8);
INSERT INTO Manager VALUES (24, 9);
INSERT INTO Manager VALUES (29, 10);

-- Cashier
INSERT INTO Cashier VALUES (100, 1);
INSERT INTO Cashier VALUES (120, 2);
INSERT INTO Cashier VALUES (110, 3);
INSERT INTO Cashier VALUES (130, 4);
INSERT INTO Cashier VALUES (90, 5);
INSERT INTO Cashier VALUES (105, 6);
INSERT INTO Cashier VALUES (95, 7);
INSERT INTO Cashier VALUES (115, 8);
INSERT INTO Cashier VALUES (125, 9);
INSERT INTO Cashier VALUES (80, 10);

-- CustomerCare
INSERT INTO CustomerCare VALUES (50, 1);
INSERT INTO CustomerCare VALUES (40, 2);
INSERT INTO CustomerCare VALUES (45, 3);
INSERT INTO CustomerCare VALUES (35, 4);
INSERT INTO CustomerCare VALUES (60, 5);
INSERT INTO CustomerCare VALUES (55, 6);
INSERT INTO CustomerCare VALUES (42, 7);
INSERT INTO CustomerCare VALUES (48, 8);
INSERT INTO CustomerCare VALUES (38, 9);
INSERT INTO CustomerCare VALUES (52, 10);

-- Orders
INSERT INTO Orders VALUES (1, 1, 1, 1, 1);
INSERT INTO Orders VALUES (2, 2, 2, 2, 2);
INSERT INTO Orders VALUES (3, 3, 3, 3, 3);
INSERT INTO Orders VALUES (4, 4, 4, 4, 4);
INSERT INTO Orders VALUES (5, 5, 5, 5, 5);
INSERT INTO Orders VALUES (6, 6, 6, 6, 6);
INSERT INTO Orders VALUES (7, 7, 7, 7, 7);
INSERT INTO Orders VALUES (8, 8, 8, 8, 8);
INSERT INTO Orders VALUES (9, 9, 9, 9, 9);
INSERT INTO Orders VALUES (10, 10, 10, 10, 10);

-- Instore
INSERT INTO Instore VALUES (1, 1);
INSERT INTO Instore VALUES (2, 2);
INSERT INTO Instore VALUES (3, 3);
INSERT INTO Instore VALUES (4, 4);
INSERT INTO Instore VALUES (5, 5);
INSERT INTO Instore VALUES (6, 6);
INSERT INTO Instore VALUES (7, 7);
INSERT INTO Instore VALUES (8, 8);
INSERT INTO Instore VALUES (9, 9);
INSERT INTO Instore VALUES (10, 10);

-- Online
INSERT INTO Online VALUES (1, 'Credit Card');
INSERT INTO Online VALUES (2, 'PayPal');
INSERT INTO Online VALUES (3, 'Debit Card');
INSERT INTO Online VALUES (4, 'Google Pay');
INSERT INTO Online VALUES (5, 'Apple Pay');
INSERT INTO Online VALUES (6, 'Bank Transfer');
INSERT INTO Online VALUES (7, 'Cryptocurrency');
INSERT INTO Online VALUES (8, 'Venmo');
INSERT INTO Online VALUES (9, 'Stripe');
INSERT INTO Online VALUES (10, 'Amazon Pay');

-- Inventory
INSERT INTO Inventory VALUES (1, 1);
INSERT INTO Inventory VALUES (2, 2);
INSERT INTO Inventory VALUES (3, 3);
INSERT INTO Inventory VALUES (4, 4);
INSERT INTO Inventory VALUES (5, 5);
INSERT INTO Inventory VALUES (6, 1);
INSERT INTO Inventory VALUES (7, 2);
INSERT INTO Inventory VALUES (8, 3);
INSERT INTO Inventory VALUES (9, 4);
INSERT INTO Inventory VALUES (10, 5);

-- TV
INSERT INTO TV VALUES (101, 1, 'Black', '1080p');
INSERT INTO TV VALUES (102, 2, 'Silver', '4K');
INSERT INTO TV VALUES (103, 3, 'White', '720p');
INSERT INTO TV VALUES (104, 4, 'Gray', '1080p');
INSERT INTO TV VALUES (105, 5, 'Black', '4K');
INSERT INTO TV VALUES (106, 6, 'Silver', '1080p');
INSERT INTO TV VALUES (107, 7, 'White', '4K');
INSERT INTO TV VALUES (108, 8, 'Black', '720p');
INSERT INTO TV VALUES (109, 9, 'Gray', '4K');
INSERT INTO TV VALUES (110, 10, 'Silver', '1080p');

-- Mobile
INSERT INTO Mobile VALUES (201, 1, '4G', '12 hours');
INSERT INTO Mobile VALUES (202, 2, '5G', '18 hours');
INSERT INTO Mobile VALUES (203, 3, '3G', '10 hours');
INSERT INTO Mobile VALUES (204, 4, '4G', '15 hours');
INSERT INTO Mobile VALUES (205, 5, '5G', '20 hours');
INSERT INTO Mobile VALUES (206, 6, '4G', '14 hours');
INSERT INTO Mobile VALUES (207, 7, '3G', '11 hours');
INSERT INTO Mobile VALUES (208, 8, '5G', '17 hours');
INSERT INTO Mobile VALUES (209, 9, '4G', '13 hours');
INSERT INTO Mobile VALUES (210, 10, '3G', '16 hours');

-- Laptop
INSERT INTO Laptop VALUES (301, 1, 'Intel Core i5');
INSERT INTO Laptop VALUES (302, 2, 'AMD Ryzen 7');
INSERT INTO Laptop VALUES (303, 3, 'Intel Core i3');
INSERT INTO Laptop VALUES (304, 4, 'AMD Ryzen 5');
INSERT INTO Laptop VALUES (305, 5, 'Intel Core i7');
INSERT INTO Laptop VALUES (306, 6, 'AMD Ryzen 9');
INSERT INTO Laptop VALUES (307, 7, 'Intel Core i5');
INSERT INTO Laptop VALUES (308, 8, 'AMD Ryzen 7');
INSERT INTO Laptop VALUES (309, 9, 'Intel Core i3');
INSERT INTO Laptop VALUES (310, 10, 'AMD Ryzen 5');