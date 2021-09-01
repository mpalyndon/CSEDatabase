USE csedatabase;

CREATE TABLE stores(
	id bigint NOT NULL AUTO_INCREMENT,
	descr varchar(255) NOT NULL,
	contactName varchar(255) NOT NULL,
	contactPhone varchar(255) NOT NULL,
	location varchar(255) NOT NULL,
	ohsPurchasing bit NOT NULL,
	storeManagerID bigint NULL,
	storeEditorID bigint NULL,
	domainServer varchar(255) NOT NULL,
	allowOverBuying bit NOT NULL,
	adGroup varchar(255) NOT NULL,
	publicPurchasingComputer varchar(255) NOT NULL,
	loansEnabled bit NOT NULL,
	ohsApproval bit NOT NULL,
	loanApproval bit NOT NULL,
	ordersEnabled bit NOT NULL,
	markup decimal(18,3) NOT NULL,
	confirmPurchases bit NOT NULL,
	confirmCancel bit NOT NULL,
	
	PRIMARY KEY (id)
	/*FOREIGN KEY (storeEditorID) REFERENCES storeEditors(id)*/
);
ALTER TABLE stores AUTO_INCREMENT=1;