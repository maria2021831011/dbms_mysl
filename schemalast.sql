CREATE DATABASE IF NOT EXISTS TAQWASHOP;
USE TAQWASHOP;

CREATE TABLE CustomerPurchaseBilling (
    invoiceID INT AUTO_INCREMENT PRIMARY KEY,
    productID INT NOT NULL,
    productName VARCHAR(100) NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    discountType VARCHAR(50),
    VATPercentage FLOAT NOT NULL,
    totalAmount DECIMAL(10,2) NOT NULL,
    paymentMode VARCHAR(20) NOT NULL,
    timestamp DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    staffName VARCHAR(50),
    managerName VARCHAR(50)
);

INSERT INTO CustomerPurchaseBilling 
(productID, productName, quantity, discountType, VATPercentage, totalAmount, paymentMode, staffName, managerName)
VALUES
(101, 'Milk 1L', 2, 'Loyalty', 5, 105.00, 'Cash', 'Ria', 'Hridoy'),
(102, 'Bread', 1, 'None', 5, 50.00, 'Card', 'Ria', 'Borson'),
(103, 'Eggs 12pcs', 1, 'Seasonal', 5, 120.00, 'Cash', 'Maria', 'Hridoy'),
(104, 'Butter 250g', 3, 'None', 5, 450.00, 'Card', 'Maria', 'Borson'),
(105, 'Cheese 500g', 1, 'Loyalty', 5, 350.00, 'Cash', 'Ria', 'Hridoy'),
(106, 'Apple 1kg', 2, 'Seasonal', 5, 220.00, 'Card', 'Maria', 'Borson'),
(107, 'Banana 1kg', 5, 'None', 5, 250.00, 'Cash', 'Ria', 'Hridoy'),
(108, 'Orange Juice 1L', 2, 'Loyalty', 5, 180.00, 'Card', 'Maria', 'Borson'),
(109, 'Cereal 500g', 1, 'None', 5, 200.00, 'Cash', 'Ria', 'Hridoy'),
(110, 'Yogurt 500g', 4, 'Seasonal', 5, 400.00, 'Card', 'Maria', 'Borson');

SELECT * FROM CustomerPurchaseBilling;
