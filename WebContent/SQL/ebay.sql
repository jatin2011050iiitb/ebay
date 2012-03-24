DROP DATABASE IF EXISTS ebay ; 
CREATE DATABASE ebay;
USE ebay;
-- ---------------------------------------------------------------------------------------------------------------------
-- not sure if its needed but since its there in documentation here it goes.
create table country( 
countryId int AUTO_INCREMENT PRIMARY KEY, 
counrtyName varchar(20)
);

create table state(
stateId int AUTO_INCREMENT PRIMARY KEY, 
countryId int, 
stateName varchar(20),
foreign key (countryId) references country(countryId)
);

create table city(
cityId int AUTO_INCREMENT PRIMARY KEY, 
countryId int,
stateId int,
cityName varchar(20),
foreign key (countryId) references country(countryId),
foreign key (stateId) references state(stateId)
);
-- ---------------------------------------------------------------------------------------------------------------------
-- USER DETAILS 
create table userCredentials( -- both buyer and seller use this
userId int AUTO_INCREMENT PRIMARY KEY,
username varchar(15) NOT NULL UNIQUE,
password varchar(15) NOT NULL
);

create table userInfo(
userId int PRIMARY KEY,
dob DATE,
gender enum('male','female'),
emailId varchar(30) NOT NULL,
address tinytext,
cityId int,
pincode int,
phone int,
secretquestion tinytext, 
secretanswer tinytext, 
accStatus int, 
isAdmin int,
PPayAccId int, -- paypal account id
foreign key (cityId) references city(cityId),
foreign key (userId) references userCredentials(userId)
);

-- ---------------------------------------------------------------------------------------------------------------------
-- PRODUCT DETAILS
create table category(
categoryId int AUTO_INCREMENT PRIMARY KEY, 
categoryDesc tinytext -- tinytext=max 255 characters
);

create table subcategory(
subcategoryId int AUTO_INCREMENT PRIMARY KEY, 
categoryId int NOT NULL, 
subcategoryDesc tinytext,
foreign key (categoryId) references category(categoryId)
);

create table product(
productId int AUTO_INCREMENT PRIMARY KEY,
subcategoryId int NOT NULL, 
categoryId int NOT NULL, 
productDesc tinytext,
sellerId int NOT NULL, 
saleType enum('1','2'), -- 1=binProduct  2=auctionProduct
foreign key (sellerId) references userCredentials(userId),
foreign key (categoryId) references category(categoryId),
foreign key (subcategoryId) references subcategory(subcategoryId)
);

create table binProduct( -- buy it now item
productId int unique PRIMARY KEY,  
stock int NOT NULL, 
binPrice int NOT NULL,-- buyitnow price
foreign key (productId) references product(productId)
);

create table auctionProduct( -- auction item
auctionId int AUTO_INCREMENT PRIMARY KEY,
productId int unique, 
basePrice int not null, 
stepPrice int not null,
startDate timestamp,
endDate timestamp, 
highestBidPrice int, 
finalBidderId int,
foreign key (finalbidderId) references userCredentials(userId),
foreign key (productId) references product(productId)
);

create table bid_list(
bidId int AUTO_INCREMENT PRIMARY KEY,
bidderId int,
auctionId int,
bidValue int, 
bidTS TIMESTAMP,
foreign key (bidderId) references userCredentials(userId),
foreign key (auctionId) references auctionProduct(auctionId)
);
-- ---------------------------------------------------------------------------------------------------------------------

-- PURCHASE DETAILS

CREATE TABLE purchaseDetail(
purchaseOrderNo INT AUTO_INCREMENT PRIMARY KEY,
productId INT,
quantity int,
unitPrice int, -- app layer has to pass binPrice(quantity>=1)/highestBidPrice(quantity=1) 
totalAmount INT,
buyerId INT,
sellerId int,
buyerAccId int,
sellerAccId int,
paymentType enum('creditcard','debitcard','banktrasfer'),
paymentConfirmation enum('0','1','-1'), -- 0=unpaid 1=success -1=failure
recieptConfirmation enum('1','2'), -- 1=recieved 2=not recieved
paymentTS TIMESTAMP, 
foreign key (productId) references product(productId),
foreign key (sellerId) references userCredentials(userId),
foreign key (buyerId) references userCredentials(userId)
);




CREATE TABLE shipmentDetail(
purchaseOrderNo INT PRIMARY KEY,
courierCompany varchar(20),
shippingAddress tinytext,
shipmentCharges INT,
ETD varchar(5), -- ETA=Estimated time of delivary for Ex. 5days, 3 days etc
shipmentStatus enum('processing','shipped','delivered'),
foreign key (purchaseOrderNo) references purchaseDetail(purchaseOrderNo)
);

-- ---------------------------------------------------------------------------------------------------------------------
-- BANK DETAILS 
/* CUSTOMER TABLE */

CREATE TABLE customer(
customerId INT PRIMARY KEY,
custName VARCHAR(200),
phoneNo VARCHAR(15),
emailId VARCHAR(25),
address tinytext,
dob DATE,
password VARCHAR(50)
);

/* ACCOUNT TABLE */

CREATE TABLE account(
accountId INT PRIMARY KEY,
customerId INT,
accountType VARCHAR(20),
active VARCHAR(20),
creditCard VARCHAR(30),
debitCard VARCHAR(30)
);

/* TRANSACTION TABLE */

CREATE TABLE bankTransaction(
transactionId INT PRIMARY KEY,
accountId INT,
transactionType VARCHAR(20),
amount INT,
date DATE,
description VARCHAR(200)
);

/* BALANCE-HISTORY TABLE */

CREATE TABLE balancehistory(
id INT PRIMARY KEY,
accountId INT,
balanceDate DATE,
balance INT,
transactionId INT
);

/* PAISAPAY ACCOUNT TABLE */

CREATE TABLE paisapayaccount(
paisaPayAccountId INT PRIMARY KEY,
ebayUserId INT,
bankId INT,
accountId INT
);

/* PAISAPAY TRANSACTION TABLE*/

CREATE TABLE paisapaytransaction(
transactionId INT PRIMARY KEY,
buyerId INT,
purchaseOrderNO INT,
amount INT,
timestamp TIMESTAMP,
confirmation VARCHAR(20),
status VARCHAR(20)
);

/* TRANSFER TABLE */

CREATE TABLE transfer(
transferId INT PRIMARY KEY,
transactionId INT,
paisaPayAccountId INT,
transferDate DATE,
status VARCHAR(20),
amount INT,
transferType VARCHAR(20)
);

create table advertisement(
advId int AUTO_INCREMENT PRIMARY KEY,
adDesc tinytext,
sellerId int,
categoryId int, 
subcategoryId int,
addDate timestamp,
endDate timestamp,
costPerDay int,
foreign key (sellerId) references userCredentials(userId),
foreign key (categoryId) references category(categoryId),
foreign key (subcategoryId) references subcategory(subcategoryId)
);
