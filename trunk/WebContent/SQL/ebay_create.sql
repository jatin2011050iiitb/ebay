DROP DATABASE IF EXISTS ebay; 
CREATE DATABASE ebay;
USE ebay;

-- ---------------------------------------------------------------------------------------------------------------------
-- SECRET QUESTION  
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
creditCardVerfNo INT,
debitCardNo BIGINT,
debitCardVerfNo INT,
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
saleType ENUM('1','2'), -- 1=binProduct  2=auctionProduct
prodCondition ENUM('used','new'),
startDate TIMESTAMP,
endDate TIMESTAMP, 
shipmentState ENUM('free','chargeable'),
shipmentCharges INT,
sold ENUM('0','1'),  -- 0 = not sold.  1= sold out
FOREIGN KEY (sellerId) REFERENCES userCredentials(userId),
FOREIGN KEY (categoryId) REFERENCES category(categoryId),
FOREIGN KEY (subcategoryId) REFERENCES subcategory(subcategoryId)
);

CREATE TABLE binProduct( -- buy it now item
productId INT PRIMARY KEY,  
stock INT NOT NULL, 
binPrice INT NOT NULL,-- buyitnow price
FOREIGN KEY (productId) REFERENCES product(productId)
);

CREATE TABLE auctionProduct( -- auction item
auctionId INT AUTO_INCREMENT PRIMARY KEY,
productId INT UNIQUE, 
basePrice INT NOT NULL, 
stepPrice INT NOT NULL,
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
grandSubTotal INT,
shipmentCharges INT,
buyerId INT,
sellerId INT,
sellerName varchar(50),
paymentConfirmation ENUM('0','1','-1'), -- 0=unpaid 1=success -1=failure
recieptConfirmation ENUM('1','2'), -- 1=recieved 2=not recieved
paymentTS TIMESTAMP NULL, 
courierNum INT,
courierCompany VARCHAR(20),
shippingAddress VARCHAR(500),
ETD int, -- ETA=Estimated time of delivary for Ex. 5days, 3 days etc but enter just 5, 3 etc
shipmentStatus ENUM('processing','shipped','delivered','failed'),
shipTS TIMESTAMP NULL,
FOREIGN KEY (sellerId) REFERENCES userCredentials(userId),
FOREIGN KEY (buyerId) REFERENCES userCredentials(userId)
);

CREATE TABLE shoppingCartItem(
cartId INT,
cartItemId INT AUTO_INCREMENT PRIMARY KEY,
productId INT,
productDesc TINYTEXT,
quantity INT,
unitPrice INT, -- app layer has to pass binPrice and quantity>=1 / highestBidPrice and quantity=1
subtotal INT,
shippingPrice INT,
buyerId INT,
sellerId INT,
sellerName TINYTEXT,
itemDeselected int, -- insert 0 while creating cart. and insert 1 if user clicks on remove item. need not delete. the item loaded. 
FOREIGN KEY (productId) REFERENCES product(productId),
FOREIGN KEY (sellerId) REFERENCES userCredentials(userId),
FOREIGN KEY (buyerId) REFERENCES userCredentials(userId),
FOREIGN KEY (cartId) REFERENCES shoppingCart(cartId)
);

/*CREATE TABLE shipmentDetail(
cartId INT PRIMARY KEY,
courierCompany VARCHAR(20),
shippingAddress VARCHAR(500),
shipmentCharges INT,
ETD VARCHAR(5), -- ETA=Estimated time of delivary for Ex. 5days, 3 days etc
shipmentStatus ENUM('processing','shipped','delivered'),
FOREIGN KEY (cartId) REFERENCES shoppingCart(cartId)
);*/

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
paymentType ENUM('creditcard','debitcard','banktransfer'),
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
transferStatus INT,
transferTS TIMESTAMP,
FOREIGN KEY (transactionId) REFERENCES PPTransaction(transactionId),
FOREIGN KEY (PPayAccId) REFERENCES PPayAccInfo(PPayAccId)
);

-- ---------------------------------------------------------------------------------------------------------------------
-- EBAY ADVERTISEMENT

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

-- TRIGGER FOR UPDATING HIGHEST BID VALUE FROM bid_list INTO auctionProduct
DELIMITER $$
create trigger update_highest_bid after insert on bid_list FOR EACH ROW
begin
  update auctionProduct set highestBidPrice=(select max(bidValue) from bid_list WHERE auctionId=NEW.auctionId), 
  finalBidderId=(select bidderId from bid_list where bidValue=(select max(bidValue) from bid_list
  WHERE auctionId=NEW.auctionId)) where auctionProduct.auctionId=NEW.auctionId;
end$$
DELIMITER ;
-- ---------------------------------------------------------------------------------------------------------------------

-- TRIGGER FOR UPDATING CART WHEN BIDDING HAS TIMEDOUT

