use tabletaqwa;
CREATE TABLE salesReturns (
    returnID INT AUTO_INCREMENT PRIMARY KEY,
    saleID INT,
    productID INT,
    quantity INT,
    returnDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (saleID) REFERENCES sales(saleID),
    FOREIGN KEY (productID) REFERENCES products(productID)
);
INSERT INTO salesReturns (saleID, productID, quantity)
VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 2),
(5, 5, 1),
(6, 8, 2),
(7, 1, 1),
(8, 3, 1),
(9, 4, 1),
(10, 2, 1);
