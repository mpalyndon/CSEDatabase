DROP DATABASE IF EXISTS csedatabase;
CREATE DATABASE csedatabase;

USE csedatabase;

CREATE TABLE stores(
	id bigint NOT NULL AUTO_INCREMENT,
	descr varchar(50) NOT NULL,
	contactName varchar(50) NOT NULL,
	contactPhone varchar(50) NOT NULL,
	location varchar(50) NOT NULL,
	ohsPurchasing bit NOT NULL,
	storeManagerID bigint NULL,
	storeEditorID bigint NULL,
	domainServer varchar(255) NOT NULL,
	allowOverBuying bit NOT NULL,
	adGroup varchar(50) NOT NULL,
	publicPurchasingComputer varchar(50) NOT NULL,
	loansEnabled bit NOT NULL,
	ohsApproval bit NOT NULL,
	loanApproval bit NOT NULL,
	ordersEnabled bit NOT NULL,
	markup decimal(18,3) NOT NULL,
	confirmPurchases bit NOT NULL,
	confirmCancel bit NOT NULL,
	
	PRIMARY KEY (id),
	FOREIGN KEY (storeEditorID) REFERENCES storeEditors(id)
);
ALTER TABLE stores AUTO_INCREMENT=1;

CREATE TABLE users(
	id bigint NOT NULL AUTO_INCREMENT,
	storeID bigint NOT NULL,
	fname varchar(50) NOT NULL,
	sname varchar(50) NOT NULL,
	prefname varchar(50) NOT NULL,
	username varchar(50) NOT NULL,
	barcodes varchar(100) NOT NULL,
	location varchar(50) NULL,
	type varchar(50) NULL,
	startDate datetime NULL,
	finishDate datetime NULL,
	schoolArea varchar(500) NULL,
	changeReminder bit NULL,
	notes varchar(255) NULL,
	reminderDate datetime NULL,
	supervisor varchar(255) NULL,
	password varchar(50) NULL,
	isPasswordChanged bit NOT NULL,

	PRIMARY KEY (id),
	FOREIGN KEY (storeID) REFERENCES stores(id)
);
ALTER TABLE users AUTO_INCREMENT=1;

CREATE TABLE storeEditors(
	id bigint NOT NULL AUTO_INCREMENT,
	storeID bigint NOT NULL,
	userID bigint NULL,

	PRIMARY KEY (id),
	FOREIGN KEY storeID REFERENCES stores(id),
	FOREIGN KEY userID REFERENCES users(id)
);

ALTER TABLE storeEditors AUTO_INCREMENT=1;
