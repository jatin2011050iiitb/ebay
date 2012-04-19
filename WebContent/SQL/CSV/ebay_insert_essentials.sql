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

INSERT INTO `ebay`.`bankacc` (`bankId`, `accHolder`, `creditCardNo`, `creditCardVerfNo`,
`debitCardNo`, `debitCardVerfNo`, `NEFTcode`, `accBalance`)
VALUES (2, 'test', 1234, 123, 1234, 123, 123, 50000);

INSERT INTO `ebay`.`bankacc` (`bankId`, `accHolder`, `creditCardNo`, `creditCardVerfNo`,
`debitCardNo`, `debitCardVerfNo`, `NEFTcode`, `accBalance`)
VALUES (1, 'admin', 1234, 123, 1234, 123, 123, 50000);

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

INSERT INTO `ebay`.`usercredentials` 
(`username`, `password`, `accStatus`) 
VALUES ('test', 'test', '0');

INSERT INTO `ebay`.`usercredentials` 
(`username`, `password`, `accStatus`) 
VALUES ('admin', 'admin', '0');

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
INSERT INTO `ebay`.`ppayaccinfo` (`ebayUserId`, `bankId`, `accNo`, `PPayBalance`, `rating`) 
VALUES (8, 1, 8, 0, 0);

-- ---------------------------------------------------------------------------------------------------------------------
-- Insertion into USERINFO

INSERT INTO `ebay`.`userinfo` 
(`userId`, `fName`, `lName`, `gender`, `dob`, `address`, `city`, `state`, `country`, `pincode`, 
`emailId`, `phone`, `secretQID`, `secretanswer`, `isAdmin`, `PPayAccId`) 
VALUES (1, 'Animesh', 'Ghosh', 'male', '1988-05-14', 'IIIT Bangalore', 'Bangalore', 'Karnataka', 'India', 560100, 
'ani007mesh@gmail.com', 9739092136, 1, 'sachin', '0',1);

INSERT INTO `ebay`.`userinfo` 
(`userId`, `fName`, `lName`, `gender`, `dob`, `address`, `city`, `state`, `country`, `pincode`, 
`emailId`, `phone`, `secretQID`, `secretanswer`, `isAdmin`, `PPayAccId`) 
VALUES (2, 'Anup', 'Warnulkar', 'male', '1986-04-28', 'IIIT Bangalore', 'Bangalore', 'Karnataka', 'India', 560100,
'anupd.warnulkar@iiitb.org', 9886571228, 1, 'sachin', '0',2);

INSERT INTO `ebay`.`userinfo` 
(`userId`, `fName`, `lName`, `gender`, `dob`, `address`, `city`, `state`, `country`, `pincode`, 
`emailId`, `phone`, `secretQID`, `secretanswer`, `isAdmin`, `PPayAccId`) 
VALUES (3, 'Ashrith', 'Kulai', 'male', '1989-06-11', 'IIIT Bangalore', 'Bangalore', 'Karnataka', 'India', 560100,
'ashrithkulai@gmail.com', 7204317825, 1, 'sachin', '0',3);

INSERT INTO `ebay`.`userinfo` 
(`userId`, `fName`, `lName`, `gender`, `dob`, `address`, `city`, `state`, `country`, `pincode`, 
`emailId`, `phone`, `secretQID`, `secretanswer`, `isAdmin`, `PPayAccId`) 
VALUES (4, 'Eashwar', 'V', 'male', '1989-09-18', 'IIIT Bangalore', 'Bangalore', 'Karnataka', 'India', 560100,
'eashwar.v@iiitb.org', 9611920175, 1, 'sachin', '0',4);

INSERT INTO `ebay`.`userinfo` 
(`userId`, `fName`, `lName`, `gender`, `dob`, `address`, `city`, `state`, `country`, `pincode`, 
`emailId`, `phone`, `secretQID`, `secretanswer`, `isAdmin`, `PPayAccId`) 
VALUES (5, 'Gaurav', 'Kulkarni', 'male', '1986-12-29', 'IIIT Bangalore', 'Bangalore', 'Karnataka', 'India', 560100,
'gaurav.vinter@gmail.com', 9742881323, 1, 'sachin', '0',5);

INSERT INTO `ebay`.`userinfo` 
(`userId`, `fName`, `lName`, `gender`, `dob`, `address`, `city`, `state`, `country`, `pincode`, 
`emailId`, `phone`, `secretQID`, `secretanswer`, `isAdmin`, `PPayAccId`) 
VALUES (6, 'Jatin', 'Chaudhary', 'male', '1987-04-30', 'IIIT Bangalore', 'Bangalore', 'Karnataka', 'India', 560100,
'jatin.chaudhary@iiitb.org', 8861047701, 1, 'sachin', '0',6);

INSERT INTO `ebay`.`userinfo` 
(`userId`, `fName`, `lName`, `gender`, `dob`, `address`, `city`, `state`, `country`, `pincode`, 
`emailId`, `phone`, `secretQID`, `secretanswer`, `isAdmin`) 
VALUES (7, 'test', 'test', 'male', '2000-02-02', 'IIIT Bangalore', 'Bangalore', 'Karnataka', 'India', 560100,
'ashrithkulai@gmail.com', 7204317825, 1, 'jatin', '0');

INSERT INTO `ebay`.`userinfo` 
(`userId`, `fName`, `lName`, `gender`, `dob`, `address`, `city`, `state`, `country`, `pincode`, 
`emailId`, `phone`, `secretQID`, `secretanswer`, `isAdmin`, `PPayAccId`) 
VALUES (8, 'admin', 'admin', 'male', '2000-02-02', 'IIIT Bangalore', 'Bangalore', 'Karnataka', 'India', 560100,
'ashrithkulai@gmail.com', 7204317825, 1, 'jatin', '1',7);

-- ---------------------------------------------------------------------------------------------------------------------
-- Insertion into CATEGORY

INSERT INTO `ebay`.`category` (`categoryId`, `categoryDesc`) VALUES (1, 'Clothing & Accessories');
INSERT INTO `ebay`.`category` (`categoryId`, `categoryDesc`) VALUES (2, 'Books & Magazines');
INSERT INTO `ebay`.`category` (`categoryId`, `categoryDesc`) VALUES (3, 'Memory Cards, Pen Drives & HDD');
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
