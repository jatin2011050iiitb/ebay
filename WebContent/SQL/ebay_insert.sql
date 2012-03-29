-- ---------------------------------------------------------------------------------------------------------------------
-- Insertion into BANK MASTER

INSERT INTO `ebay`.`bankmaster` (`bankName`) VALUES ('Syndicate Bank');
INSERT INTO `ebay`.`bankmaster` (`bankName`) VALUES ('State Bank of India');

-- ---------------------------------------------------------------------------------------------------------------------
-- Insertion into BANKACC TABLE 

INSERT INTO `ebay`.`bankacc` (`bankId`, `accHolder`, `creditCardNo`, `creditCardVerfNo`, 
`debitCardNo`, `debitCardVerfNo`, `NEFTcode`, `accBalance`) 
VALUES (1, 'Animesh', 5105105105105100, 123, 5555555555554444, 123, 123, 50000);

INSERT INTO `ebay`.`bankacc` (`bankId`, `accHolder`, `creditCardNo`, `creditCardVerfNo`,
`debitCardNo`, `debitCardVerfNo`, `NEFTcode`, `accBalance`) 
VALUES (1, 'Anup', 4111111111111111, 123, 4012888888881881, 123, 123, 50000);

INSERT INTO `ebay`.`bankacc` (`bankId`, `accHolder`, `creditCardNo`, `creditCardVerfNo`,
`debitCardNo`, `debitCardVerfNo`, `NEFTcode`, `accBalance`) 
VALUES (1, 'Ashrith', 3782822463100052, 123, 3714496353984311, 123, 123, 50000);

INSERT INTO `ebay`.`bankacc` (`bankId`, `accHolder`, `creditCardNo`, `creditCardVerfNo`,
`debitCardNo`, `debitCardVerfNo`, `NEFTcode`, `accBalance`) 
VALUES (2, 'Eashwar', 3787344936710001, 123, 3852000002323723, 123, 123, 50000);

INSERT INTO `ebay`.`bankacc` (`bankId`, `accHolder`, `creditCardNo`, `creditCardVerfNo`,
`debitCardNo`, `debitCardVerfNo`, `NEFTcode`, `accBalance`)
VALUES (2, 'Gaurav', 6011111111111117, 123, 6011000990139424, 123, 123, 50000);

INSERT INTO `ebay`.`bankacc` (`bankId`, `accHolder`, `creditCardNo`, `creditCardVerfNo`,
`debitCardNo`, `debitCardVerfNo`, `NEFTcode`, `accBalance`)
VALUES (2, 'Jatin', 3530111333300000, 123, 3566002020360505, 123, 123, 50000);

-- ---------------------------------------------------------------------------------------------------------------------
-- Insertion into SECRET QUESTION

INSERT INTO `ebay`.`secretquestion` (`secretQuestion`) VALUES ('who is your favourite cricket player?');
INSERT INTO `ebay`.`secretquestion` (`secretQuestion`) VALUES ('what is your mother\'s maiden\'s name?');
INSERT INTO `ebay`.`secretquestion` (`secretQuestion`) VALUES ('who is your favourite film star?');
INSERT INTO `ebay`.`secretquestion` (`secretQuestion`) VALUES ('what is the name of your first school?');
INSERT INTO `ebay`.`secretquestion` (`secretQuestion`) VALUES ('what is your pet\'s name?');

-- ---------------------------------------------------------------------------------------------------------------------
-- Insertion into USER CREDENTIALS

INSERT INTO `ebay`.`usercredentials` 
(`username`, `password`, `accStatus`) 
VALUES ('ani', 'ani', '0');

INSERT INTO `ebay`.`usercredentials` 
(`username`, `password`, `accStatus`) 
VALUES ('anu', 'anu', '0');

INSERT INTO `ebay`.`usercredentials` 
(`username`, `password`, `accStatus`) 
VALUES ('ash', 'ash', '0');

INSERT INTO `ebay`.`usercredentials` 
(`username`, `password`, `accStatus`) 
VALUES ('eas', 'eas', '0');

INSERT INTO `ebay`.`usercredentials` 
(`username`, `password`, `accStatus`) 
VALUES ('gau', 'gau', '0');

