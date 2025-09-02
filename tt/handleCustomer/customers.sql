CREATE TABLE customers (
    customerID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20) UNIQUE,
    email VARCHAR(100) UNIQUE,
    address VARCHAR(255),
    gender ENUM('Male','Female','Other') DEFAULT 'Male',
    customerType ENUM('Individual','Business','Wholesale') DEFAULT 'Individual',
    customerStatus ENUM('Regular','VIP','Inactive','Blocked') DEFAULT 'Regular',
    joinDate DATE NOT NULL DEFAULT NOW(),
    lastPurchaseDate DATE,
    totalSpending DECIMAL(12,2) DEFAULT 0.00,
    loyaltyPoints INT DEFAULT 0
);

