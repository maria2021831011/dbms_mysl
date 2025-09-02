CREATE TABLE purchases (
    purchaseID INT AUTO_INCREMENT PRIMARY KEY,
    supplierID INT,
    purchaseDate DATE NOT NULL,
    discount DECIMAL(10,2) DEFAULT 0.00,
    taxAmount DECIMAL(10,2) DEFAULT 0.00,
    totalAmount DECIMAL(10,2) NOT NULL,
    paymentStatus ENUM('PAID','PENDING','PARTIAL') DEFAULT 'PAID',
    FOREIGN KEY (supplierID) REFERENCES suppliers(supplierID)
);