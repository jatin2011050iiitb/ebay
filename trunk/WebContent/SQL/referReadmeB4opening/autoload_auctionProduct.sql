LOAD DATA LOCAL INFILE 'E:\\auctionProduct.csv'
INTO TABLE ebay.auctionProduct
FIELDS TERMINATED BY '|' 
ENCLOSED BY ""
LINES TERMINATED BY '\r\n' 
(auctionId, productId, basePrice, stepPrice);
