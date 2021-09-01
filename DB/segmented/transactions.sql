USE csedatabase;

CREATE TABLE transactions(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    userID bigint NOT NULL,
    accountID bigint NOT NULL,
    itemID bigint NOT NULL,
    quantity decimal(18, 4) NOT NULL,
    unitPrice money NOT NULL,
    msdsProduced bit NULL DEFAULT(0),
    riskAssesment varchar(255) NULL,
    approvedBy bigint NULL DEFAULT(-1),
    loanDueDate date NULL DEFAULT(NULL),
    loanDestination varchar(255) NULL,
    loanEmergencyContact varchar(255) NULL,
    purchaseDate datetime NOT NULL,
    stockOnHand int NULL,
    inventoryLevel decimal(18, 4) NOT NULL DEFAULT(0),
    processed bit NOT NULL DEFAULT(1),
    orderID bigint NOT NULL,
    returned bit NOT NULL DEFAULT(0),
    description varchar(255) NULL,
    operatorName varchar(255) NULL,

    PRIMARY KEY (id)    
);
ALTER TABLE AUTO_INCREMENT=1;