DELIMITER $$
CREATE TRIGGER update_cart_before BEFORE INSERT ON shoppingCartItem FOR EACH ROW
BEGIN
  IF NOT EXISTS(SELECT * FROM shoppingCart WHERE buyerId=NEW.buyerId AND sellerId=NEW.sellerId AND paymentConfirmation='0') THEN
    INSERT INTO shoppingCart(buyerId, sellerId, paymentConfirmation, recieptConfirmation) VALUES(NEW.buyerId, NEW.sellerId, '0', '0');
  END IF;
  SET NEW.cartId = (SELECT cartId FROM shoppingCart WHERE buyerId=NEW.buyerId AND sellerId=NEW.sellerId AND paymentConfirmation='0');
END$$
DELIMITER ;



DELIMITER $$
CREATE TRIGGER update_cart_after AFTER INSERT ON shoppingCartItem FOR EACH ROW
BEGIN
  UPDATE shoppingCart SET grandTotal=(SELECT SUM(subtotal+shippingPrice) FROM shoppingCartItem WHERE buyerId=NEW.buyerId AND sellerId=NEW.sellerId AND cartId=NEW.cartId),
        grandSubTotal=(SELECT SUM(subtotal) FROM shoppingCartItem WHERE buyerId=NEW.buyerId AND sellerId=NEW.sellerId AND cartId=NEW.cartId)
      WHERE cartId=NEW.cartId;
END$$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER update_PPayinfo AFTER INSERT ON PPayAccInfo FOR EACH ROW
BEGIN
  UPDATE userInfo SET PPayAccId=NEW.PPayAccId WHERE userId=NEW.ebayUserId;
END$$
DELIMITER ;


-- TRIGGER TO UPDATE THE STOCK WHEN A PRODUCT IS SOLD
DELIMITER $$
CREATE TRIGGER update_stock AFTER UPDATE ON shoppingCart FOR EACH ROW
BEGIN
  DECLARE productId_of_itemsold INT;
  DECLARE quantity_deduct INT;
  DECLARE done BOOLEAN DEFAULT 0;
  DECLARE PPayAccountId INT;
  DECLARE transferAmount INT;
  /*
  DECLARE cur_get_productId CURSOR FOR SELECT productId FROM shoppingCartItem WHERE cartId=NEW.cartId;
  OPEN cur_get_productId;
  
  IF NEW.paymentConfirmation='1' AND OLD.paymentConfirmation='0' AND NEW.shipmentStatus='processing' THEN
    REPEAT
      FETCH cur_get_productId INTO productId_of_itemsold;
      SELECT quantity INTO quantity_deduct FROM shoppingCartItem WHERE productId=productId_of_itemsold;
      UPDATE binProduct SET stock=(stock-quantity_deduct) WHERE productId=productId_of_itemsold;
    UNTIL done END REPEAT;
  END IF;

  CLOSE cur_get_productId;
  */
  IF NEW.shipmentStatus='delivered' AND OLD.shipmentStatus='shipped' AND NEW.recieptConfirmation='1' THEN
    SELECT PPayAccId INTO PPayAccountId FROM PPTransaction WHERE cartId=NEW.cartId;
    SELECT amount INTO transferAmount FROM PPTransaction WHERE cartId=NEW.cartId;
    
    UPDATE BankAcc SET accBalance=accBalance+transferAmount WHERE accNo=(SELECT accNo FROM PPayAccInfo WHERE PPayAccId=PPayAccountId); 
    INSERT INTO PPTransaction(BuyerId, SellerId, cartId, AccNo, BankId, PPayAccId, PaymentType, Amount, PPaidTS, status) 
                  (select BuyerId, SellerId, cartId, AccNo, BankId, PPayAccId, PaymentType, Amount, now(), 'paidToSellerPPacc' from PPTransaction where cartId=NEW.cartId);
  END IF;


END$$
DELIMITER ;

-- ---------------------------------------------------------------------------------------------------------------------

-- EVENT TO SET THE STATUS OF PRODUCT TO SOLD WHEN ENDDATE HAS CROSSED. ALSO INSERT IN TABLE SHOPPING CART ITEM
SET GLOBAL event_scheduler = 1;
delimiter |
CREATE EVENT end_bid
	ON SCHEDULE
	EVERY 1 SECOND
	DO
    BEGIN
      INSERT INTO shoppingCartItem(productId,productDesc,quantity,unitPrice,subtotal,shippingPrice,buyerId,sellerId,sellerName,itemDeselected)
          SELECT p.productId, p.productDesc, 1, a.highestBidPrice, a.highestBidPrice, p.shipmentCharges, a.finalBidderId, p.sellerId, u.fName, 0
              FROM product p, auctionProduct a, userInfo u WHERE p.productId=a.productId AND u.userId=p.sellerId AND p.sold='0' AND p.endDate < now();
      UPDATE product SET sold='1' WHERE endDate < now() AND productId in (SELECT productId FROM auctionProduct);
      /*UPDATE product SET sold='1' WHERE endDate < now() AND productId in (SELECT productId FROM binProduct where quantity>0);*/
      UPDATE product SET sold='1' WHERE productId in (SELECT productId FROM binProduct where stock=0);  
    END;
