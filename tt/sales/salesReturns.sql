CREATE TABLE salesReturns (
    returnID INT AUTO_INCREMENT PRIMARY KEY,
    saleID INT,
    productID INT,
    quantity INT,
    returnDate DATE DEFAULT NOW(),
    FOREIGN KEY (saleID) REFERENCES sales(saleID),
    FOREIGN KEY (productID) REFERENCES products(productID)
);