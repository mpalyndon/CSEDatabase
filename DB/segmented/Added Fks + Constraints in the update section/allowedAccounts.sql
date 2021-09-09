USE csedatabase;

CREATE TABLE allowedAccounts(
    id bigint NOT NULL AUTO_INCREMENT,
    userID bigint NOT NULL,
    accountID bigint NOT NULL,

    PRIMARY KEY (id)    
);
ALTER TABLE allowedAccounts AUTO_INCREMENT=1;