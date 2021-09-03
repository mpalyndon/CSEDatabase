USE csedatabase;

CREATE TABLE items(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    description varchar(255) NOT NULL,
    barcode varchar(255) NOT NULL,
    catagoryID bigint NOT NULL,
    unitsID bigint NOT NULL,
    pricePerUnit money NOT NULL,
    purchaseDate datetime NOT NULL,
    inventoryLevelAlert int NOT NULL,
    supplierID bigint NULL,
    supplierNotes varchar(255) NULL,
    supplierPartNumber varchar(255) NULL,
    ohsorLoanitem int NOT NULL,
    hazardusSubstance bit NULL,
    dangerousGoodsCatagory1 varchar(10) NULL,
    dangerousGoodsCatagory2 varchar(10) NULL,
    dangerousGoodsCatagory3 varchar(10) NULL,
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
ALTER TABLE AUTO_INCREMENT=1;