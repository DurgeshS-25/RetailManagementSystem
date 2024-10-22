
CREATE DATABASE damg6210
--Create
CREATE TABLE Region (
    regionID int NOT NULL,
    regionName varchar(15) NOT NULL,
    CONSTRAINT region_PK PRIMARY key (regionID)
);


CREATE TABLE PostalCode (
    Cust_Postal_Code int NOT NULL,
    Cust_City VARCHAR(20) NOT NULL,
    PRIMARY KEY (Cust_Postal_Code)
);

CREATE TABLE Store (
    storeID int NOT NULL,
    regionID int NOT NULL,
    storeName varchar(10) NOT NULL,
    storeLocation varchar(10) NOT NULL,
    CONSTRAINT store_PK PRIMARY KEY (storeID),
    CONSTRAINT region_FK FOREIGN KEY (regionID) REFERENCES Region(regionID)
);


CREATE TABLE Delivery (
    Delivery_ID int NOT NULL,
    DeliveryDate DATE NOT NULL,
    DeliveryTime TIME NOT NULL,
    PRIMARY KEY (Delivery_ID)
);


CREATE TABLE Tracking (
    trackingID int NOT NULL,
    tracking VARCHAR(25),
    Estimated_Date DATE,
    Delivery_ID int NOT NULL,
    PRIMARY KEY (trackingID),
    FOREIGN KEY(Delivery_ID) REFERENCES Delivery(Delivery_ID)
);


CREATE TABLE Customer (
    customerID int NOT NULL,
    Cust_fname VARCHAR(20) NOT NULL,
    Cust_lname VARCHAR(20) NOT NULL,
    Joining_Date DATE NOT NULL,
    Cust_DOB DATE NOT NULL,
    Cust_Street VARCHAR(20) NOT NULL,
    Cust_Postal_Code INT NOT NULL,
    PRIMARY KEY(customerID),
    FOREIGN KEY(Cust_Postal_Code) REFERENCES PostalCode(Cust_Postal_Code)
);


CREATE TABLE Department (
    departmentID int NOT NULL,
    storeID int NOT NULL,
    departmentName varchar(20) NOT NULL,
    departmentType varchar(20),
    creationDate DATE NOT NULL,
    CONSTRAINT department_PK PRIMARY KEY (departmentID),
    CONSTRAINT store_FK FOREIGN KEY (storeID) REFERENCES Store(storeID)
);


CREATE TABLE Supplier (
    supplierID int NOT NULL,
    supplierName varchar(255) DEFAULT NULL,
    supplierLocation varchar(255) DEFAULT NULL,
    supplierType varchar(255) DEFAULT NULL,
    unitPrice decimal(10,2) DEFAULT NULL,
    PRIMARY KEY (supplierID)
);


CREATE TABLE Manufacturer (
    Contract_date DATE NOT NULL,
    supplier_id int NOT NULL,
    PRIMARY KEY (supplier_id),
    CONSTRAINT manufacturer_ibfk_1 FOREIGN KEY (supplier_id) REFERENCES Supplier(supplierID)
);


CREATE TABLE Wholesaler (
    supplierID int NOT NULL,
    noOfItems int DEFAULT NULL,
    PRIMARY KEY (supplierID),
    CONSTRAINT wholesaler_ibfk_1 FOREIGN KEY (supplierID) REFERENCES Supplier(supplierID)
);

 
CREATE TABLE SupplierLine (
    supplier_id int NOT NULL,
    storeID int NOT NULL,
    Quantiy int,
    PRIMARY KEY (supplier_id, storeID),
    CONSTRAINT supplierline_ibfk_1 FOREIGN KEY (supplier_id) REFERENCES Supplier(supplierID),
    CONSTRAINT supplierline_ibfk_2 FOREIGN KEY (storeID) REFERENCES Store(storeID)
);


CREATE TABLE Products (
    productID int NOT NULL,
    productname VARCHAR(25) NOT NULL,
    customerID int NOT NULL,
    departmentID int NOT NULL,
    PRIMARY KEY (productID),
    FOREIGN KEY (customerID) REFERENCES Customer(customerID),
    FOREIGN KEY (departmentID) REFERENCES Department(departmentID)
);


CREATE TABLE Billing (
    billingID int NOT NULL,
    Amount int NOT NULL,
    Quantity int NOT NULL,
    PRIMARY KEY (billingID)
);


CREATE TABLE EBILL (
    customer_email VARCHAR(20),
    billingID int,
    FOREIGN KEY(billingID) REFERENCES Billing(billingID)
);

CREATE TABLE PhysicalBill (
    storeID int NOT NULL,
    billingID int NOT NULL,
    PRIMARY KEY(billingID),
    FOREIGN KEY(billingID) REFERENCES Billing(billingID),
    FOREIGN KEY (storeID) REFERENCES Store(storeID)
);



