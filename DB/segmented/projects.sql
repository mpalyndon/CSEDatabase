USE csedatabase;

CREATE TABLE (
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    code varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    manager varchar(255) NOT NULL,

    PRIMARY KEY (id)    
);
ALTER TABLE AUTO_INCREMENT=1;

/*
calls sys.sp_addextendedproperty on some stuff, probably important
*/