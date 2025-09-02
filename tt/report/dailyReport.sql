CREATE TABLE dailyReport (
    reportID INT AUTO_INCREMENT PRIMARY KEY,
    reportDate DATE UNIQUE NOT NULL,
    openingBalance DECIMAL(10,2) DEFAULT 0.00,
    salesTotal DECIMAL(10,2) DEFAULT 0.00,
    expenseTotal DECIMAL(10,2) DEFAULT 0.00,
    closingBalance DECIMAL(10,2) DEFAULT 0.00
);
