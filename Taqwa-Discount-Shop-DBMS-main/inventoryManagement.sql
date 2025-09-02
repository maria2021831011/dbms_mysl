CREATE TABLE inventoryManagement (
    inventoryID INT AUTO_INCREMENT PRIMARY KEY,
    productID INT NOT NULL,
    changeType ENUM('IN','OUT') NOT NULL,
    quantity INT NOT NULL,
    changeDate DATE DEFAULT NOW(),
    remarks TEXT,
    FOREIGN KEY (productID) REFERENCES products(productID)
);