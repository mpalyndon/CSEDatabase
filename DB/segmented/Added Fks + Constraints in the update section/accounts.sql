USE csedatabase;

CREATE TABLE accounts(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    projectID bigint NOT NULL,
    accountNumber varchar(255) NOT NULL,
    description varchar(255) NULL,
    active bit NOT NULL DEFAULT(0),
    notes varchar(255) NULL,

    PRIMARY KEY (id)
);
ALTER TABLE accounts AUTO_INCREMENT=1;