CREATE TABLE Employees (
    empID int NOT NULL,
    storeID int,
    emp_fname VARCHAR(20) NOT NULL,
    emp_lname VARCHAR(20) NOT NULL,
    joiningDate DATE NOT NULL,
    Employee_DOB DATE NOT NULL,
    CONSTRAINT emp_pk PRIMARY KEY (empID),
    CONSTRAINT store_FK1 FOREIGN KEY (storeID) REFERENCES Store(storeID)
);


CREATE TABLE Manager (
    Hourly_rate int NOT NULL,
    empID int NOT NULL,
    PRIMARY KEY (empID),
    FOREIGN KEY (empID) REFERENCES Employees(empID)
);


CREATE TABLE Cashier (
    cash_records int NOT NULL,
    empID int NOT NULL,
    PRIMARY KEY (empID),
    FOREIGN KEY (empID) REFERENCES Employees(empID)
);

CREATE TABLE CustomerCare (
    No_of_calls_attended int NOT NULL,
    empID int NOT NULL,
    PRIMARY KEY (empID),
    FOREIGN KEY (empID) REFERENCES Employees(empID)
);


CREATE TABLE Orders (
    orderID int NOT NULL,
    productID int NOT NULL,
    customerID int NOT NULL,
    trackingID int NOT NULL,
    billingID int NOT NULL,
    PRIMARY KEY (orderID),
    FOREIGN KEY (productID) REFERENCES Products(productID),
    FOREIGN KEY (customerID) REFERENCES Customer(customerID),
    FOREIGN KEY (trackingID) REFERENCES Tracking(trackingID),
    FOREIGN KEY (billingID) REFERENCES Billing(billingID)
);


CREATE TABLE Instore (
    orderID int NOT NULL,
    storeID int NOT NULL,
    PRIMARY KEY (orderID),
    FOREIGN KEY (storeID) REFERENCES Store(storeID),
    FOREIGN KEY (orderID) REFERENCES Orders(orderID)
);


CREATE TABLE Online (
    orderID int NOT NULL,
    paymentmode VARCHAR(20) NOT NULL,
    PRIMARY KEY (orderID),
    FOREIGN KEY (orderID) REFERENCES Orders(orderID)
);


CREATE TABLE Inventory (
    InventoryID int NOT NULL,
    storeID int NOT NULL,
    PRIMARY KEY(InventoryID),
    FOREIGN KEY (storeID) REFERENCES Store(storeID)
);


CREATE TABLE TV (
    modelID int NOT NULL,
    InventoryID int NOT NULL,
    color VARCHAR(20) NOT NULL,
    resolution VARCHAR(20) NOT NULL,
    PRIMARY KEY(modelID),
    FOREIGN KEY(InventoryID) REFERENCES Inventory(InventoryID)
);


CREATE TABLE Mobile (
    IMEIID int NOT NULL,
    InventoryID int NOT NULL,
    bandwidth VARCHAR(20) NOT NULL,
    batterylife VARCHAR(20) NOT NULL,
    PRIMARY KEY(IMEIID),
    FOREIGN KEY(InventoryID) REFERENCES Inventory(InventoryID)
);


CREATE TABLE Laptop (
    deviceID int NOT NULL,
    InventoryID int NOT NULL,
    processor VARCHAR(20),
    PRIMARY KEY (deviceID),
    FOREIGN KEY (InventoryID) REFERENCES Inventory(InventoryID)
);

---UDF
CREATE FUNCTION CalculateAge (@DOB DATE)
RETURNS INT
AS
BEGIN
    DECLARE @Age INT;

    -- Calculate age using DATEDIFF
    SET @Age = DATEDIFF(YEAR, @DOB, GETDATE());

    RETURN @Age;
END;

-- Alter the Customer table to add a computed column for Age
ALTER TABLE Customer
ADD Age AS dbo.CalculateAge(Cust_DOB);


--CheckConstraints
ALTER TABLE Employees
ADD CONSTRAINT CHK_ValidJoiningDate CHECK (joiningDate <= GETDATE());

ALTER TABLE Employees
ADD CONSTRAINT CHK_ValidEmployeeAge CHECK (DATEDIFF(YEAR, Employee_DOB, GETDATE()) BETWEEN 18 AND 100);

ALTER TABLE Delivery
ADD CONSTRAINT CHK_ValidDeliveryTime CHECK (DeliveryTime >= '00:00' AND DeliveryTime <= '23:59');

--Triggers

CREATE TRIGGER CustomerHistoryTrigger
ON Customer
AFTER UPDATE
AS
BEGIN
    INSERT INTO CustomerHistory (customerID, Cust_fname, Cust_lname, ModifiedDate)
    SELECT
        customerID,
        Cust_fname,
        Cust_lname,
        GETDATE()
    FROM
        deleted;
END;

ALTER TABLE Customer
ADD LastModifiedDate DATETIME;

