CREATE TABLE roles (
    roleID INT AUTO_INCREMENT PRIMARY KEY,
    roleName VARCHAR(50) NOT NULL UNIQUE,
    description TEXT,
    canManageSales BOOLEAN DEFAULT FALSE,
    canManageInventory BOOLEAN DEFAULT FALSE,
    canManageSuppliers BOOLEAN DEFAULT FALSE,
    canManageCustomers BOOLEAN DEFAULT FALSE,
    canManageExpenses BOOLEAN DEFAULT FALSE,
    canManageReports BOOLEAN DEFAULT FALSE,
    canManageStaff BOOLEAN DEFAULT FALSE,
    canApprovePayments BOOLEAN DEFAULT FALSE
);
