DROP DATABASE IF EXISTS ebay ; 
CREATE DATABASE ebay;
USE ebay;

-- ---------------------------------------------------------------------------------------------------------------------
CREATE TABLE secretquestion(
secretQID INT AUTO_INCREMENT PRIMARY KEY,
secretQuestion TINYTEXT
);

-- ---------------------------------------------------------------------------------------------------------------------
-- BANK DETAILS 

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

-- ---------------------------------------------------------------------------------------------------------------------
-- EBAY USER DETAILS 

CREATE TABLE userCredentials( -- both buyer and seller use this
userId INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(15) NOT NULL UNIQUE,
password VARCHAR(15) NOT NULL,
accStatus ENUM('0','1') -- 0= inactive(first when registered) 1=active (upon email confirmation)
);

CREATE TABLE PPayAccInfo(
PPayAccId INT AUTO_INCREMENT PRIMARY KEY,
ebayUserId INT,
bankId INT,
accNo INT,
PPayBalance INT,
rating INT,
FOREIGN KEY (ebayUserId) REFERENCES userCredentials(userId),
FOREIGN KEY (bankId) REFERENCES bankMaster(bankId),
FOREIGN KEY (accNo) REFERENCES BankAcc(accNo)
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
secretAnswer TINYTEXT, 
isAdmin ENUM('0','1'), -- 0= eBay user 1= eBay admin
PPayAccId INT, -- paypal account id
FOREIGN KEY (secretQID) REFERENCES secretquestion(secretQID),
FOREIGN KEY (userId) REFERENCES userCredentials(userId),
FOREIGN KEY (PPayAccId) REFERENCES PPayAccInfo(PPayAccId)
);

-- ---------------------------------------------------------------------------------------------------------------------
-- EBAY PRODUCT DETAILS

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
prodCondition enum('used','new'),
shipmentState enum('free','chargeble'),
shipmentCharges INT,
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
-- EBAY PURCHASE DETAILS

CREATE TABLE shoppingCart(
cartId INT AUTO_INCREMENT PRIMARY KEY,
grandTotal INT,
buyerId INT,
sellerId INT,
paymentConfirmation ENUM('0','1','-1'), -- 0=unpaid 1=success -1=failure
recieptConfirmation ENUM('1','2'), -- 1=recieved 2=not recieved
paymentTS TIMESTAMP, 
FOREIGN KEY (sellerId) REFERENCES userCredentials(userId),
FOREIGN KEY (buyerId) REFERENCES userCredentials(userId)
);

CREATE TABLE shoppingCartItem(
cartId INT,
cartItemId INT AUTO_INCREMENT PRIMARY KEY,
productId INT,
quantity INT,
unitPrice INT, -- app layer has to pass binPrice(quantity>=1)/highestBidPrice(quantity=1) 
subtotal INT,
buyerId INT,
sellerId INT,
FOREIGN KEY (productId) REFERENCES product(productId),
FOREIGN KEY (sellerId) REFERENCES userCredentials(userId),
FOREIGN KEY (buyerId) REFERENCES userCredentials(userId),
FOREIGN KEY (cartId) REFERENCES shoppingCart(cartId)
);

CREATE TABLE shipmentDetail(
cartId INT PRIMARY KEY,
courierCompany VARCHAR(20),
shippingAddress VARCHAR(500),
shipmentCharges INT,
ETD VARCHAR(5), -- ETA=Estimated time of delivary for Ex. 5days, 3 days etc
shipmentStatus ENUM('processing','shipped','delivered'),
FOREIGN KEY (cartId) REFERENCES shoppingCart(cartId)
);

-- ---------------------------------------------------------------------------------------------------------------------
-- EBAY TRANSACTIONS

CREATE TABLE PPTransaction(
transactionId INT AUTO_INCREMENT PRIMARY KEY,
buyerId INT,
sellerId INT,
cartId INT, 
accNo INT,   -- of buyer 
bankId INT,     -- of buyer
PPayAccId INT,  -- of seller 
paymentType ENUM('creditcard','debitcard','banktrasfer'),
amount INT,
pRecvTS TIMESTAMP,
pPaidTS TIMESTAMP,
pCancelTS TIMESTAMP,
status ENUM('paymentRecieved','paidToSellerPPacc','refund'),
FOREIGN KEY (sellerId) REFERENCES userCredentials(userId),
FOREIGN KEY (buyerId) REFERENCES userCredentials(userId),
FOREIGN KEY (cartId) REFERENCES shoppingCart(cartId),
FOREIGN KEY (bankId) REFERENCES bankMaster(bankId),
FOREIGN KEY (accNo) REFERENCES BankAcc(accNo),
FOREIGN KEY (PPayAccId) REFERENCES PPayAccInfo(PPayAccId)
);

CREATE TABLE PPayTransfer(
transferId INT AUTO_INCREMENT PRIMARY KEY,
transactionId INT,
PPayAccId INT,
amount INT,
transferStatus ENUM('0','1'),
transferTS TIMESTAMP,
FOREIGN KEY (transactionId) REFERENCES PPTransaction(transactionId),
FOREIGN KEY (PPayAccId) REFERENCES PPayAccInfo(PPayAccId)
);

-- ---------------------------------------------------------------------------------------------------------------------
-- EBAY advertisement

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
-- ---------------------------------------------------------------------------------------------------------------------