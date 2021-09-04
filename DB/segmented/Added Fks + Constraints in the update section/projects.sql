USE csedatabase;

CREATE TABLE projects(
    id bigint NOT NULL AUTO_INCREMENT,
    storeID bigint NOT NULL,
    code varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    manager varchar(255) NOT NULL,

    PRIMARY KEY (id)    
);
ALTER TABLE projects AUTO_INCREMENT=1;

/*
calls some sys.sp_addextendedproperty on some stuff, probably important. idk 
*/