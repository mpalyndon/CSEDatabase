USE csedatabase;

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
ALTER TABLE AUTO_INCREMENT=1;