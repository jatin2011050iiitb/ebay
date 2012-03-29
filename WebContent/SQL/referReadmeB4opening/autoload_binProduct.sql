LOAD DATA LOCAL INFILE 'E:\\binProduct.csv'
INTO TABLE ebay.binProduct
FIELDS TERMINATED BY '|' 
ENCLOSED BY ""
LINES TERMINATED BY '\r\n' 
(productId, stock, binPrice);
