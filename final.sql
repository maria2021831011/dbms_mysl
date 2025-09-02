-- Create and use the database
CREATE DATABASE IF NOT EXISTS TAQWASHOP;
USE TAQWASHOP;

-- 1. Customer table
CREATE TABLE Customer (
    customerID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL UNIQUE,
    address VARCHAR(255),
    customerPoints INT DEFAULT 0,
    joinDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    email VARCHAR(100),
    gender VARCHAR(10),
    dateOfBirth DATE,
    loyaltyTier VARCHAR(50),
    status VARCHAR(20) DEFAULT 'Active',
    lastPurchaseDate DATE,
    totalSpent DECIMAL(12,2) DEFAULT 0,
    preferredPaymentMethod VARCHAR(20),
    notes TEXT
);

-- 2. Staff table
CREATE TABLE Staff (
    staffID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(20) NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    joinDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    email VARCHAR(100),
    phone VARCHAR(20),
    status VARCHAR(20) DEFAULT 'Active',
    lastLogin DATETIME,
    remarks VARCHAR(255),
    managerID INT NULL,
    salary DECIMAL(10,2),
    department VARCHAR(50),
    shift VARCHAR(20),
    address VARCHAR(255),
    emergencyContact VARCHAR(20),
    FOREIGN KEY (managerID) REFERENCES Staff(staffID)
);

-- 3. Supplier table
CREATE TABLE Supplier (
    supplierID INT AUTO_INCREMENT PRIMARY KEY,
    supplierName VARCHAR(100) NOT NULL,
    contactPerson VARCHAR(100),
    phone VARCHAR(20) NOT NULL,
    address VARCHAR(150),
    email VARCHAR(100),
    rating DECIMAL(3,2),
    status VARCHAR(20) DEFAULT 'Active',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    notes VARCHAR(255),
    paymentTerms VARCHAR(50),
    accountNumber VARCHAR(50),
    bankName VARCHAR(100)
);

-- 4. Product Category table
CREATE TABLE ProductCategory (
    categoryID INT AUTO_INCREMENT PRIMARY KEY,
    categoryName VARCHAR(50) NOT NULL,
    description VARCHAR(255),
    parentCategoryID INT NULL,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'Active',
    imageURL VARCHAR(255),
    displayOrder INT,
    taxRate DECIMAL(5,2),
    FOREIGN KEY (parentCategoryID) REFERENCES ProductCategory(categoryID)
);

-- 5. Brand table
CREATE TABLE Brand (
    brandID INT AUTO_INCREMENT PRIMARY KEY,
    brandName VARCHAR(50) NOT NULL,
    description VARCHAR(255),
    contactInfo VARCHAR(100),
    website VARCHAR(100),
    status VARCHAR(20) DEFAULT 'Active',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    logoURL VARCHAR(255),
    countryOfOrigin VARCHAR(50)
);

-- 6. Product table
CREATE TABLE Product (
    productID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    categoryID INT NOT NULL,
    brandID INT NOT NULL,
    supplierID INT NOT NULL,
    purchasePrice DECIMAL(10,2),
    sellingPrice DECIMAL(10,2),
    status VARCHAR(20) DEFAULT 'Available',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    weight DECIMAL(8,2),
    dimensions VARCHAR(50),
    barcode VARCHAR(100) UNIQUE,
    reorderLevel INT,
    taxRate DECIMAL(5,2),
    FOREIGN KEY (categoryID) REFERENCES ProductCategory(categoryID),
    FOREIGN KEY (brandID) REFERENCES Brand(brandID),
    FOREIGN KEY (supplierID) REFERENCES Supplier(supplierID)
);

-- 7. Inventory table
CREATE TABLE Inventory (
    inventoryID INT AUTO_INCREMENT PRIMARY KEY,
    productID INT NOT NULL,
    quantity INT NOT NULL,
    location VARCHAR(50),
    expiryDate DATE,
    batchNumber VARCHAR(50),
    status VARCHAR(20) DEFAULT 'Available',
    lastStockTake DATE,
    minimumStockLevel INT,
    maximumStockLevel INT,
    notes VARCHAR(255),
    FOREIGN KEY (productID) REFERENCES Product(productID)
);

