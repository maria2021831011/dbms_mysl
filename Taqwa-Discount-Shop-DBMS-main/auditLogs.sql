CREATE TABLE auditLogs (
    logID INT AUTO_INCREMENT PRIMARY KEY,
    userID INT,
    action VARCHAR(255),
    timestamp DATETIME DEFAULT NOW(),
    FOREIGN KEY (userID) REFERENCES users(userID)
);