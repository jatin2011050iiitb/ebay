DROP DATABASE IF EXISTS ebay ; 
CREATE DATABASE ebay;
USE ebay;
-- ---------------------------------------------------------------------------------------------------------------------
-- USER DETAILS 
CREATE TABLE userCredentials( -- both buyer and seller use this
userId INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(15) NOT NULL UNIQUE,
password VARCHAR(15) NOT NULL,
accStatus ENUM('0','1') -- 0= inactive 1=active 
);

CREATE TABLE userInfo(
userId INT PRIMARY KEY,
fName VARCHAR(20),
lName VARCHAR(20),
gender ENUM('male','female'),
dob DATE, -- yyyy-mm-dd
address VARCHAR(500),
city VARCHAR(20),
state VARCHAR(20),
country VARCHAR(20),
pincode INT,
emailId VARCHAR(30) NOT NULL,
phone BIGINT,
secretQID INT, 
secretanswer TINYTEXT, 
isAdmin ENUM('0','1'), -- 0= common man 1=admin
PPayAccId INT, -- paypal account id
FOREIGN KEY (userId) REFERENCES userCredentials(userId)
);

CREATE TABLE secretquestion(
secretQID INT AUTO_INCREMENT PRIMARY KEY,
secretQuestion TINYTEXT
);
-- ---------------------------------------------------------------------------------------------------------------------
-- PRODUCT DETAILS
CREATE TABLE category(
categoryId INT AUTO_INCREMENT PRIMARY KEY, 
categoryDesc TINYTEXT -- tinytext=max 255 characters
);

CREATE TABLE subcategory(
subcategoryId INT AUTO_INCREMENT PRIMARY KEY, 
categoryId INT NOT NULL, 
subcategoryDesc TINYTEXT,
FOREIGN KEY (categoryId) REFERENCES category(categoryId)
);

CREATE TABLE product(
productId INT AUTO_INCREMENT PRIMARY KEY,
subcategoryId INT NOT NULL, 
categoryId INT NOT NULL, 
productDesc TINYTEXT,
sellerId INT NOT NULL, 
saleType ENUM('1','2'), -- 1=binProduct  2=auctionProduct
FOREIGN KEY (sellerId) REFERENCES userCredentials(userId),
FOREIGN KEY (categoryId) REFERENCES category(categoryId),
FOREIGN KEY (subcategoryId) REFERENCES subcategory(subcategoryId)
);

CREATE TABLE binProduct( -- buy it now item
productId INT UNIQUE PRIMARY KEY,  
stock INT NOT NULL, 
binPrice INT NOT NULL,-- buyitnow price
FOREIGN KEY (productId) REFERENCES product(productId)
);

CREATE TABLE auctionProduct( -- auction item
auctionId INT AUTO_INCREMENT PRIMARY KEY,
productId INT UNIQUE, 
basePrice INT NOT NULL, 
stepPrice INT NOT NULL,
startDate TIMESTAMP,
endDate TIMESTAMP, 
highestBidPrice INT, 
finalBidderId INT,
FOREIGN KEY (finalbidderId) REFERENCES userCredentials(userId),
FOREIGN KEY (productId) REFERENCES product(productId)
);

CREATE TABLE bid_list(
bidId INT AUTO_INCREMENT PRIMARY KEY,
bidderId INT,
auctionId INT,
bidValue INT, 
bidTS TIMESTAMP,
FOREIGN KEY (bidderId) REFERENCES userCredentials(userId),
FOREIGN KEY (auctionId) REFERENCES auctionProduct(auctionId)
);
-- ---------------------------------------------------------------------------------------------------------------------
-- PURCHASE DETAILS

