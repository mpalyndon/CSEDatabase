USE csedatabase;

CREATE TABLE orderTypes(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    description varchar(255) NOT NULL,

    PRIMARY KEY (id)    
);
ALTER TABLE AUTO_INCREMENT=1;