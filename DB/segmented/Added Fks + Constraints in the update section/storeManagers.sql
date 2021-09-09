USE csedatabase;

CREATE TABLE storeManagers(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    userID bigint NOT NULL,

    PRIMARY KEY (id)    
);
ALTER TABLE AUTO_INCREMENT=1;