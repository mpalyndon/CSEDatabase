USE csedatabase;

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
    unitprice money NOT NULL,
    MSDSProduced varchar(255) NOT NULL,
    riskAssesment varchar(255) NOT NULL,
    approvedBy varchar(255) NOT NULL,
    loanDueDate date NULL,
    loanDestination varchar(255) NULL,
    loanEmergencyContact varchar(255) NULL,
    purchaseDate datetime NOT NULL,
    stockOnHand int NULL,
    inventoryLevel decimal(18, 4) NOT NULL,
    processed bit NOT NULL DEFAULT(1),
    returned bit NOT NULL DEFAULT(0),
    description varchar(255) NULL,
    operatorName varchar(255) NULL,
    
    PRIMARY KEY (id)    
);
ALTER TABLE AUTO_INCREMENT=1;