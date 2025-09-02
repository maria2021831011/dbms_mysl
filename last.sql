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

-- 25. Notification table (FIXED with proper connections)
CREATE TABLE Notification (
    notificationID INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    message TEXT NOT NULL,
    type VARCHAR(50) NOT NULL,
    recipientType VARCHAR(20) NOT NULL, -- 'Customer', 'Staff', 'All'
    recipientID INT NULL, -- Can be customerID, staffID, or NULL for all
    status VARCHAR(20) DEFAULT 'Unread',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    expiresAt DATETIME,
    actionURL VARCHAR(255),
    relatedEntityType VARCHAR(50), -- 'Order', 'Product', 'Payment', etc.
    relatedEntityID INT, -- ID of the related entity
    priority VARCHAR(20) DEFAULT 'Normal', -- 'Low', 'Normal', 'High', 'Urgent'
    isActionRequired BOOLEAN DEFAULT FALSE,
    actionTaken BOOLEAN DEFAULT FALSE,
    actionTakenBy INT,
    actionTakenAt DATETIME,
    FOREIGN KEY (actionTakenBy) REFERENCES Staff(staffID)
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

-- Insert into Supplier
INSERT INTO Supplier (supplierName, contactPerson, phone, address, email, rating, paymentTerms, accountNumber, bankName) VALUES
('Fresh Dairy Ltd', 'Mr. Khan', '01810000001', 'Dhaka, Bangladesh', 'freshdairy@email.com', 4.5, 'Net 30', '1234567890', 'DBBL'),
('Quality Bakery Co', 'Mr. Ahmed', '01810000002', 'Chittagong, Bangladesh', 'qualitybakery@email.com', 4.2, 'Net 15', '2345678901', 'BRAC Bank'),
('Fruit Paradise', 'Ms. Akter', '01810000003', 'Khulna, Bangladesh', 'fruitparadise@email.com', 4.3, 'Net 30', '3456789012', 'Islami Bank'),
('Beverage World', 'Mr. Islam', '01810000004', 'Sylhet, Bangladesh', 'beverageworld@email.com', 4.1, 'Net 15', '4567890123', 'City Bank'),
('Cereal Masters', 'Mr. Rahman', '01810000005', 'Rajshahi, Bangladesh', 'cerealmasters@email.com', 4.4, 'Net 30', '5678901234', 'Eastern Bank'),
('Snack Time Ltd', 'Ms. Jahan', '01810000006', 'Barisal, Bangladesh', 'snacktime@email.com', 4.0, 'Net 15', '6789012345', 'Prime Bank'),
('Personal Care Inc', 'Mr. Chowdhury', '01810000007', 'Dhaka, Bangladesh', 'personalcare@email.com', 4.6, 'Net 30', '7890123456', 'HSBC'),
('Home Essentials', 'Ms. Begum', '01810000008', 'Chittagong, Bangladesh', 'homeessentials@email.com', 4.2, 'Net 15', '8901234567', 'Standard Bank'),
('Frozen Delights', 'Mr. Uddin', '01810000009', 'Khulna, Bangladesh', 'frozendelights@email.com', 4.3, 'Net 30', '9012345678', 'Commercial Bank'),
('Baby Care Co', 'Ms. Khanum', '01810000010', 'Sylhet, Bangladesh', 'babycare@email.com', 4.5, 'Net 15', '0123456789', 'National Bank');

-- Insert into ProductCategory
INSERT INTO ProductCategory (categoryName, description, parentCategoryID, taxRate) VALUES
('Dairy Products', 'Milk, cheese, yogurt and other dairy items', NULL, 5.0),
('Bakery Items', 'Bread, cakes, pastries and baked goods', NULL, 5.0),
('Fresh Fruits', 'Seasonal and imported fruits', NULL, 0.0),
('Beverages', 'Juices, soft drinks, water', NULL, 10.0),
('Breakfast Cereals', 'Cereals, oats, breakfast items', NULL, 5.0),
('Milk', 'Various types of milk', 1, 5.0),
('Cheese', 'Different cheese varieties', 1, 5.0),
('Yogurt', 'Various yogurt products', 1, 5.0),
('Bread', 'Different types of bread', 2, 5.0),
('Cakes', 'Various cakes and pastries', 2, 5.0);

-- Insert into Brand
INSERT INTO Brand (brandName, description, countryOfOrigin) VALUES
('Pura', 'Dairy products brand', 'Bangladesh'),
('Olympic', 'Bakery products brand', 'Bangladesh'),
('Pran', 'Food and beverage brand', 'Bangladesh'),
('Kelloggs', 'Breakfast cereal brand', 'USA'),
('Igloo', 'Ice cream brand', 'Bangladesh'),
('Fresh', 'Dairy products', 'Bangladesh'),
('Bread & Butter', 'Bakery items', 'Bangladesh'),
('Nature', 'Fruit products', 'Bangladesh'),
('Aqua', 'Beverage brand', 'Bangladesh'),
('Healthy', 'Breakfast items', 'Bangladesh');

-- Insert into Product
INSERT INTO Product (name, description, categoryID, brandID, supplierID, purchasePrice, sellingPrice, barcode, reorderLevel, taxRate) VALUES
('Fresh Milk 1L', 'Pure fresh milk', 6, 1, 1, 55.00, 65.00, '1234567890123', 20, 5.0),
('White Bread', 'Fresh white bread', 9, 2, 2, 25.00, 30.00, '2345678901234', 10, 5.0),
('Apple 1kg', 'Fresh apples', 3, 8, 3, 120.00, 150.00, '3456789012345', 15, 0.0),
('Orange Juice 1L', '100% pure orange juice', 4, 3, 4, 90.00, 110.00, '4567890123456', 12, 10.0),
('Corn Flakes 500g', 'Breakfast cereal', 5, 4, 5, 200.00, 250.00, '5678901234567', 8, 5.0),
('Potato Chips', 'Crispy potato chips', 4, 3, 6, 20.00, 25.00, '6789012345678', 16, 10.0),
('Toothpaste', 'Fresh breath toothpaste', 4, 7, 7, 45.00, 60.00, '7890123456789', 24, 10.0),
('Dish Soap', 'Effective dish cleaning', 4, 7, 8, 35.00, 45.00, '8901234567890', 18, 10.0),
('Ice Cream', 'Vanilla ice cream', 4, 5, 9, 150.00, 180.00, '9012345678901', 13, 10.0),
('Baby Diapers', 'Comfortable baby diapers', 4, 10, 10, 300.00, 350.00, '0123456789012', 22, 10.0);

-- Insert into Inventory
INSERT INTO Inventory (productID, quantity, location, expiryDate, batchNumber, minimumStockLevel, maximumStockLevel) VALUES
(1, 100, 'Aisle 1, Shelf A', '2025-12-15', 'BATCH001', 20, 200),
(2, 50, 'Aisle 2, Shelf B', '2025-08-30', 'BATCH002', 10, 100),
(3, 75, 'Aisle 3, Shelf C', '2025-09-10', 'BATCH003', 15, 150),
(4, 60, 'Aisle 4, Shelf D', '2025-10-20', 'BATCH004', 12, 120),
(5, 40, 'Aisle 5, Shelf E', '2026-01-15', 'BATCH005', 8, 80),
(6, 80, 'Aisle 6, Shelf F', '2025-11-30', 'BATCH006', 16, 160),
(7, 120, 'Aisle 7, Shelf G', '2026-03-20', 'BATCH007', 24, 240),
(8, 90, 'Aisle 8, Shelf H', '2026-02-28', 'BATCH008', 18, 180),
(9, 65, 'Aisle 9, Shelf I', '2025-09-25', 'BATCH009', 13, 130),
(10, 110, 'Aisle 10, Shelf J', '2026-04-15', 'BATCH010', 22, 220);

-- Insert into PurchaseOrder
INSERT INTO PurchaseOrder (supplierID, orderDate, deliveryDate, status, totalAmount, createdBy, approvedBy, paymentStatus) VALUES
(1, '2025-08-01', '2025-08-03', 'Delivered', 5500.00, 1, 2, 'Paid'),
(2, '2025-08-02', '2025-08-04', 'Delivered', 1250.00, 2, 1, 'Paid'),
(3, '2025-08-03', '2025-08-05', 'Delivered', 9000.00, 1, 2, 'Paid'),
(4, '2025-08-04', '2025-08-06', 'Delivered', 5400.00, 2, 1, 'Paid'),
(5, '2025-08-05', '2025-08-07', 'Delivered', 8000.00, 1, 2, 'Paid'),
(6, '2025-08-06', '2025-08-08', 'Pending', 1600.00, 2, NULL, 'Pending'),
(7, '2025-08-07', '2025-08-09', 'Pending', 5400.00, 1, NULL, 'Pending'),
(8, '2025-08-08', '2025-08-10', 'Pending', 3150.00, 2, NULL, 'Pending'),
(9, '2025-08-09', '2025-08-11', 'Pending', 9750.00, 1, NULL, 'Pending'),
(10, '2025-08-10', '2025-08-12', 'Pending', 33000.00, 2, NULL, 'Pending');

-- Insert into PurchaseOrderDetails
INSERT INTO PurchaseOrderDetails (orderID, productID, quantity, unitPrice, totalPrice, receivedQuantity, status) VALUES
(1, 1, 100, 55.00, 5500.00, 100, 'Completed'),
(2, 2, 50, 25.00, 1250.00, 50, 'Completed'),
(3, 3, 75, 120.00, 9000.00, 75, 'Completed'),
(4, 4, 60, 90.00, 5400.00, 60, 'Completed'),
(5, 5, 40, 200.00, 8000.00, 40, 'Completed'),
(6, 6, 80, 20.00, 1600.00, 0, 'Pending'),
(7, 7, 120, 45.00, 5400.00, 0, 'Pending'),
(8, 8, 90, 35.00, 3150.00, 0, 'Pending'),
(9, 9, 65, 150.00, 9750.00, 0, 'Pending'),
(10, 10, 110, 300.00, 33000.00, 0, 'Pending');

-- Insert into CustomerOrder
INSERT INTO CustomerOrder (customerID, orderDate, status, totalAmount, paymentMethod, paymentStatus, staffID, discountAmount, taxAmount, finalAmount) VALUES
(1, '2025-08-20 10:30:00', 'Completed', 650.00, 'Cash', 'Paid', 3, 0.00, 32.50, 682.50),
(2, '2025-08-19 11:15:00', 'Completed', 300.00, 'Card', 'Paid', 4, 0.00, 15.00, 315.00),
(3, '2025-08-18 14:20:00', 'Completed', 1500.00, 'Mobile Banking', 'Paid', 3, 50.00, 72.50, 1522.50),
(4, '2025-08-17 09:45:00', 'Completed', 1100.00, 'Cash', 'Paid', 4, 0.00, 55.00, 1155.00),
(5, '2025-08-16 16:30:00', 'Completed', 2500.00, 'Card', 'Paid', 3, 100.00, 120.00, 2520.00),
(6, '2025-08-15 12:10:00', 'Completed', 250.00, 'Cash', 'Paid', 4, 0.00, 12.50, 262.50),
(7, '2025-08-14 13:25:00', 'Completed', 600.00, 'Card', 'Paid', 3, 0.00, 30.00, 630.00),
(8, '2025-08-13 15:40:00', 'Completed', 450.00, 'Cash', 'Paid', 4, 0.00, 22.50, 472.50),
(9, '2025-08-12 10:50:00', 'Completed', 1800.00, 'Mobile Banking', 'Paid', 3, 100.00, 85.00, 1785.00),
(10, '2025-08-11 17:20:00', 'Completed', 3500.00, 'Card', 'Paid', 4, 150.00, 167.50, 3517.50);

-- Insert into OrderDetails
INSERT INTO OrderDetails (orderID, productID, quantity, unitPrice, totalPrice, discountPercentage) VALUES
(1, 1, 10, 65.00, 650.00, 0.00),
(2, 2, 10, 30.00, 300.00, 0.00),
(3, 3, 10, 150.00, 1500.00, 5.00),
(4, 4, 10, 110.00, 1100.00, 0.00),
(5, 5, 10, 250.00, 2500.00, 4.00),
(6, 6, 10, 25.00, 250.00, 0.00),
(7, 7, 10, 60.00, 600.00, 0.00),
(8, 8, 10, 45.00, 450.00, 0.00),
(9, 9, 10, 180.00, 1800.00, 5.00),
(10, 10, 10, 350.00, 3500.00, 4.00);