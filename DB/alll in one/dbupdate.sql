USE csedatabase;

/*
Stores Table
*/
ALTER TABLE stores ADD FOREIGN KEY (storeEditorID) REFERENCES storeEditors (id);

ALTER TABLE stores ALTER ohsPurchasing SET DEFAULT 0;
ALTER TABLE stores ALTER allowOverBuying SET DEFAULT 0;
ALTER TABLE stores ALTER adGroup SET DEFAULT 'unknown';
ALTER TABLE stores ALTER loansEnabled SET DEFAULT 0;
ALTER TABLE stores ALTER ohsApproval SET DEFAULT 0;
ALTER TABLE stores ALTER loanApproval SET DEFAULT 0;
ALTER TABLE stores ALTER ordersEnabled SET DEFAULT 0;
ALTER TABLE stores ALTER markup SET DEFAULT 0;
ALTER TABLE stores ALTER confirmPurchases SET DEFAULT 0;
ALTER TABLE stores ALTER confirmCancel SET DEFAULT 0;

/*
User Table
*/
ALTER TABLE stores ADD FOREIGN KEY (storeID) REFERENCES stores (id);

ALTER TABLE users ALTER sname SET DEFAULT 'missing';
ALTER TABLE users ALTER username SET DEFAULT 'unknown';
ALTER TABLE users ALTER location SET DEFAULT 'unknown';
ALTER TABLE users ALTER type SET DEFAULT 'unknown';
ALTER TABLE users ALTER schoolArea SET DEFAULT 'unknown';
ALTER TABLE users ALTER isPasswordChanged SET DEFAULT 0;

/*
accounts Table
*/
ALTER TABLE accounts ADD FOREIGN KEY (storeID) REFERENCES stores (id);
ALTER TABLE accounts ADD FOREIGN KEY (projectID) REFERENCES Projects (id);

ALTER TABLE accounts ALTER disabled SET DEFAULT (0));

/*
projects Table
*/
ALTER TABLE projects ADD FOREIGN KEY (storeID) REFERENCES stores (id);

/*
allowedAccounts Table
*/
ALTER TABLE allowedAccounts ADD FOREIGN KEY (userID) REFERENCES users (id);
ALTER TABLE allowedAccounts ADD FOREIGN KEY (projectID) REFERENCES projects (id);

/*
auditTrail Table
*/
ALTER TABLE auditTrail ADD FOREIGN KEY (storeID) REFERENCES stores (id);
ALTER TABLE auditTrail ADD FOREIGN KEY (accountID) REFERENCES accounts (id);
ALTER TABLE auditTrail ADD FOREIGN KEY (userID) REFERENCES users (id);

/*
categories Table
*/
ALTER TABLE categories ADD FOREIGN KEY (storeID) REFERENCES stores (id);
ALTER TABLE categories ALTER disabled SET DEFAULT(0);

/*
detailedTransactions Table
*/
ALTER TABLE detailedTransactions ADD FOREIGN KEY (storeID) REFERENCES stores (id);
ALTER TABLE detailedTransactions ALTER processed SET DEFAULT (1);
ALTER TABLE detailedTransactions ALTER returned SET DEFAULT (0);

/*
items Table
*/
ALTER TABLE items ADD FOREIGN KEY (catagoryID) REFERENCES catagories (id);
ALTER TABLE items ADD FOREIGN KEY (storeID) REFERENCES stores (id);
ALTER TABLE items ADD FOREIGN KEY (unitsID) REFERENCES units (id);
ALTER TABLE items ADD FOREIGN KEY (supplierID) REFERENCES suppliers (id);

ALTER TABLE items ALTER hazardusSubstance SET DEFAULT (0);
ALTER TABLE items ALTER msdsRequired SET DEFAULT (0);
ALTER TABLE items ALTER riskassesmentRequired SET DEFAULT (0);
ALTER TABLE items ALTER stockOrdered SET DEFAULT (0);
ALTER TABLE items ALTER enabled SET DEFAULT (0);

/*
orders Table
*/
ALTER TABLE orders ADD FOREIGN KEY (storeID) REFERENCES stores (id);
ALTER TABLE orders ADD FOREIGN KEY (accountID) REFERENCES accounts (id);
ALTER TABLE orders ADD FOREIGN KEY (userID) REFERENCES users (id);

ALTER TABLE orders ALTER isExternal SET DEFAULT (0);
ALTER TABLE orders ALTER isOpen SET DEFAULT (1);

/*
orderTypes Table
*/
ALTER TABLE orderTypes ADD FOREIGN KEY (storeID) REFERENCES stores (id);

/*
storeEditors Table
*/
ALTER TABLE storeEditors ADD FOREIGN KEY (storeID) REFERENCES stores (id);
ALTER TABLE storeEditors ADD FOREIGN KEY (userID) REFERENCES users (id);

/*
storeManagers Table
*/
ALTER TABLE storeManagers ADD FOREIGN KEY (storeID) REFERENCES stores (id);
ALTER TABLE storeManagers ADD FOREIGN KEY (userID) REFERENCES users (id);

/*
transactions Table
*/
ALTER TABLE transactions ADD FOREIGN KEY (storeID) REFERENCES stores (id);
ALTER TABLE transactions ADD FOREIGN KEY (userID) REFERENCES users (id);
ALTER TABLE transactions ADD FOREIGN KEY (accountID) REFERENCES accounts (id);
ALTER TABLE transactions ADD FOREIGN KEY (itemID) REFERENCES items (id);
ALTER TABLE transactions ADD FOREIGN KEY (orderID) REFERENCES orders (id);

ALTER TABLE transactions ALTER msdsProduced SET DEFAULT (0);
ALTER TABLE transactions ALTER approvedBy SET DEFAULT (-1);
ALTER TABLE transactions ALTER inventoryLevel SET DEFAULT (0);
ALTER TABLE transactions ALTER processed SET DEFAULT (1);
ALTER TABLE transactions ALTER returned SET DEFAULT (0);

/*
units Table
*/
ALTER TABLE units ADD FOREIGN KEY (storeID) REFERENCES stores (id);
ALTER TABLE units ALTER disabled SET DEFAULT (0); 

/*
userAccounts Table
*/
ALTER TABLE userAccounts ADD FOREIGN KEY (userID) REFERENCES users (id);

/*
supplier Table
*/
ALTER TABLE suppliers ADD FOREIGN KEY (storeID) REFERENCES stores (id);
