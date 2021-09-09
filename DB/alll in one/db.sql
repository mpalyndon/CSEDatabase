DROP DATABASE IF EXISTS csedatabase;
CREATE DATABASE csedatabase;

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