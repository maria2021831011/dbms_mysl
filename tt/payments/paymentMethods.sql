CREATE TABLE paymentMethods (
    methodID INT AUTO_INCREMENT PRIMARY KEY,
    methodName VARCHAR(50) NOT NULL UNIQUE,
    description TEXT,
    isActive BOOLEAN DEFAULT TRUE,
    createdBy INT,
    updatedBy INT
);
