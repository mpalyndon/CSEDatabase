USE csedatabase;

CREATE TABLE transactions(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    userID bigint NOT NULL,
    accountID bigint NOT NULL,
    itemID bigint NOT NULL,
    quantity decimal(18, 4) NOT NULL,
    unitPrice money NOT NULL,
    msdsProduced bit NULL,
    riskAssesment varchar(255) NULL,
    approvedBy bigint NULL,
    loanDueDate date NULL DEFAULT(NULL),
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
ALTER TABLE AUTO_INCREMENT=1;