LOAD DATA LOCAL INFILE 'E:\\shippingPolicy.csv'
INTO TABLE ebay.shippingPolicy
FIELDS TERMINATED BY '|' 
ENCLOSED BY ""
LINES TERMINATED BY '\r\n' 
(productId,flatshippingQuantity, flatshippingRate ,perPieceshippingQuantity ,perPieceshippingRate ,freeshippingQuantity);
