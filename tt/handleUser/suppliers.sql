CREATE TABLE suppliers (
    supplierID INT AUTO_INCREMENT PRIMARY KEY,
    supplierName VARCHAR(100) NOT NULL,
    contactPerson ENUM('Owner','Manager','Staff') DEFAULT 'Manager',
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    supplierType ENUM('Grocery','Cosmetics','Beverages','Other') DEFAULT 'Other',
    tradeLicense VARCHAR(50),
    paymentTerms ENUM('Advance','Partial','Complete') DEFAULT 'Complete',
    status ENUM('Active','Inactive') DEFAULT 'Active',
    lastTransactionDate DATE,
    duePayment DECIMAL(12,2) DEFAULT 0.00,
    createdAt DATETIME DEFAULT NOW(),
    updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW()
);
