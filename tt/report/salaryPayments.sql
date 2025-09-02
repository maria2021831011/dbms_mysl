CREATE TABLE salaryPayments (
    salaryID INT AUTO_INCREMENT PRIMARY KEY,
    staffID INT,
    baseSalary decimal(10,2) NOT NULL,
    bonusSalary decimal(10,2) DEFAULT 0.00,
    totalAmount DECIMAL(10,2) NOT NULL,
    paymentDate DATE DEFAULT NOW(),
    FOREIGN KEY (staffID) REFERENCES staff(staffID)
);