-- 8. PurchaseOrder table
CREATE TABLE PurchaseOrder (
    orderID INT AUTO_INCREMENT PRIMARY KEY,
    supplierID INT NOT NULL,
    orderDate DATE NOT NULL,
    deliveryDate DATE NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'Pending',
    totalAmount DECIMAL(12,2),
    createdBy INT NOT NULL,
    approvedBy INT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    remarks VARCHAR(255),
    paymentStatus VARCHAR(20) DEFAULT 'Pending',
    shippingCost DECIMAL(10,2),
    FOREIGN KEY (supplierID) REFERENCES Supplier(supplierID),
    FOREIGN KEY (createdBy) REFERENCES Staff(staffID),
    FOREIGN KEY (approvedBy) REFERENCES Staff(staffID)
);

-- 9. PurchaseOrderDetails table
CREATE TABLE PurchaseOrderDetails (
    orderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    orderID INT NOT NULL,
    productID INT NOT NULL,
    quantity INT NOT NULL,
    unitPrice DECIMAL(10,2) NOT NULL,
    totalPrice DECIMAL(10,2) NOT NULL,
    receivedQuantity INT DEFAULT 0,
    status VARCHAR(20) DEFAULT 'Pending',
    notes VARCHAR(255),
    FOREIGN KEY (orderID) REFERENCES PurchaseOrder(orderID),
    FOREIGN KEY (productID) REFERENCES Product(productID)
);

-- 10. CustomerOrder table
CREATE TABLE CustomerOrder (
    orderID INT AUTO_INCREMENT PRIMARY KEY,
    customerID INT NULL,
    orderDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) NOT NULL DEFAULT 'Pending',
    totalAmount DECIMAL(12,2) NOT NULL,
    paymentMethod VARCHAR(20),
    paymentStatus VARCHAR(20) DEFAULT 'Pending',
    shippingAddress VARCHAR(255),
    notes VARCHAR(255),
    staffID INT NOT NULL,
    discountAmount DECIMAL(10,2) DEFAULT 0,
    taxAmount DECIMAL(10,2) DEFAULT 0,
    finalAmount DECIMAL(12,2) NOT NULL,
    FOREIGN KEY (customerID) REFERENCES Customer(customerID),
    FOREIGN KEY (staffID) REFERENCES Staff(staffID)
);

-- 11. OrderDetails table
CREATE TABLE OrderDetails (
    orderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    orderID INT NOT NULL,
    productID INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    unitPrice DECIMAL(10,2) NOT NULL,
    totalPrice DECIMAL(10,2) NOT NULL,
    discountPercentage DECIMAL(5,2) DEFAULT 0,
    notes VARCHAR(255),
    FOREIGN KEY (orderID) REFERENCES CustomerOrder(orderID),
    FOREIGN KEY (productID) REFERENCES Product(productID)
);

-- 12. Invoice table
CREATE TABLE Invoice (
    invoiceID INT AUTO_INCREMENT PRIMARY KEY,
    orderID INT NOT NULL,
    invoiceDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    dueDate DATE,
    totalAmount DECIMAL(12,2) NOT NULL,
    taxAmount DECIMAL(10,2) DEFAULT 0,
    discountAmount DECIMAL(10,2) DEFAULT 0,
    status VARCHAR(20) DEFAULT 'Unpaid',
    paymentMethod VARCHAR(20),
    paymentDate DATETIME,
    notes VARCHAR(255),
    createdBy INT NOT NULL,
    FOREIGN KEY (orderID) REFERENCES CustomerOrder(orderID),
    FOREIGN KEY (createdBy) REFERENCES Staff(staffID)
);

-- 13. Payment table
CREATE TABLE Payment (
    paymentID INT AUTO_INCREMENT PRIMARY KEY,
    invoiceID INT NOT NULL,
    amount DECIMAL(12,2) NOT NULL,
    paymentDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    paymentMethod VARCHAR(20) NOT NULL,
    transactionID VARCHAR(100),
    status VARCHAR(20) DEFAULT 'Completed',
    notes VARCHAR(255),
    processedBy INT NOT NULL,
    FOREIGN KEY (invoiceID) REFERENCES Invoice(invoiceID),
    FOREIGN KEY (processedBy) REFERENCES Staff(staffID)
);

