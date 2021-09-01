
/*
this is broken dont touch unless you know how to fix it
*/

USE csedatabase;

CREATE TABLE storeEditors(
	id bigint NOT NULL AUTO_INCREMENT,
	storeID bigint NOT NULL,
	userID bigint NULL,

	PRIMARY KEY (id)
	/*FOREIGN KEY storeID REFERENCES stores(id),
	FOREIGN KEY userID REFERENCES users(id)*/
);

ALTER TABLE storeEditors AUTO_INCREMENT=1;