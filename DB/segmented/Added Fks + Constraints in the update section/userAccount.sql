USE csedatabase;

CREATE TABLE userAccount(
    id bigint NOT NULL AUTO_INCREMENT,
    userID varchar(255) NULL,
    validAccCode varchar(255) NULL,
    deleted bit NOT NULL DEFAULT(0),

    PRIMARY KEY (id)    
);
ALTER TABLE AUTO_INCREMENT=1;