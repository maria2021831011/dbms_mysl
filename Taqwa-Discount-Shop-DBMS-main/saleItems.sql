CREATE TABLE saleItems (
    saleItemID INT AUTO_INCREMENT PRIMARY KEY,
    saleID INT,
    productID INT,
    quantity INT NOT NULL,
    unitPrice DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (saleID) REFERENCES sales(saleID),
    FOREIGN KEY (productID) REFERENCES products(productID)
);