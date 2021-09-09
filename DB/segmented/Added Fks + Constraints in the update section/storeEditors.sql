USE csedatabase;

CREATE TABLE storeEditors(
	id bigint NOT NULL AUTO_INCREMENT,
	storeID bigint NOT NULL,
	userID bigint NULL,

	PRIMARY KEY (id)
);
ALTER TABLE storeEditors AUTO_INCREMENT=1;