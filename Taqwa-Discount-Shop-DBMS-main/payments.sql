CREATE TABLE payments (
    paymentID INT AUTO_INCREMENT PRIMARY KEY,
    relatedType ENUM('Purchase','Sale') NOT NULL,
    relatedID INT NOT NULL,
    methodID INT,
    amount DECIMAL(10,2) NOT NULL,
    paymentDate DATETIME DEFAULT NOW(),
    FOREIGN KEY (methodID) REFERENCES paymentMethods(methodID)
);