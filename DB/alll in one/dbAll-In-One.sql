DROP DATABASE IF EXISTS csedatabase;
CREATE DATABASE csedatabase;

/*
DB Creation, creates tables, turn off checking for FKs
*/

USE csedatabase;
/*-----------------------------*/
CREATE TABLE stores(
	id bigint NOT NULL AUTO_INCREMENT,
	descr varchar(255) NOT NULL,
	contactName varchar(255) NOT NULL,
	contactPhone varchar(255) NOT NULL,
	location varchar(255) NOT NULL,
	ohsPurchasing bit NOT NULL,
	storeManagerID bigint NULL,
	storeEditorID bigint NULL,
	domainServer varchar(255) NOT NULL,
	allowOverBuying bit NOT NULL,
	adGroup varchar(255) NOT NULL,
	publicPurchasingComputer varchar(255) NOT NULL,
	loansEnabled bit NOT NULL,
	ohsApproval bit NOT NULL,
	loanApproval bit NOT NULL,
	ordersEnabled bit NOT NULL,
	markup decimal(18,3) NOT NULL,
	confirmPurchases bit NOT NULL,
	confirmCancel bit NOT NULL,
	
	PRIMARY KEY (id),
	FOREIGN KEY (storeEditorID) REFERENCES storeEditors(id)
);
ALTER TABLE stores AUTO_INCREMENT=1;
/*-----------------------------*/
CREATE TABLE users(
	id bigint NOT NULL AUTO_INCREMENT,
	storeID bigint NOT NULL,
	fname varchar(255) NOT NULL,
	sname varchar(255) NOT NULL,
	prefname varchar(255) NOT NULL,
	username varchar(255) NOT NULL,
	barcodes varchar(255) NOT NULL,
	location varchar(50) NULL,
	type varchar(255) NULL,
	startDate datetime NULL,
	finishDate datetime NULL,
	schoolArea varchar(255) NULL,
	changeReminder bit NULL,
	notes varchar(255) NULL,
	reminderDate datetime NULL,
	supervisor varchar(255) NULL,
	password varchar(255) NULL,
	isPasswordChanged bit NOT NULL,

	PRIMARY KEY (id),
	FOREIGN KEY (storeID) REFERENCES stores(id)
);
ALTER TABLE users AUTO_INCREMENT=1;
/*-----------------------------*/
CREATE TABLE storeEditors(
	id bigint NOT NULL AUTO_INCREMENT,
	storeID bigint NOT NULL,
	userID bigint NULL,

	PRIMARY KEY (id)
);
ALTER TABLE storeEditors AUTO_INCREMENT=1;
/*-----------------------------*/
CREATE TABLE accounts(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    projectID bigint NOT NULL,
    accountNumber varchar(255) NOT NULL,
    description varchar(255) NULL,
    active bit NOT NULL,
    notes varchar(255) NULL,

    PRIMARY KEY (id)
);
ALTER TABLE accounts AUTO_INCREMENT=1;
/*-----------------------------*/
CREATE TABLE allowedAccounts(
    id bigint NOT NULL AUTO_INCREMENT,
    userID bigint NOT NULL,
    accountID bigint NOT NULL,

    PRIMARY KEY (id)    
);
ALTER TABLE allowedAccounts AUTO_INCREMENT=1;
/*-----------------------------*/
CREATE TABLE auditTrail(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    accountID bigint NOT NULL,
    userID bigint NOT NULL,
    objectid bigint NOT NULL,
    action varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    beforeQuantity decimal(18, 4) NOT NULL,
    afterQuantity decimal(18, 4) NOT NULL,
    beforeValue varchar(255) NULL,
    afterValue varChar(255) NULL,
    actionDate datetime NOT NULL,
    origionalDate datetime NOT NULL,

    PRIMARY KEY (id)    
);
ALTER TABLE auditTrail AUTO_INCREMENT=1;
/*-----------------------------*/
CREATE TABLE categories(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    description varchar(255) NOT NULL,
    disabled bit NOT NULL,

    PRIMARY KEY (id)    
);
ALTER TABLE categories AUTO_INCREMENT=1;
/*-----------------------------*/
CREATE TABLE detailedTransactions(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    storeDescription varchar(255) NOT NULL,
    accountNumber varchar(255) NOT NULL,
    accountDescription varchar(255) NOT NULL,
    username varchar(255) NOT NULL,
    itemDescription varchar(255) NOT NULL,
    itemBarcode varchar(255) NOT NULL,
    quantity decimal(18, 4) NOT NULL,
    unitprice decimal(13,4) NOT NULL,
    MSDSProduced varchar(255) NOT NULL,
    riskAssesment varchar(255) NOT NULL,
    approvedBy varchar(255) NOT NULL,
    loanDueDate date NULL,
    loanDestination varchar(255) NULL,
    loanEmergencyContact varchar(255) NULL,
    purchaseDate datetime NOT NULL,
    stockOnHand int NULL,
    inventoryLevel decimal(18, 4) NOT NULL,
    processed bit NOT NULL,
    returned bit NOT NULL,
    description varchar(255) NULL,
    operatorName varchar(255) NULL,
    
    PRIMARY KEY (id)    
);
ALTER TABLE detailedTransactions AUTO_INCREMENT=1;
/*-----------------------------*/
CREATE TABLE items(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    description varchar(255) NOT NULL,
    barcode varchar(255) NOT NULL,
    categoryID bigint NOT NULL,
    unitsID bigint NOT NULL,
    pricePerUnit decimal(13,4) NOT NULL,
    purchaseDate datetime NOT NULL,
    inventoryLevelAlert int NOT NULL,
    supplierID bigint NULL,
    supplierNotes varchar(255) NULL,
    supplierPartNumber varchar(255) NULL,
    ohsorLoanitem int NOT NULL,
    hazardusSubstance bit NULL,
    dangerousGoodscategory1 varchar(10) NULL,
    dangerousGoodscategory2 varchar(10) NULL,
    dangerousGoodscategory3 varchar(10) NULL,
    msdsRequired bit NULL,
    riskassesmentRequired bit NULL,
    photo varchar(255) NULL,
    loansNotes varchar(255) NULL,
    storeLocation varchar(255) NULL,
    inventoryLevel1 decimal(18, 4) NOT NULL,
    inventoryLevel2 decimal(18, 4) NOT NULL,
    stockOrdered bit NOT NULL,
    enabled bit NOT NULL,

    PRIMARY KEY (id)    
);
ALTER TABLE items AUTO_INCREMENT=1;
/*-----------------------------*/
CREATE TABLE orders(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    accountID bigint NOT NULL,
    userID bigint NOT NULL,
    jobNumber varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    customer varchar(255) NULL,
    email varchar(255) NULL, 
    orderTypeID varchar(255) NULL,
    isExternal bit NULL,
    cost decimal(13,4) NOT NULL,
    isOpen bit NOT NULL,
    location varchar(255) NULL,

    PRIMARY KEY (id)    
);
ALTER TABLE orders AUTO_INCREMENT=1;
/*-----------------------------*/
CREATE TABLE projects(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    code varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    manager varchar(255) NOT NULL,

    PRIMARY KEY (id)    
);
ALTER TABLE projects AUTO_INCREMENT=1;
/*-----------------------------*/
CREATE TABLE userAccount(
    id bigint NOT NULL AUTO_INCREMENT,
    userID varchar(255) NULL,
    validAccCode varchar(255) NULL,
    deleted bit NOT NULL,

    PRIMARY KEY (id)    
);
ALTER TABLE userAccount AUTO_INCREMENT=1;
/*-----------------------------*/
CREATE TABLE storeManagers(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    userID bigint NOT NULL,

    PRIMARY KEY (id)    
);
ALTER TABLE storeManagers AUTO_INCREMENT=1;
/*-----------------------------*/
CREATE TABLE units(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    description varchar(255) NOT NULL,
    disabled bit NOT NULL,

    PRIMARY KEY (id)    
);
ALTER TABLE units AUTO_INCREMENT=1;
/*-----------------------------*/
CREATE TABLE transactions(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    userID bigint NOT NULL,
    accountID bigint NOT NULL,
    itemID bigint NOT NULL,
    quantity decimal(18, 4) NOT NULL,
    unitPrice decimal(13,4) NOT NULL,
    msdsProduced bit NULL,
    riskAssesment varchar(255) NULL,
    approvedBy bigint NULL,
    loanDueDate date NULL,
    loanDestination varchar(255) NULL,
    loanEmergencyContact varchar(255) NULL,
    purchaseDate datetime NOT NULL,
    stockOnHand int NULL,
    inventoryLevel decimal(18, 4) NOT NULL,
    processed bit NOT NULL,
    orderID bigint NOT NULL,
    returned bit NOT NULL,
    description varchar(255) NULL,
    operatorName varchar(255) NULL,

    PRIMARY KEY (id)    
);
ALTER TABLE transactions AUTO_INCREMENT=1;
/*-----------------------------*/
CREATE TABLE orderTypes(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    description varchar(255) NOT NULL,

    PRIMARY KEY (id)    
);
ALTER TABLE orderTypes AUTO_INCREMENT=1;
/*-----------------------------*/
CREATE TABLE suppliers(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    name varchar(255) NOT NULL,
    phoneNumber varchar(255) NULL,
    mobileNumber varchar(255) NULL,
    faxNumber varchar(255) NULL,
    contactName varchar(255) NULL,
    notes varchar(255) NULL,
    emailAddress varchar(255) NULL,
    website varchar(255) NULL,
    
    PRIMARY KEY (id)    
);
ALTER TABLE suppliers AUTO_INCREMENT=1;

/*
DB UPDATE, Adds Foregin Keys and defaults
*/

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
ALTER TABLE users ADD FOREIGN KEY (storeID) REFERENCES stores (id);

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

ALTER TABLE accounts ALTER active SET DEFAULT (1);

/*
projects Table
*/
ALTER TABLE projects ADD FOREIGN KEY (storeID) REFERENCES stores (id);

/*
allowedAccounts Table
*/
ALTER TABLE allowedAccounts ADD FOREIGN KEY (userID) REFERENCES users (id);
ALTER TABLE allowedAccounts ADD FOREIGN KEY (accountID) REFERENCES accounts (id);

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
ALTER TABLE detailedTransactions ALTER loanDueDate SET DEFAULT (NULL);

/*
items Table
*/
ALTER TABLE items ADD FOREIGN KEY (categoryID) REFERENCES categories (id);
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
ALTER TABLE userAccounts ADD FOREIGN KEY (userID) REFERENCES users (id);
*/

/*
supplier Table
*/
ALTER TABLE suppliers ADD FOREIGN KEY (storeID) REFERENCES stores (id);
