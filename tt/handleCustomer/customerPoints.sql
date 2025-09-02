CREATE TABLE customerPoints (
    pointID INT AUTO_INCREMENT PRIMARY KEY,
    customerID INT,
    points INT DEFAULT 0,
    lastUpdated DATETIME DEFAULT NOW(),
    FOREIGN KEY (customerID) REFERENCES customers(customerID)
);