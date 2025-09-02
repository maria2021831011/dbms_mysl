
USE TAQWASHOP2;


CREATE TABLE Report (
    reportID INT AUTO_INCREMENT PRIMARY KEY,
    reportType VARCHAR(50) NOT NULL,
    startDate DATE NOT NULL,
    endDate DATE NOT NULL,
    format VARCHAR(20) NOT NULL,
    requestedBy INT NOT NULL,
    generatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'Pending',
    filePath VARCHAR(255),
    remarks VARCHAR(255),
    referenceID INT NULL,
    FOREIGN KEY (requestedBy) REFERENCES Staff(staffID)
);



INSERT INTO Report (reportType, startDate, endDate, format, requestedBy, status, remarks, referenceID)
VALUES
('Invoice', '2025-08-01', '2025-08-25', 'PDF', 1, 'Completed', 'Monthly invoices', NULL),
('Sales', '2025-08-01', '2025-08-25', 'Excel', 2, 'Completed', 'Sales summary', NULL),
('Expense', '2025-08-01', '2025-08-25', 'PDF', 1, 'Completed', 'Expense report', NULL),
('Inventory', '2025-08-01', '2025-08-25', 'Excel', 2, 'Completed', 'Inventory levels', NULL),
('Invoice', '2025-08-15', '2025-08-25', 'PDF', 4, 'Pending', 'Partial invoice', NULL),
('Sales', '2025-08-10', '2025-08-20', 'Excel', 3, 'Completed', 'Mid-month sales', NULL),
('Expense', '2025-08-05', '2025-08-25', 'PDF', 1, 'Completed', 'Utility expenses', NULL),
('Inventory', '2025-08-01', '2025-08-15', 'Excel', 8, 'Completed', 'Inventory snapshot', NULL),
('Sales', '2025-08-01', '2025-08-15', 'PDF', 5, 'Completed', 'First half sales', NULL),
('Invoice', '2025-08-20', '2025-08-25', 'PDF', 6, 'Pending', 'Last week invoices', NULL);

select*from Report; 