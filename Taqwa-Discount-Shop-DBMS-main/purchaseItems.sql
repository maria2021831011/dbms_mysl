CREATE TABLE purchaseItems (
    purchaseItemID INT AUTO_INCREMENT PRIMARY KEY,
    purchaseID INT,
    productID INT,
    description TEXT,
    quantity INT NOT NULL,
    unitPrice DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (purchaseID) REFERENCES purchases(purchaseID),
    FOREIGN KEY (productID) REFERENCES products(productID)
);