USE csedatabase;

CREATE TABLE users(
	id bigint NOT NULL AUTO_INCREMENT,
	storeID bigint NOT NULL,
	fname varchar(255) NOT NULL,
	sname varchar(255) NOT NULL,
	prefname varchar(255) NOT NULL,
	username varchar(255) NOT NULL,
	barcodes varchar(255) NOT NULL,
	location varchar(50) NULL,
	type varchar(255) NULL,
	startDate datetime NULL,
	finishDate datetime NULL,
	schoolArea varchar(255) NULL,
	changeReminder bit NULL,
	notes varchar(255) NULL,
	reminderDate datetime NULL,
	supervisor varchar(255) NULL,
	password varchar(255) NULL,
	isPasswordChanged bit NOT NULL,

	PRIMARY KEY (id)
);
ALTER TABLE users AUTO_INCREMENT=1;