INSERT INTO `ebay`.`usercredentials` 
(`username`, `password`, `accStatus`) 
VALUES ('jat', 'jat', '0');

-- ---------------------------------------------------------------------------------------------------------------------
-- Insertion into PPACCINFO

INSERT INTO `ebay`.`ppayaccinfo` (`ebayUserId`, `bankId`, `accNo`, `PPayBalance`, `rating`) 
VALUES (1, 1, 1, 0, 0);
INSERT INTO `ebay`.`ppayaccinfo` (`ebayUserId`, `bankId`, `accNo`, `PPayBalance`, `rating`) 
VALUES (2, 1, 2, 0, 0);
INSERT INTO `ebay`.`ppayaccinfo` (`ebayUserId`, `bankId`, `accNo`, `PPayBalance`, `rating`)
VALUES (3, 1, 3, 0, 0);
INSERT INTO `ebay`.`ppayaccinfo` (`ebayUserId`, `bankId`, `accNo`, `PPayBalance`, `rating`) 
VALUES (4, 2, 4, 0, 0);
INSERT INTO `ebay`.`ppayaccinfo` (`ebayUserId`, `bankId`, `accNo`, `PPayBalance`, `rating`) 
VALUES (5, 2, 4, 0, 0);
INSERT INTO `ebay`.`ppayaccinfo` (`ebayUserId`, `bankId`, `accNo`, `PPayBalance`, `rating`) 
VALUES (6, 2, 6, 0, 0);

-- ---------------------------------------------------------------------------------------------------------------------
-- Insertion into USERINFO

INSERT INTO `ebay`.`userinfo` 
(`userId`, `fName`, `lName`, `gender`, `dob`, `address`, `city`, `state`, `country`, `pincode`, 
`emailId`, `phone`, `secretQID`, `secretanswer`, `isAdmin`) 
VALUES (1, 'Animesh', 'Ghosh', 'male', '1988-05-14', 'IIIT Bangalore', 'Bangalore', 'Karnataka', 'India', 560100, 
'ani007mesh@gmail.com', 9739092136, 1, 'sachin', '0');

INSERT INTO `ebay`.`userinfo` 
(`userId`, `fName`, `lName`, `gender`, `dob`, `address`, `city`, `state`, `country`, `pincode`,
`emailId`, `phone`, `secretQID`, `secretanswer`, `isAdmin`) 
VALUES (2, 'Anup', 'Warnulkar', 'male', '1986-04-28', 'IIIT Bangalore', 'Bangalore', 'Karnataka', 'India', 560100,
'anupd.warnulkar@iiitb.org', 9886571228, 1, 'sachin', '0');

INSERT INTO `ebay`.`userinfo` 
(`userId`, `fName`, `lName`, `gender`, `dob`, `address`, `city`, `state`, `country`, `pincode`,
`emailId`, `phone`, `secretQID`, `secretanswer`, `isAdmin`) 
VALUES (3, 'Ashrith', 'Kulai', 'male', '1989-06-11', 'IIIT Bangalore', 'Bangalore', 'Karnataka', 'India', 560100,
'ashrith.kulai@iiitb.org', 7204317825, 1, 'sachin', '0');

INSERT INTO `ebay`.`userinfo` 
(`userId`, `fName`, `lName`, `gender`, `dob`, `address`, `city`, `state`, `country`, `pincode`,
`emailId`, `phone`, `secretQID`, `secretanswer`, `isAdmin`) 
VALUES (4, 'Eashwar', 'V', 'male', '1989-09-18', 'IIIT Bangalore', 'Bangalore', 'Karnataka', 'India', 560100,
'eashwar.v@iiitb.org', 9611920175, 1, 'sachin', '0');

INSERT INTO `ebay`.`userinfo` 
(`userId`, `fName`, `lName`, `gender`, `dob`, `address`, `city`, `state`, `country`, `pincode`,
`emailId`, `phone`, `secretQID`, `secretanswer`, `isAdmin`) 
VALUES (5, 'Gaurav', 'Kulkarni', 'male', '1986-12-29', 'IIIT Bangalore', 'Bangalore', 'Karnataka', 'India', 560100,
'gaurav.vinter@gmail.com', 9742881323, 1, 'sachin', '0');

