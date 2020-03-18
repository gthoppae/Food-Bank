BEGIN TRANSACTION;
CREATE TABLE "Account" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	parent_id VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Account" VALUES('0013E00001ARZHcQAP','La Sarraz Indian Restaurant','');
CREATE TABLE "Delivery_Item__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	delivery__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery_Item__c" VALUES('a003E000004Uz8EQAS','Dinner excess','2020-03-20','Refrigerated','a013E000007kV6fQAE');
INSERT INTO "Delivery_Item__c" VALUES('a003E000004Uz84QAC','Lunch excess','2020-03-20','Refrigerated','a013E000007kV6fQAE');
CREATE TABLE "Delivery__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	supplier__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery__c" VALUES('a013E000007kV6fQAE','Restaurant Excess Distribution','2020-03-19T11:00:00.000Z','Scheduled','0013E00001ARZHcQAP');
COMMIT;