-- 14. ExpenseCategory table
CREATE TABLE ExpenseCategory (
    categoryID INT AUTO_INCREMENT PRIMARY KEY,
    categoryName VARCHAR(50) NOT NULL,
    description VARCHAR(255),
    status VARCHAR(20) DEFAULT 'Active',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 15. Expense table
CREATE TABLE Expense (
    expenseID INT AUTO_INCREMENT PRIMARY KEY,
    categoryID INT NOT NULL,
    amount DECIMAL(12,2) NOT NULL,
    expenseDate DATE NOT NULL,
    description VARCHAR(255),
    paymentMethod VARCHAR(20),
    status VARCHAR(20) DEFAULT 'Pending',
    approvedBy INT,
    notes VARCHAR(255),
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    vendor VARCHAR(100),
    referenceNumber VARCHAR(100),
    FOREIGN KEY (categoryID) REFERENCES ExpenseCategory(categoryID),
    FOREIGN KEY (approvedBy) REFERENCES Staff(staffID)
);

-- 16. Shift table
CREATE TABLE Shift (
    shiftID INT AUTO_INCREMENT PRIMARY KEY,
    shiftName VARCHAR(50) NOT NULL,
    startTime TIME NOT NULL,
    endTime TIME NOT NULL,
    description VARCHAR(255),
    status VARCHAR(20) DEFAULT 'Active'
);

-- 17. StaffSchedule table
CREATE TABLE StaffSchedule (
    scheduleID INT AUTO_INCREMENT PRIMARY KEY,
    staffID INT NOT NULL,
    shiftID INT NOT NULL,
    scheduleDate DATE NOT NULL,
    status VARCHAR(20) DEFAULT 'Scheduled',
    notes VARCHAR(255),
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (staffID) REFERENCES Staff(staffID),
    FOREIGN KEY (shiftID) REFERENCES Shift(shiftID)
);

-- 18. Attendance table
CREATE TABLE Attendance (
    attendanceID INT AUTO_INCREMENT PRIMARY KEY,
    staffID INT NOT NULL,
    attendanceDate DATE NOT NULL,
    shiftID INT NOT NULL,
    checkIn TIME,
    checkOut TIME,
    status VARCHAR(20) DEFAULT 'Present',
    notes VARCHAR(255),
    hoursWorked DECIMAL(4,2),
    FOREIGN KEY (staffID) REFERENCES Staff(staffID),
    FOREIGN KEY (shiftID) REFERENCES Shift(shiftID)
);

-- 19. Promotion table
CREATE TABLE Promotion (
    promotionID INT AUTO_INCREMENT PRIMARY KEY,
    promotionName VARCHAR(100) NOT NULL,
    description TEXT,
    discountType VARCHAR(20) NOT NULL,
    discountValue DECIMAL(10,2) NOT NULL,
    startDate DATE NOT NULL,
    endDate DATE NOT NULL,
    status VARCHAR(20) DEFAULT 'Active',
    minPurchaseAmount DECIMAL(10,2),
    maxDiscountAmount DECIMAL(10,2),
    usageLimit INT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    createdBy INT NOT NULL,
    FOREIGN KEY (createdBy) REFERENCES Staff(staffID)
);

-- 20. PromotionProducts table
CREATE TABLE PromotionProducts (
    promotionProductID INT AUTO_INCREMENT PRIMARY KEY,
    promotionID INT NOT NULL,
    productID INT NOT NULL,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (promotionID) REFERENCES Promotion(promotionID),
    FOREIGN KEY (productID) REFERENCES Product(productID)
);

-- 21. CustomerFeedback table
CREATE TABLE CustomerFeedback (
    feedbackID INT AUTO_INCREMENT PRIMARY KEY,
    customerID INT NOT NULL,
    orderID INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comments TEXT,
    feedbackDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'New',
    respondedBy INT,
    response TEXT,
    responseDate DATETIME,
    FOREIGN KEY (customerID) REFERENCES Customer(customerID),
    FOREIGN KEY (orderID) REFERENCES CustomerOrder(orderID),
    FOREIGN KEY (respondedBy) REFERENCES Staff(staffID)
);

-- 22. Return table
CREATE TABLE ProductReturn (
    returnID INT AUTO_INCREMENT PRIMARY KEY,
    orderID INT NOT NULL,
    productID INT NOT NULL,
    quantity INT NOT NULL,
    returnDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    reason TEXT,
    status VARCHAR(20) DEFAULT 'Pending',
    refundAmount DECIMAL(10,2),
    processedBy INT,
    notes VARCHAR(255),
    FOREIGN KEY (orderID) REFERENCES CustomerOrder(orderID),
    FOREIGN KEY (productID) REFERENCES Product(productID),
    FOREIGN KEY (processedBy) REFERENCES Staff(staffID)
);

-- 23. DamageProduct table
CREATE TABLE DamageProduct (
    damageID INT AUTO_INCREMENT PRIMARY KEY,
    productID INT NOT NULL,
    quantity INT NOT NULL,
    damageDate DATE NOT NULL,
    reason TEXT,
    reportedBy INT NOT NULL,
    status VARCHAR(20) DEFAULT 'Reported',
    actionTaken VARCHAR(255),
    lossAmount DECIMAL(10,2),
    notes VARCHAR(255),
    FOREIGN KEY (productID) REFERENCES Product(productID),
    FOREIGN KEY (reportedBy) REFERENCES Staff(staffID)
);

-- 24. Report table
CREATE TABLE Report (
    reportID INT AUTO_INCREMENT PRIMARY KEY,
    reportType VARCHAR(50) NOT NULL,
    reportName VARCHAR(100) NOT NULL,
    startDate DATE NOT NULL,
    endDate DATE NOT NULL,
    format VARCHAR(20) NOT NULL,
    requestedBy INT NOT NULL,
    generatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'Pending',
    filePath VARCHAR(255),
    remarks VARCHAR(255),
    parameters TEXT,
    FOREIGN KEY (requestedBy) REFERENCES Staff(staffID)
);

-- 25. Notification table
CREATE TABLE Notification (
    notificationID INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    message TEXT NOT NULL,
    type VARCHAR(50) NOT NULL,
    recipientType VARCHAR(20) NOT NULL,
    recipientID INT,
    status VARCHAR(20) DEFAULT 'Unread',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    expiresAt DATETIME,
    actionURL VARCHAR(255)
);

-- Insert sample data into all tables (minimum 10 records each)

-- Insert into Customer
INSERT INTO Customer (name, phone, address, customerPoints, email, gender, dateOfBirth, loyaltyTier, lastPurchaseDate, totalSpent, preferredPaymentMethod) VALUES
('Ahmed Rahman', '01711111111', '123 Main Road, Sylhet', 500, 'ahmed@email.com', 'Male', '1985-03-15', 'Gold', '2025-08-20', 15000.00, 'Cash'),
('Fatima Begum', '01711111112', '456 Park Street, Sylhet', 300, 'fatima@email.com', 'Female', '1990-07-22', 'Silver', '2025-08-19', 8000.00, 'Card'),
('Karim Uddin', '01711111113', '789 Market Lane, Sylhet', 750, 'karim@email.com', 'Male', '1988-11-30', 'Platinum', '2025-08-18', 25000.00, 'Mobile Banking'),
('Ayesha Akter', '01711111114', '321 Garden Road, Sylhet', 150, 'ayesha@email.com', 'Female', '1992-05-18', 'Bronze', '2025-08-17', 3000.00, 'Cash'),
('Rahim Khan', '01711111115', '654 Hill View, Sylhet', 600, 'rahim@email.com', 'Male', '1980-12-25', 'Gold', '2025-08-16', 18000.00, 'Card'),
('Sultana Jahan', '01711111116', '987 Valley Road, Sylhet', 200, 'sultana@email.com', 'Female', '1995-02-14', 'Silver', '2025-08-15', 5000.00, 'Cash'),
('Jamal Hossain', '01711111117', '147 Lake Side, Sylhet', 400, 'jamal@email.com', 'Male', '1987-09-09', 'Gold', '2025-08-14', 12000.00, 'Card'),
('Nadia Islam', '01711111118', '258 River View, Sylhet', 100, 'nadia@email.com', 'Female', '1993-04-07', 'Bronze', '2025-08-13', 2000.00, 'Cash'),
('Tarek Ahmed', '01711111119', '369 Mountain Road, Sylhet', 850, 'tarek@email.com', 'Male', '1983-08-19', 'Platinum', '2025-08-12', 30000.00, 'Mobile Banking'),
('Sabrina Chowdhury', '01711111120', '741 Forest Lane, Sylhet', 250, 'sabrina@email.com', 'Female', '1991-06-12', 'Silver', '2025-08-11', 6000.00, 'Card');

-- Insert into Staff
INSERT INTO Staff (name, role, username, password, email, phone, remarks, managerID, salary, department, shift, address, emergencyContact) VALUES
('Mr. Alam', 'Manager', 'alam', 'alam123', 'alam@taqwashop.com', '01910000001', 'Store Manager', NULL, 50000.00, 'Management', 'Day', '123 Manager Road, Sylhet', '01910000011'),
('Mr. Hossain', 'Assistant Manager', 'hossain', 'hossain123', 'hossain@taqwashop.com', '01910000002', 'Assistant Manager', 1, 40000.00, 'Management', 'Day', '456 Assistant Road, Sylhet', '01910000012'),
('Rina Akter', 'Cashier', 'rina', 'rina123', 'rina@taqwashop.com', '01910000003', 'Senior Cashier', 1, 25000.00, 'Sales', 'Morning', '789 Cashier Road, Sylhet', '01910000013'),
('Kamal Uddin', 'Cashier', 'kamal', 'kamal123', 'kamal@taqwashop.com', '01910000004', 'Cashier', 2, 22000.00, 'Sales', 'Evening', '321 Cashier Lane, Sylhet', '01910000014'),
('Sofia Begum', 'Sales Associate', 'sofia', 'sofia123', 'sofia@taqwashop.com', '01910000005', 'Sales Assistant', 1, 20000.00, 'Sales', 'Morning', '654 Sales Road, Sylhet', '01910000015'),
('Rajib Ahmed', 'Stock Manager', 'rajib', 'rajib123', 'rajib@taqwashop.com', '01910000006', 'Stock Manager', 2, 28000.00, 'Inventory', 'Day', '987 Stock Road, Sylhet', '01910000016'),
('Tania Islam', 'Sales Associate', 'tania', 'tania123', 'tania@taqwashop.com', '01910000007', 'Sales Assistant', 1, 20000.00, 'Sales', 'Evening', '147 Sales Lane, Sylhet', '01910000017'),
('Faruk Hossain', 'Security', 'faruk', 'faruk123', 'faruk@taqwashop.com', '01910000008', 'Security Guard', 2, 18000.00, 'Security', 'Night', '258 Security Road, Sylhet', '01910000018'),
('Mitu Akter', 'Cleaner', 'mitu', 'mitu123', 'mitu@taqwashop.com', '01910000009', 'Cleaner', 2, 15000.00, 'Maintenance', 'Day', '369 Cleaner Road, Sylhet', '01910000019'),
('Shahin Alam', 'Helper', 'shahin', 'shahin123', 'shahin@taqwashop.com', '01910000010', 'Store Helper', 2, 16000.00, 'Inventory', 'Day', '741 Helper Lane, Sylhet', '01910000020');

-- Continue inserting data for all other tables...

-- Show all tables
SHOW TABLES;

-- Display table structures
DESCRIBE Customer;
DESCRIBE Staff;
DESCRIBE Supplier;
DESCRIBE ProductCategory;
DESCRIBE Brand;
DESCRIBE Product;
DESCRIBE Inventory;
DESCRIBE PurchaseOrder;
DESCRIBE PurchaseOrderDetails;
DESCRIBE CustomerOrder;
DESCRIBE OrderDetails;
DESCRIBE Invoice;
DESCRIBE Payment;
DESCRIBE ExpenseCategory;
DESCRIBE Expense;
DESCRIBE Shift;
DESCRIBE StaffSchedule;
DESCRIBE Attendance;
DESCRIBE Promotion;
DESCRIBE PromotionProducts;
DESCRIBE CustomerFeedback;
DESCRIBE ProductReturn;
DESCRIBE DamageProduct;
DESCRIBE Report;
DESCRIBE Notification;

-- Display sample data from each table
SELECT * FROM Customer LIMIT 5;
SELECT * FROM Staff LIMIT 5;
SELECT * FROM Supplier LIMIT 5;
SELECT * FROM ProductCategory LIMIT 5;
SELECT * FROM Brand LIMIT 5;
SELECT * FROM Product LIMIT 5;
SELECT * FROM Inventory LIMIT 5;
SELECT * FROM PurchaseOrder LIMIT 5;
SELECT * FROM PurchaseOrderDetails LIMIT 5;
SELECT * FROM CustomerOrder LIMIT 5;
SELECT * FROM OrderDetails LIMIT 5;
SELECT * FROM Invoice LIMIT 5;
SELECT * FROM Payment LIMIT 5;
SELECT * FROM ExpenseCategory LIMIT 5;
SELECT * FROM Expense LIMIT 5;
SELECT * FROM Shift LIMIT 5;
SELECT * FROM StaffSchedule LIMIT 5;
SELECT * FROM Attendance LIMIT 5;
SELECT * FROM Promotion LIMIT 5;
SELECT * FROM PromotionProducts LIMIT 5;
SELECT * FROM CustomerFeedback LIMIT 5;
SELECT * FROM ProductReturn LIMIT 5;
SELECT * FROM DamageProduct LIMIT 5;
SELECT * FROM Report LIMIT 5;
SELECT * FROM Notification LIMIT 5;