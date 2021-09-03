USE csedatabase;

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
    isExternal bit NULL.
    cost money NOT NULL,
    isOpen bit NOT NULL,
    location varchar(255) NULL,

    PRIMARY KEY (id)    
);
ALTER TABLE AUTO_INCREMENT=1;