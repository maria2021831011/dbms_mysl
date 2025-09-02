CREATE TABLE products (
    productID INT AUTO_INCREMENT PRIMARY KEY,
    productName VARCHAR(150) NOT NULL,
    brand VARCHAR(100),
    categoryID INT,
    costPrice DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    sellingPrice DECIMAL(10,2) NOT NULL,
    stock INT DEFAULT 0,
    barcode VARCHAR(50) UNIQUE,
    vatPercentage DECIMAL(5,2) DEFAULT 0.00,
    expiryDate DATE NULL,
    FOREIGN KEY (categoryID) REFERENCES categories(categoryID)
);
