USE csedatabase;

CREATE TABLE categories(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    description varchar(255) NOT NULL,
    disabled bit NOT NULL DEFAULT(0),

    PRIMARY KEY (id)    
);
ALTER TABLE AUTO_INCREMENT=1;