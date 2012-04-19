LOAD DATA LOCAL INFILE 'E:\\product.csv'
INTO TABLE ebay.product 
FIELDS TERMINATED BY '|' 
ENCLOSED BY ""
LINES TERMINATED BY '\r\n' 
(productId, subCategoryId, categoryId, productDesc, sellerId, saleType,
prodCondition, startDate, endDate, shipmentState, shipmentCharges,sold);
