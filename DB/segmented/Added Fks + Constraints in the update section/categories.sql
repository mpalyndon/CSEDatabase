USE csedatabase;

CREATE TABLE categories(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    description varchar(255) NOT NULL,
    disabled bit NOT NULL,

    PRIMARY KEY (id)    
);
ALTER TABLE categories AUTO_INCREMENT=1;