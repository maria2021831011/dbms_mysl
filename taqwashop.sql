CREATE DATABASE taqwa;
USE taqwa;
CREATE TABLE Category (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL,
    Description TEXT
);

-- 2. Product Table
CREATE TABLE Product (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    SKU VARCHAR(50) UNIQUE NOT NULL,
    Brand VARCHAR(50),
    CategoryID INT,
    UnitPrice DECIMAL(10,2) NOT NULL,
    QuantityInStock INT DEFAULT 0,
    ExpiryDate DATE,
    LowStockThreshold INT DEFAULT 10,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- 3. Customer Table
CREATE TABLE Customer (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(15),
    Address TEXT,
    Email VARCHAR(100),
    LoyaltyCardID INT UNIQUE
);

-- 4. LoyaltyCard Table
CREATE TABLE LoyaltyCard (
    LoyaltyCardID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT UNIQUE,
    CardType VARCHAR(50),
    Points INT DEFAULT 0,
    DiscountRate DECIMAL(5,2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- 5. Invoice Table
CREATE TABLE Invoice (
    InvoiceID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    Date DATETIME DEFAULT CURRENT_TIMESTAMP,
    Subtotal DECIMAL(10,2),
    DiscountAmount DECIMAL(10,2),
    VAT DECIMAL(10,2),
    NetTotal DECIMAL(10,2),
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- 6. InvoiceItem Table
CREATE TABLE InvoiceItem (
    InvoiceItemID INT AUTO_INCREMENT PRIMARY KEY,
    InvoiceID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    DiscountApplied DECIMAL(10,2),
    TotalPrice DECIMAL(10,2),
    FOREIGN KEY (InvoiceID) REFERENCES Invoice(InvoiceID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- 7. Supplier Table
CREATE TABLE Supplier (
    SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Address TEXT
);

-- 8. PurchaseOrder Table
CREATE TABLE PurchaseOrder (
    PurchaseOrderID INT AUTO_INCREMENT PRIMARY KEY,
    SupplierID INT,
    DateCreated DATE,
    Status VARCHAR(20) DEFAULT 'Pending',
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
);

-- 9. PurchaseOrderItem Table
CREATE TABLE PurchaseOrderItem (
    PurchaseOrderItemID INT AUTO_INCREMENT PRIMARY KEY,
    PurchaseOrderID INT,
    ProductID INT,
    QuantityOrdered INT,
    UnitCost DECIMAL(10,2),
    FOREIGN KEY (PurchaseOrderID) REFERENCES PurchaseOrder(PurchaseOrderID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- 10. GoodsReceivedNote Table
CREATE TABLE GoodsReceivedNote (
    GRN_ID INT AUTO_INCREMENT PRIMARY KEY,
    PurchaseOrderID INT,
    ReceivedDate DATE,
    VerifiedBy VARCHAR(100),
    Remarks TEXT,
    FOREIGN KEY (PurchaseOrderID) REFERENCES PurchaseOrder(PurchaseOrderID)
);

-- 11. Expense Table
CREATE TABLE Expense (
    ExpenseID INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE,
    Category VARCHAR(50),
    Amount DECIMAL(10,2),
    Notes TEXT
);

-- 12. SalesRecord Table
CREATE TABLE SalesRecord (
    SalesRecordID INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE,
    TotalSales DECIMAL(10,2),
    TotalVAT DECIMAL(10,2),
    TotalDiscount DECIMAL(10,2),
    TotalExpenses DECIMAL(10,2),
    NetProfit DECIMAL(10,2)
);

-- 13. Role Table
CREATE TABLE Role (
    RoleID INT AUTO_INCREMENT PRIMARY KEY,
    RoleName VARCHAR(50),
    Permissions TEXT
);

-- 14. Employee Table
CREATE TABLE Employee (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Phone VARCHAR(15),
    Email VARCHAR(100),
    RoleID INT,
    Username VARCHAR(50) UNIQUE,
    PasswordHash VARCHAR(255),
    FOREIGN KEY (RoleID) REFERENCES Role(RoleID)
);

-- 15. LoginLog Table
CREATE TABLE LoginLog (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT,
    LoginTime DATETIME,
    LogoutTime DATETIME,
    IPAddress VARCHAR(45),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

-- 16. Report Table
CREATE TABLE Report (
    ReportID INT AUTO_INCREMENT PRIMARY KEY,
    GeneratedBy INT,
    ReportType VARCHAR(50),
    DateRangeStart DATE,
    DateRangeEnd DATE,
    Format VARCHAR(20),
    FOREIGN KEY (GeneratedBy) REFERENCES Employee(EmployeeID)
);
