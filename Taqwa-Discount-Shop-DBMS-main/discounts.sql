CREATE TABLE discounts (
    discountID INT AUTO_INCREMENT PRIMARY KEY,
    discountType ENUM('Product','Invoice') NOT NULL,
    productID INT NULL,
    percentage DECIMAL(5,2) NOT NULL,
    startDate DATE,
    endDate DATE,
    FOREIGN KEY (productID) REFERENCES products(productID)
);