CREATE TABLE purchaseDetail(
purchaseOrderNo INT AUTO_INCREMENT PRIMARY KEY,
productId INT,
quantity INT,
unitPrice INT, -- app layer has to pass binPrice(quantity>=1)/highestBidPrice(quantity=1) 
totalAmount INT,
buyerId INT,
sellerId INT,
buyerAccId INT,
sellerAccId INT,
paymentType ENUM('creditcard','debitcard','banktrasfer'),
paymentConfirmation ENUM('0','1','-1'), -- 0=unpaid 1=success -1=failure
recieptConfirmation ENUM('1','2'), -- 1=recieved 2=not recieved
paymentTS TIMESTAMP, 
FOREIGN KEY (productId) REFERENCES product(productId),
FOREIGN KEY (sellerId) REFERENCES userCredentials(userId),
FOREIGN KEY (buyerId) REFERENCES userCredentials(userId)
);

CREATE TABLE shipmentDetail(
purchaseOrderNo INT PRIMARY KEY,
courierCompany VARCHAR(20),
shippingAddress VARCHAR(500),
shipmentCharges INT,
ETD VARCHAR(5), -- ETA=Estimated time of delivary for Ex. 5days, 3 days etc
shipmentStatus ENUM('processing','shipped','delivered'),
FOREIGN KEY (purchaseOrderNo) REFERENCES purchaseDetail(purchaseOrderNo)
);

-- ---------------------------------------------------------------------------------------------------------------------
-- BANK DETAILS 
/* CUSTOMER TABLE */

CREATE TABLE bankMaster(
bankId INT AUTO_INCREMENT PRIMARY KEY,
bankName VARCHAR(50)
);

CREATE TABLE BankAcc(
bankId INT,
accNo INT AUTO_INCREMENT PRIMARY KEY,
accHolder VARCHAR(20),
creditCardNo BIGINT,
creditCardverfNo INT,
debitCardNo BIGINT,
debitCardverfNo INT,
NEFTcode INT,
accBalance INT,
creditPermited INT DEFAULT 50000,
FOREIGN KEY (bankId) REFERENCES bankMaster(bankId)
);

/* PAISAPAY TRANSACTION TABLE*/

CREATE TABLE PPTransaction(
transactionId INT AUTO_INCREMENT PRIMARY KEY,
buyerId INT,
sellerId INT,
purchaseOrderNo INT, 
accountId INT,-- buyer
bankId INT, -- buyer
PPayAccId INT, 
paymentType enum('creditcard','debitcard','banktrasfer'),
amount INT,
pRecvTS TIMESTAMP,
pPaidTS TIMESTAMP,
pCancelTS TIMESTAMP,
status enum('recieved','paidtosellerPPacc','cancelled'),
FOREIGN KEY (sellerId) REFERENCES userCredentials(userId),
FOREIGN KEY (buyerId) REFERENCES userCredentials(userId),
FOREIGN KEY (purchaseOrderNo) REFERENCES purchaseDetail(purchaseOrderNo),
FOREIGN KEY (bankId) REFERENCES bankMaster(bankId)
);

/* PAISAPAY ACCOUNT TABLE */

CREATE TABLE PPayAccInfo(
PPayAccId INT AUTO_INCREMENT PRIMARY KEY,
ebayUserId INT,
bankId INT,
accNo INT,
PPayBalance int,
FOREIGN KEY (ebayUserId) REFERENCES userCredentials(userId),
FOREIGN KEY (bankId) REFERENCES bankMaster(bankId)
);
-- ---------------------------------------------------------------------------------------------------------------------
-- advertisement
CREATE TABLE advertisement(
advId INT AUTO_INCREMENT PRIMARY KEY,
adDesc TINYTEXT,
sellerId INT,
categoryId INT, 
subcategoryId INT,
addDate TIMESTAMP,
endDate TIMESTAMP,
costPerDay INT,
FOREIGN KEY (sellerId) REFERENCES userCredentials(userId),
FOREIGN KEY (categoryId) REFERENCES category(categoryId),
FOREIGN KEY (subcategoryId) REFERENCES subcategory(subcategoryId)
);