INSERT INTO `ebay`.`userinfo` 
(`userId`, `fName`, `lName`, `gender`, `dob`, `address`, `city`, `state`, `country`, `pincode`, 
`emailId`, `phone`, `secretQID`, `secretanswer`, `isAdmin`) 
VALUES (6, 'Jatin', 'Chaudhary', 'male', '1987-04-30', 'IIIT Bangalore', 'Bangalore', 'Karnataka', 'India', 560100,
'jatin.chaudhary@iiitb.org', 8861047701, 1, 'jatin', '0');
-- ---------------------------------------------------------------------------------------------------------------------
-- Insertion into CATEGORY

INSERT INTO `ebay`.`category` (`categoryId`, `categoryDesc`) VALUES (1, 'Clothing & Accessories');
INSERT INTO `ebay`.`category` (`categoryId`, `categoryDesc`) VALUES (2, 'Books & Magazines');
INSERT INTO `ebay`.`category` (`categoryId`, `categoryDesc`) VALUES (3, ' Memory Cards, Pen Drives & HDD');
INSERT INTO `ebay`.`category` (`categoryId`, `categoryDesc`) VALUES (4, 'Watches');
INSERT INTO `ebay`.`category` (`categoryId`, `categoryDesc`) VALUES (5, 'Movies & Music');

-- ---------------------------------------------------------------------------------------------------------------------
-- Insertion into SUBCATEGORY 

INSERT INTO `ebay`.`subcategory` (`subcategoryId`, `categoryId`, `subcategoryDesc`) VALUES (1, 1, 'T-Shirt');
INSERT INTO `ebay`.`subcategory` (`subcategoryId`, `categoryId`, `subcategoryDesc`) VALUES (2, 1, 'Shirts');
INSERT INTO `ebay`.`subcategory` (`subcategoryId`, `categoryId`, `subcategoryDesc`) VALUES (3, 1, 'Trousers');
INSERT INTO `ebay`.`subcategory` (`subcategoryId`, `categoryId`, `subcategoryDesc`) VALUES (4, 2, ' Audio Books');
INSERT INTO `ebay`.`subcategory` (`subcategoryId`, `categoryId`, `subcategoryDesc`) VALUES (5, 2, 'Computers');
INSERT INTO `ebay`.`subcategory` (`subcategoryId`, `categoryId`, `subcategoryDesc`) VALUES (6, 2, 'Non Fiction');
INSERT INTO `ebay`.`subcategory` (`subcategoryId`, `categoryId`, `subcategoryDesc`) VALUES (7, 3, 'Memory Cards');
INSERT INTO `ebay`.`subcategory` (`subcategoryId`, `categoryId`, `subcategoryDesc`) VALUES (8, 3, 'Pendrives');
INSERT INTO `ebay`.`subcategory` (`subcategoryId`, `categoryId`, `subcategoryDesc`) VALUES (9, 3, 'Blank Media');
INSERT INTO `ebay`.`subcategory` (`subcategoryId`, `categoryId`, `subcategoryDesc`) VALUES (10, 4, 'Men’s Wrist Watch');
INSERT INTO `ebay`.`subcategory` (`subcategoryId`, `categoryId`, `subcategoryDesc`) VALUES (11, 4, 'Women’s Wrist Watch');
INSERT INTO `ebay`.`subcategory` (`subcategoryId`, `categoryId`, `subcategoryDesc`) VALUES (12, 4, 'Pocket Watch');
INSERT INTO `ebay`.`subcategory` (`subcategoryId`, `categoryId`, `subcategoryDesc`) VALUES (13, 5, 'Indian, Hindi DVDs');
INSERT INTO `ebay`.`subcategory` (`subcategoryId`, `categoryId`, `subcategoryDesc`) VALUES (14, 5, 'Indian, Hindi VCDs');
INSERT INTO `ebay`.`subcategory` (`subcategoryId`, `categoryId`, `subcategoryDesc`) VALUES (15, 5, 'International DVD’s');

-- ---------------------------------------------------------------------------------------------------------------------
-- Insertion into PRODUCT TABLE

INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (1,1,1,'Men''s COLLAR T shirt size XL',1,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (2,1,1,'Men''s COLLAR T shirt size L',1,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (3,1,1,'Men''s COLLAR T shirt size XXL',1,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (4,1,1,'Men''s COLLAR T shirt long sleeve size M',1,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (5,1,1,'Best Quality: French Brand: Domyos: Fitness Plain T shirt: SPORTEE size S',1,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (6,1,1,'WHALE BRANDED ROUND NECK PLAIN T-SHIRTS',2,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (7,1,1,'GLOBUS BRANDED ROUND NECK PLAIN T-SHIRTS',2,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`)
VALUES (8,1,1,'Collar T-Shirt in 100% cotton Fabric',2,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`)
VALUES (9,1,1,'Round Neck T-Shirt in 100% cotton',2,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`)
VALUES (10,1,1,'Mens Printed Casual T.Shirt - Size - S - ( Discounted Price - LJ 582 )',2,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`)
VALUES (11,1,1,'YouTube Slogan White T-shirt',2,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`)
VALUES (12,1,1,'Rock Star Skull Guitar T Shirt music band custom slogan',3,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`)
VALUES (13,1,1,'Chinese Love symbol logo T shirt tattoo china design',3,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`)
VALUES (14,2,1,'Casual shirt in checks Branded',3,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`)
VALUES (15,2,1,'3 Formal shirt plain in single color Branded in price of 1',3,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`)
VALUES (16,2,1,'Men''s Casual/Formal Slim fit PartyWear Shirt Large Size Shirt Sz-L S#003W',3,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`)
VALUES (17,2,1,'Combo offer of two Men''s formal or semi formal shirts size 38 ',3,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`)
VALUES (18,2,1,'Men''s formal or semi formal green color shirt size 38',4,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (19,2,1,'Men''s formal or semi formal shirt size 42',4,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`)
VALUES (20,2,1,'Men''s Full Sleeves Denim Shirt Sz.38 MRP.495/-',4,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`)
VALUES (21,2,1,'Yepme Red Turtle Neck Shirt 4388 Size 42',4,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`)
VALUES (22,2,1,'Yepme Navy Turtle Neck Shirt 4390 Size 42',4,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`)
VALUES (23,2,1,'Yepme Swarovski Button White Party Wear Shirt 3589 Size 42',5,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (24,2,1,'Yepme Purple Blue Party Wear Shirt 4719 Size 44',5,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (25,3,1,'Premium Quality (2 PCS) Soft Cotton Short / Bermuda for Men',5,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (26,3,1,'Branded Mens Shorts SJ 09 Size32-35/L, MRP-899/-@40% Discount 550/-',5,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (27,3,1,'"Men''s Formal Trouser Sz.27-28"" MRP.350/-"',5,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (28,3,1,'White Cotton Pant for Men-Waist 36 inches MRP Rs. 1299',6,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (29,3,1,'Men''s FORMAL TROUSERS size 32 ',6,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (30,3,1,'Yepme Office Formal Brown Trousers 4387 Size-38',6,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (31,3,1,'Men''s Formal Trouser Sz.30 MRP.495/-',6,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (32,3,1,'Men Jeans Sz.28 MRP:595/-',6,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (33,3,1,'Mens Jeans Slim Fit - Size - 32 ( M 209 )',1,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (34,3,1,'"Branded Flying Machine Mens Denim Jeans Slim Waist 32"""',1,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (35,4,2,'Alexander the Great - Audio Book',1,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (36,4,2,'The Story of Electricity - Audio Book',1,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (37,4,2,'Shakespeare - Romeo and Juliet - Audio Book',1,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (38,4,2,'Conflict Management - CD ROM',1,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (39,4,2,'Short Science Fiction Collection Vol. 011 Audiobook',1,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (40,4,2,'Attracting Women from the Inside Out (Audiobook)',1,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (41,4,2,'48 Laws Of Power - Robert Greene - AudioBook',1,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (42,4,2,'The Complete Sherlock Holmes Audio+eBook on DVD',1,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (43,4,2,'Short Science Fiction Collection Vol. 011 Audiobook',1,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (44,4,2,'Business Reports - CD ROM',2,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (45,5,2,'ATMEL AVR ATTINY 2313 Motor driver ( Arduino , PIC )',2,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (46,5,2,'Secure Programming With Static Analysis [With CDROM]',2,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (47,5,2,'Google Power Search: The Essential Guide to Finding Anything Online with Google',2,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (48,5,2,'Microsoft Publisher 2000 CBT',2,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (49,5,2,'I Thought I Knew How to Google 50 Tricks for Refining Your Search',2,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (50,5,2,'Ultimate Quiz on Computer Science',2,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (51,5,2,'Android Recipes A Problem-Solution Approach',2,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (52,5,2,'ACCOUNTING SOFTWARE SINGLE USER',2,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (53,5,2,'Android Apps For Absolute Beginners ',2,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (54,5,2,'SQL SERVER 2008 ADMINISTRATION IN ACTION',3,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (55,6,2,'OPEN : AN AUTOBIOGRAPHY by Andre Agassi BOOK',3,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (56,6,2,'"OLD HAND PAINTING SIGNED KARAM SINGH "" MUSAFIR"" 9.3.67 "',3,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (57,6,2,'BEYOND THE BEAUTIFUL FOREVERS -KATHERINE BOO ( HARDCOVER )',3,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (58,6,2,'AAP BANENGE CROREPATI Quiz Kaun Banega Crorepati KBC',3,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (59,6,2,'THE SCIENTIFIC INDIAN BY APJ ABDUL KALAM YS RAJAN',3,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (60,6,2,'Reader''s Digest -QUEST FOR THE PAST - Amazing Answers to the Riddles of History',3,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (61,6,2,'Reader''s Digest - FAMILY MEDICAL ADVISER - An A-Z guide to everyday ailments',3,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (62,6,2,'Reader''s Digest -NATURAL WONDERS OF THE WORLD',3,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (63,6,2,'Reader''s Digest - MARVELS & MYSTERIES OF OUR ANIMAL WORLD',3,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (64,6,2,'Wicked Women of the Raj by Coralie Younger - at a huge discount!',4,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (65,7,3,'SONY Memory Stick 16GB PRO HG Duo MS-HX16B - 5YR WAR',4,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (66,7,3,'Samsung 8GB Class 6 Mobile MicroSD SD SDHC Memory Card',4,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (67,7,3,'Sandisk 8GB SD SDHC Class 4 Memory Card + Warranty',4,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (68,7,3,'SanDisk Extreme HD Video SDHC Card 32GB, SD 32 GB',4,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (69,7,3,'Samsung 4Gb Micro SD Card - Class 4 Micro SDHC, With Bill & 5 Years Warranty',4,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (70,7,3,'SanDisk Compact Flash Extreme CF - 16 GB w 5Y Warranty 16GB',4,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (71,7,3,'SanDisk MS Micro M2 - 2GB for Sony Mobile - 2 GB Card',4,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (72,7,3,'Samsung 8Gb Micro SD Card - Class 6 Micro SDHC, With Bill & 5 Years Warranty',4,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (73,7,3,'Sandisk Ultra Compact Flash Card 2GB CF 2 GB 15 Mb NEW',4,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (74,7,3,'SanDisk Extreme III / HD Video SDHC Card 4GB, SD 4 GB',5,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (75,8,3,'SanDisk Ultra 32 GB Pen Drive Buton Bakup 32GB Pendrive',5,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (76,8,3,'Strontium 4GB Bold Series Pen drive with 5 yrs manufacturer''s warranty',5,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (77,8,3,'8GB Kingston USB 2.0 Pen Drive Flash Memory PenDrive + BILL + 5 Year Warranty',5,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (78,8,3,'Original Transcend 4 GB USB Flash Pen Drive ',5,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (79,8,3,'Brand New Sandisk Cruzer Switch 16GB USB Flash DRIVE Pen Drive Memory Waranty',5,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (80,8,3,'16GB Kingston DataTraveller USB 2.0 Pen Drive Flash Memory +BILL+ 3Year Warranty',5,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (81,8,3,'SANDISK CRUZER BLADE 4GB PEN DRIVE WITH 5YEARS WARRANTY',5,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (82,8,3,'Strontium TNT 16GB Pen Drive - Black With 5 Years Warranty',5,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (83,8,3,'128GB Selektronix High Speed Pen Drive - FULL & REAL CAPACITY - Free Shipping',5,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (84,8,3,'HP 4GB USB 2.0 Mini Small Pen Drive Flash Sleak + BILL 2 Year Warranty',6,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (85,9,3,'HIGHLY SAFE CD / DVD MAILERS 30PACK',6,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (86,9,3,'Moser Baer Double Layer 8.5 GB Dual DVD 1Pc Pack +Bill ',6,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (87,9,3,'IMATION LIGHTSCRIBE DVD+R 5 PACK ',6,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (88,9,3,'SONY Blank DVD-R Pack of 10',6,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (89,9,3,'Amaray Blu Ray Double Case Pack 1',6,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (90,9,3,'Amaray Blu Ray Premium Case for 3 discs Pack 1',6,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (91,9,3,'VERBATIM CD-R 10 No SPINDEL',6,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (92,9,3,'JVC CDR80 Music Audio Pack 10 in sleeve',6,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (93,9,3,'JVC DVD-R 1.4Gb 8cm 30min Spindle 10',6,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (94,9,3,'Moser Baer Double Layer 8.5 GB Dual DVD 1Pc Pack +Bill',1,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (95,10,4,'Multifunction Dual Time Sports Watch ',1,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (96,10,4,'Unique Design Automatic Mechanical Designer Battery Less Steel Watch For Mens',1,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (97,10,4,'New Party Wear Dual Time Black Dial Digital Executive Steel Belt Watch For Mens',2,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (98,10,4,'Sports Exercise Watch with Pulse and Calorie Reader',2,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (99,10,4,'Automatic Mechanical Designer Battery Less Black Leather Belt Watch [ AWH - B11]',2,'1','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (100,10,4,'HMT ELEGANCE 22kt gold plating DESIGNER MENS gents WRIST WATCH on best deal',3,'1','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (101,10,4,'Master Collection Chronograph Automatic Movement Men`s Gents Wrist Watch',3,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (102,10,4,'Automatic Mechanical Designer Battery Less Black Leather Belt Watch [ AWH - B12]',3,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (103,10,4,'Automatic Mechanical Designer Battery Less Steel Belt Watch [ AWH - B13]',4,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (104,10,4,'AUTOMATIC Watch Works on Pulse auction starts @ 1',4,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (105,11,4,'Star blck roman dial Watch',4,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (106,11,4,'MAXIMA DESIGNER WOMENS LADIES WRIST WATCH ',5,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (107,11,4,'Star Pink roman dial Watch',5,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (108,11,4,'AWESOME PARTYWEAR GOLD PLATED DIAMOND WATCH',5,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (109,11,4,'AUTHENTIC D''SIGNER QUARTZ LADIES WATCH WHITE DIAL FANCY STAINLESS STEEL STRAP',6,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (110,11,4,'Star G Dial Watch',6,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (111,11,4,'AUTHENTIC SONATA QUARTZ LADIES WATCH GOLDEN DIAL FANCY STAINLESS STEEL STRAP',6,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (112,11,4,'Star Charming Oval dial Watch',1,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (113,11,4,'STYLISH WHITE FORMAL, CASUAL, TRENDY WOMEN''S WRIST WATCH',1,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (114,11,4,'Star Elegant Grey dial Watch',1,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (115,12,4,'Embossed Pocket Watch with chain',1,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (116,12,4,'Pocket Watch with Chain',1,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (117,12,4,'Men''s Pocket Watch - Hunter Design Pocket Watch golden',2,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (118,12,4,'Men''s Wild West Pocket Watch with Embossed design in brown colour',2,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (119,12,4,'Avalon 17 Jewel Mechanical(Wind-Up) Skeleton Pocket-YCM',2,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (120,12,4,'Antique style brown pocker watch with chain',2,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (121,12,4,'Colibri Mechanical Pocket Watch Skeleton Movement -BOP',2,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (122,12,4,'Avalon 17 Jewel Mechanical Skeleton Silver-tone Poc-DIL',3,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (123,12,4,'SUPERMAN RETURNS POCKET WATCH EXCLUSIVE WB DC WARN-REG',3,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (124,12,4,'Avalon Classic II Series Gold Tone Covered Pocket W-RIL',3,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (125,13,5,'YAMLA PAGLA DEEWANA (DHARMENDRA, SUNNY) - 2 DISC DVD',3,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (126,13,5,'Sardar - The Iron Man of India - Paresh Rawal, Benjamin Gilani, Annu Kapoor',3,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (127,13,5,'HAI MARJAWAAN / IT''S A WONDERFUL AFTERLIFE - DVD PAYPAL',4,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (128,13,5,'SADIYAAN (LUV SINHA, FERENA WAZEIR) - HINDI DVD PAYPAL',4,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (129,13,5,'AARAKSHAN (AMITABH, SAIF ALI, MANOJ BAJPAI, DEEPIKA) - HINDI DVD PAYPAL',4,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (130,13,5,'RAAVAN (ABHISHEK BACHCHAN, AISHWARYA)- HINDI DVD PAYPAL',4,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (131,13,5,'KRAZZY 4 {ARSHAD WARSI, IRFAN KHAN} ORIGINAL HINDI DVD',4,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (132,13,5,'BHAGAM BHAG {GOVINDA, AKSHAY} COMEDY HINDI MOVIE DVD',4,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (133,13,5,'ACHANAK {VINOD KHANNA} - HINDI MOVIE DVD',5,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (134,13,5,'BHOOL BHULAIYA {Akshay Kumar} - HINDI MOVIE DVD',5,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (135,14,5,'BULLET (IQBAL KHAN, ASAD SIKANDAR) - HINDI VCD PAYPAL',5,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (136,14,5,'STYLE (SHERMAN, RIA SEN,SAHIL) - HINDI VCD PAYPAL',5,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (137,14,5,'JAAL (DEV ANAND, GEETA BALI) - HINDI VCD PAYPAL',5,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (138,14,5,'RAJHATH (MADHUBALA, SOHRAB MODI) - HINDI VCD PAYPAL',6,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (139,14,5,'BILLU - Shah Rukh Khan (Original VCD) 5% off',6,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (140,14,5,'WARIS SHAH (GURDAS MANN, JUHI CHAWLA)- HINDI VCD PAYPAL',6,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (141,14,5,'AAJ KA ARJUN ( AMITHAB, JAYA PRADA ) - HINDI VCD PAYPAL',6,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (142,14,5,'Hanuman - Animated VCD With Hindi / English Language',6,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (143,14,5,'PARWANA (K.L.SAIGAL, SURAIYA, NAZMA) - HINDI VCD PAYPAL',1,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (144,14,5,'FAMILY (AMITABH BACHCHAN, BHUMIKA ) - HINDI VCD PAYPAL',1,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (145,15,5,'THE TOUCH (10% OFF ON MRP) - ENGLISH DVD',2,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (146,15,5,'Inspector Gadget 2 - Tony Martin - (Valentine Day Sale)',2,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (147,15,5,'Learn To Play - TABLA Vol 2 - DVD 5% Off',3,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (148,15,5,'THE TAMARIND SEED - ENGLISH MOVIE DVD',3,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (149,15,5,'The Princess and the Frog (2009) - 3 Oscar Nominee - (Valentine Day Sale)',4,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (150,15,5,'THE HOUND OF BASKERVILLES (10% OFF ON MRP)- ENGLISH DVD',4,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (151,15,5,'TERMINATOR SALVATION - Movie Bluray W 3 Languages',5,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (152,15,5,'I WALK THE LINE (10% OFF ON MRP) - ENGLISH DVD',5,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (153,15,5,'Tinker Bell - Anjelica Huston - (Valentine Day Sale)',6,'2','used','2012-03-30 00:00:00','2012-04-30 00:00:00','free',0);
INSERT INTO `product` (`productId`,`subcategoryId`,`categoryId`,`productDesc`,`sellerId`,`saleType`,`prodCondition`,
`startDate`,`endDate`,`shipmentState`,`shipmentCharges`) 
VALUES (154,15,5,'Monsters vs Aliens - Reese Witherspoon - (Valentine Day Sale)',6,'2','new','2012-03-30 00:00:00','2012-04-30 00:00:00','chargeable',50);

-- ---------------------------------------------------------------------------------------------------------------------
-- Insertion into BINPRODUCT TABLE

INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (1,1,200);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (2,3,270);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (3,5,340);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (4,7,410);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (5,5,480);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (6,10,550);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (7,2,620);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (8,6,690);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (9,9,760);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (10,2,830);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (11,9,900);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (12,1,970);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (13,4,500);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (14,7,520);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (15,4,590);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (16,9,660);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (17,2,730);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (18,6,800);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (19,4,870);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (20,4,940);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (21,8,1010);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (22,9,540);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (23,1,560);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (24,1,630);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (25,4,700);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (26,4,770);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (27,3,840);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (28,9,910);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (29,8,980);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (30,10,1050);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (31,5,580);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (32,3,600);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (33,8,670);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (34,8,740);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (35,4,810);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (36,2,880);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (37,1,950);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (38,4,1020);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (39,4,1090);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (40,9,620);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (41,7,640);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (42,9,710);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (43,1,780);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (44,3,850);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (45,10,920);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (46,3,990);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (47,4,1060);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (48,3,1130);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (49,2,660);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (50,9,680);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (51,9,750);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (52,7,820);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (53,8,890);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (54,1,960);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (55,3,1030);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (56,8,1100);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (57,4,1170);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (58,3,700);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (59,4,720);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (60,3,790);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (61,8,860);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (62,10,930);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (63,1,1000);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (64,6,1070);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (65,4,1140);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (66,3,1210);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (67,4,740);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (68,2,760);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (69,6,830);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (70,5,900);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (71,10,970);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (72,9,1040);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (73,2,1110);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (74,3,1180);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (75,8,1250);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (76,9,780);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (77,5,800);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (78,7,870);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (79,10,940);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (80,3,1010);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (81,10,1080);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (82,10,1150);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (83,6,1220);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (84,8,1290);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (85,8,820);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (86,5,840);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (87,1,910);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (88,10,500);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (89,4,540);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (90,3,580);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (91,8,620);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (92,2,660);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (93,3,700);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (94,5,740);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (95,1,780);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (96,8,820);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (97,2,860);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (98,2,900);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (99,6,940);
INSERT INTO `binproduct` (`productId`,`stock`,`binPrice`) VALUES (100,7,980);

-- ---------------------------------------------------------------------------------------------------------------------
-- Insertion into AUCTIONPRODUCT TABLE

INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (1,101,200,100,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (2,102,300,10,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (3,103,400,100,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (4,104,500,30,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (5,105,150,20,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (6,106,50,20,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (7,107,300,70,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (8,108,600,30,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (9,109,1000,20,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (10,110,800,70,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (11,111,900,20,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (12,112,300,100,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (13,113,200,60,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (14,114,400,90,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (15,115,650,30,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (16,116,750,40,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (17,117,450,10,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (18,118,950,90,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (19,119,55,60,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (20,120,750,10,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (21,121,100,80,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (22,122,200,10,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (23,123,270,100,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (24,124,340,20,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (25,125,410,30,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (26,126,480,10,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (27,127,550,70,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (28,128,620,50,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (29,129,690,70,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (30,130,760,10,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (31,131,830,90,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (32,132,900,70,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (33,133,800,10,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (34,134,850,90,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (35,135,900,30,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (36,136,950,70,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (37,137,1000,60,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (38,138,1050,50,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (39,139,1100,90,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (40,140,1150,60,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (41,141,1200,100,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (42,142,1250,10,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (43,143,1300,40,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (44,144,500,50,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (45,145,550,10,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (46,146,600,100,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (47,147,650,10,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (48,148,700,30,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (49,149,750,40,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (50,150,800,30,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (51,151,850,20,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (52,152,900,10,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (53,153,950,40,NULL,NULL);
INSERT INTO `auctionproduct` (`auctionId`,`productId`,`basePrice`,`stepPrice`,`highestBidPrice`,`finalBidderId`)
VALUES (54,154,1000,40,NULL,NULL);

-- ---------------------------------------------------------------------------------------------------------------------