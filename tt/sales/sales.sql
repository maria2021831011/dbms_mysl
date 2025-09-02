CREATE TABLE sales (
    saleID INT AUTO_INCREMENT PRIMARY KEY,
    customerID INT,
    saleDate DATETIME DEFAULT NOW(),
    totalAmount DECIMAL(10,2) NOT NULL,
    discount DECIMAL(10,2) DEFAULT 0,
    tax DECIMAL(10,2) DEFAULT 0,
    finalAmount DECIMAL(10,2) NOT NULL,
    paymentStatus ENUM('PAID','PENDING','PARTIAL') DEFAULT 'PENDING',
    paymentMethod ENUM('Cash','Card','Bank Transfer','Credit') DEFAULT 'Cash',
    FOREIGN KEY (customerID) REFERENCES customers(customerID)
);
