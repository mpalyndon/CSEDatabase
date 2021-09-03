USE csedatabase;

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