USE csedatabase;

CREATE TABLE recPass(
    id bigint NOT NULL AUTO_INCREMENT,
    username varchar(255) NOT NULL,
    secCode varchar(255) NOT NULL,
    expDate datetime NOT NULL,
    secCodeUsed bit NOT NULL,

    PRIMARY KEY (id)    
);
ALTER TABLE AUTO_INCREMENT=1;


/* 
This seems odd??? no primary key declared on origional 
stores.RecPass.Tables.sql file?
*/