CREATE TRIGGER UpdateLastModifiedDate
ON Customer
AFTER UPDATE
AS
BEGIN
    UPDATE c
    SET LastModifiedDate = GETDATE()
    FROM Customer c
    JOIN inserted i ON c.customerID = i.customerID;
END;

--Column encryption

CREATE MASTER KEY 
ENCRYPTION BY 
PASSWORD = 'Group6dmdd123*'


CREATE CERTIFICATE CustEmail
WITH SUBJECT = 'Email Certificate';
GO

CREATE SYMMETRIC KEY cust_email_key
WITH ALGORITHM = AES_256
ENCRYPTION BY CERTIFICATE CustEmail;
GO



ALTER TABLE EBILL
ADD custemail_encrypted VARBINARY(MAX);
GO

OPEN SYMMETRIC KEY cust_email_key
DECRYPTION BY CERTIFICATE CustEmail;

UPDATE EBILL
SET custemail_encrypted = EncryptByKey(Key_GUID('cust_email_key'), customer_email);

CLOSE SYMMETRIC KEY cust_email_key;

SELECT 
    custemail_encrypted, 
    CONVERT(VARCHAR(max), DecryptByKey(custemail_encrypted)) AS DecryptedCustEmail
FROM 
    EBILL;

ALTER TABLE EBILL
DROP COLUMN customer_email;
GO

-- Rename the new column
EXEC sp_rename 'EBILL.custemail_encrypted', 'customer_email', 'COLUMN';
GO

-- Views 
CREATE VIEW CustomerInformation AS
SELECT
    c.customerID,
    c.Cust_fname,
    c.Cust_lname,
    c.Joining_Date,
    c.Cust_DOB,
    c.Cust_Street,
    pc.Cust_Postal_Code,
    pc.Cust_City
FROM
    Customer c
JOIN
    PostalCode pc ON c.Cust_Postal_Code = pc.Cust_Postal_Code;

CREATE VIEW DepartmentStoreInformation AS
SELECT
    d.departmentID,
    d.departmentName,
    d.departmentType,
    d.creationDate,
    s.storeID,
    s.storeName,
    s.storeLocation,
    r.regionName
FROM
    Department d
JOIN
    Store s ON d.storeID = s.storeID
JOIN
    Region r ON s.regionID = r.regionID;

CREATE VIEW ProductSalesInformation AS
SELECT
    p.productID,
    p.productname,
    o.orderID,
    o.trackingID,
    b.Amount,
    b.Quantity,
    c.Cust_fname + ' ' + c.Cust_lname AS CustomerName
FROM
    Products p
JOIN
    Orders o ON p.productID = o.productID
JOIN
    Billing b ON o.billingID = b.billingID
JOIN
    Customer c ON o.customerID = c.customerID;


-- Non clustered Index

CREATE NONCLUSTERED INDEX IX_ProductName
ON Products (productname);


CREATE NONCLUSTERED INDEX IX_JoiningDate
ON Employees (joiningDate);


CREATE NONCLUSTERED INDEX IX_EstimatedDate
ON Tracking (Estimated_Date);

-- Stored Procedures

CREATE PROCEDURE GetCustomerInfoByID
    @CustomerID INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Select customer information based on the provided CustomerID
    SELECT
        customerID,
        Cust_fname,
        Cust_lname,
        Joining_Date,
        Cust_DOB,
        Cust_Street,
        Cust_Postal_Code
    FROM
        Customer
    WHERE
        customerID = @CustomerID;
END;


CREATE PROCEDURE InsertNewProduct
    @ProductID INT,
    @ProductName VARCHAR(25),
    @CustomerID INT,
    @DepartmentID INT
AS
BEGIN
    INSERT INTO Products (productID, productname, customerID, departmentID)
    VALUES (@ProductID, @ProductName, @CustomerID, @DepartmentID);
END;


CREATE PROCEDURE UpdateEmployeeInfo
    @EmpID INT,
    @NewFirstName VARCHAR(20),
    @NewLastName VARCHAR(20)
AS
BEGIN
    UPDATE Employees
    SET emp_fname = @NewFirstName, emp_lname = @NewLastName
    WHERE empID = @EmpID;
END;


DECLARE @FirstName NVARCHAR(20);
DECLARE @LastName NVARCHAR(20);
DECLARE @JoiningDate DATE;

EXEC GetCustomerInfo 
    @CustomerID = 1, 
    @FirstName = @FirstName OUTPUT, 
    @LastName = @LastName OUTPUT, 
    @JoiningDate = @JoiningDate OUTPUT;


-- Example: Assuming productID is 123
EXEC InsertNewProduct
    @ProductID = 123,
    @ProductName = 'New Product',
    @CustomerID = 1,
    @DepartmentID = 2;


EXEC UpdateEmployeeInfo
    @EmpID = 1,
    @NewFirstName = 'UpdatedFirst',
    @NewLastName = 'UpdatedLast';


