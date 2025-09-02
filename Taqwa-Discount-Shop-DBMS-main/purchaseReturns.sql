CREATE TABLE purchaseReturns (
    returnID INT AUTO_INCREMENT PRIMARY KEY,
    purchaseID INT,
    productID INT,
    quantity INT,
    description TEXT,
    returnDate DATE,
    FOREIGN KEY (purchaseID) REFERENCES purchases(purchaseID),
    FOREIGN KEY (productID) REFERENCES products(productID)
);