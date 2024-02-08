# Pre-Requisites:
# Step 1 : Create table as below.
/*Product string size 15 ,
Quantity integer ,
Price real,
purchase_cost decimal with size 6,2,
Estimated_sale_price float,
Month integer*/
CREATE DATABASE inclass3;
use inclass3;

CREATE TABLE Bank_Inventory_pricing(
Product varchar(15),
QUANTIty int,
Price real,
purchase_cost float,
Estimated_sale_price DECIMAL(6,2),
Month_ int
);

desc Bank_Inventory_pricing;
# Step2: 
# Insert records for above 
Insert into Bank_Inventory_pricing values ( 'PayCard'   , 2 , 300.45, 8000.87, 9000.56, 1 ) ;
Insert into Bank_Inventory_pricing values ( 'PayCard'   , 2 , 800.45, 5000.80, 8700.56, 1 ) ;
 Insert into Bank_Inventory_pricing values ( 'PayCard'   , 2 , 500.45, 6000.47, 7400.56, 1 ) ;
 Insert into Bank_Inventory_pricing values ( 'PayPoints' , 4 , 390.87, 7000.67, 6700.56, 2)  ;
 Insert into Bank_Inventory_pricing values ( 'SmartPay' , 5  , 290.69, 5600.77, 3200.12 , 1)  ;
 Insert into Bank_Inventory_pricing values ( 'MaxGain',    3 , NULL, 4600.67, 3233.11 , 1 ) ;
 Insert into Bank_Inventory_pricing values ( 'MaxGain',    6 , 220.39, 4690.67, NULL , 2 ) ;
 Insert into Bank_Inventory_pricing values ( 'SuperSave', 7 , 290.30, NULL, 3200.13 ,1 ) ;
 Insert into Bank_Inventory_pricing values ( 'SuperSave', 6 , 560.30, NULL, 4200.13 ,1 ) ;
 Insert into Bank_Inventory_pricing values ( 'SuperSave', 6 , NULL, 2600.77, 3200.13 ,2 ) ;
 Insert into Bank_Inventory_pricing values ( 'SuperSave', 9 , NULL, 5400.71, 9200.13 ,3 ) ;
 Insert into Bank_Inventory_pricing values ( 'SmartSav',   3 , 250.89, 5900.97, NULL ,1 ) ;
 Insert into Bank_Inventory_pricing values ( 'SmartSav',   3 , 250.89, 5900.97, 8999.34 ,1 ) ;
 Insert into Bank_Inventory_pricing values ( 'SmartSav',   3 , 250.89, NULL , 5610.82 , 2 ) ;
 Insert into Bank_Inventory_pricing values ( 'EasyCash',   3 , 250.89, NULL, 5610.82 ,1 ) ;
 Insert into Bank_Inventory_pricing values ( 'EasyCash',   3 , 250.89, NULL, 5610.82 , 2 ) ;
 Insert into Bank_Inventory_pricing values ( 'EasyCash',   3 , 250.89, NULL, 5610.82 , 3 ) ;
 Insert into Bank_Inventory_pricing values ( "BusiCard"  ,  1, 3000.99 , NULL, 3500, 3) ; 
 Insert into Bank_Inventory_pricing values ( "BusiCard"  ,  1, 4000.99 , NULL, 3500, 2) ; 

# Create table
Create table Bank_branch_PL
(Branch   varchar(15),
  Banker   Int,
  Product varchar(15) ,
  Cost  Int,
  revenue Int,
  Estimated_profit Int,   
  month  Int);
Insert into Bank_branch_PL values ( 'Delhi', 99101, 'SuperSave', 30060070, 50060070,  20050070, 1 ) ;
Insert into Bank_branch_PL values ( 'Delhi', 99101, 'SmartSav',   45060070, 57060070, 30050070, 2) ;
Insert into Bank_branch_PL values ( 'Delhi', 99101, 'EasyCash',   66660070, 50090090, 10050077, 3) ;
Insert into Bank_branch_PL values ( 'Hyd', 99101, 'SmartSav',   66660070, 79090090, 10050077, 3) ;
Insert into Bank_branch_PL values ( 'Banglr', 77301, 'EasyCash',   55560070, 61090090, 9950077, 3) ;
Insert into Bank_branch_PL values ( 'Banglr', 77301, 'SmartSav',   54460090, 53090080, 19950077, 3) ;
Insert into Bank_branch_PL values ( 'Hyd', 77301, 'SmartSav',   53060090, 63090080, 29950077, 3) ;
Insert into Bank_branch_PL values ( 'Hyd', 88201, 'BusiCard',  	40030070, 60070080, 10050070,1) ;
Insert into Bank_branch_PL values ( 'Hyd', 88201, 'BusiCard',  	70030070, 60070080, 25060070,1) ;
Insert into Bank_branch_PL values ( 'Hyd', 88201, 'SmartSav', 	40054070, 60070080, 20050070, 2) ;
Insert into Bank_branch_PL values ( 'Banglr', 99101, 'SmartSav',   88660070, 79090090, 10050077, 3) ;


############################################ Questions ############################################
# Question 1:
# 1) Print sum of Purchase_cost and average of estimated_sale_price of table
# Bank_inventory_pricing  during 2nd month . 

SELECT sum(purchase_cost),avg(Estimated_sale_price)
FROM Bank_inventory_pricing;


# Question 2:
# 2) Print average of estimated_sale_price upto two decimals from bank_inventory_pricing table.
SELECT *
FROM Bank_inventory_pricing;

SELECT ROUND(avg(Estimated_sale_price),2) as ROUND
FROM Bank_inventory_pricing;

# Question 3:
# 3) Print the Products which are appearing in bank_inventory_pricing more than once during the month : 1
SELECT *
FROM Bank_inventory_pricing
WHERE Month_>1;

# Question 4:
# 4) Print Products that are appearing more than once in bank_inventory_pricing and whose purchase_cost is
# greater than  estimated_sale_price , assuming estimated_sale_price is 0 when there is no value given

SELECT Product
FROM Bank_inventory_pricing
WHERE purchase_cost>ifnull(Estimated_sale_price,0);

# Question 5:
# 5) Print the sum of  purchase_cost of Bank_Inventory_pricing table with default value of 2000/-
# if there is no value given

SELECT sum(purchase_cost) as SUM
FROM Bank_inventory_pricing;



# Question 6:
# 6) Print unique records of bank_inventory_pricing without displaying the month.
SELECT distinct Product,QUANTIty,Price,purchase_cost,Estimated_sale_price
FROM Bank_inventory_pricing;


# Question 7:
# 7) print the average of Purchase_cost from the table Bank_inventory_pricing.If the purchase_cost has  no value given
#   then it’s value is equal to estimated_sale_price.

SELECT avg(ifnull(purchase_cost,Estimated_sale_price))
FROM Bank_inventory_pricing;

# Question 8:
# 8) Print the count of unique Products used in  Bank_inventory_pricing
SELECT distinct(Product)
FROM Bank_inventory_pricing;
# Question 9:
# 9) Print product and the difference of maximum and minimum purchase_cost of each product in Bank_Inventory_Pricing.
SELECT max(purchase_cost)-min(purchase_cost)
FROM Bank_inventory_pricing;

# Question 10:
# 10) Print the sum of Purchase_cost of Bank_inventory_pricing during 1st and 2nd month

SELECT sum(purchase_cost)
FROM Bank_inventory_pricing;

# Question 11:
# 11) Print Products with an average value of Purchase_cost per product only when exceeding average of 6000.

SELECT *
FROM bank_inventory_pricing;



SELECT Product, avg(Purchase_cost)
FROM bank_inventory_pricing
GROUP BY Product
Having avg(purchase_cost)>6000;

# Question 12:
# 12) Print  products whose average of purchase_cost is less than sum of purchase_cost of  Bank_inventory_pricing.

SELECT product, avg(purchase_cost)
FROM bank_inventory_pricing
GROUP BY product
Having avg(purchase_cost)<sum(purchase_cost);

# Question 13:
# 13) Print product and its average of Estimated_sale_price when  purchase_cost is not mentioned.
SELECT Product, avg(Estimated_sale_price)
FROM bank_inventory_pricing
WHERE purchase_cost is NULL
GROUP BY Product;

# Question 14:
# 14) Display maximum estimated_sale_price of each product  when the product total quantity is exceeding 4 
# and its purchase_cost has some value given.

SELECT Product,max(Estimated_sale_price)
FROM bank_inventory_pricing
WHERE QUANTIty>4
GROUP BY Product;

# Question 15:
# 15) Print products whose average of purchase_cost per product is less than 200
#  from the table Bank_inventory_pricing



SELECT product, sum(purchase_cost) as PC,sum(QUANTIty) as QTY
FROM bank_inventory_pricing
GROUP BY Product
HAVING sum(purchase_cost)/sum(QUANTIty)<200;
# Question 16:
# 16) Print each Product with its highest estimated_sale_price in bank_inventory_pricing
SELECT *
FROM bank_inventory_pricing;

SELECT Product, ifnull(max(purchase_cost),0)
FROM bank_inventory_pricing
GROUP BY Product;


# Question 17:
# 17) Print product with an increase in  average of estimated_sale_price  by 15% when average product_cost is more than average 
# estimated_sale_price
SELECT *
FROM bank_inventory_pricing;

SELECT PRODUCT, avg(Estimated_sale_price)*1.15
FROM bank_inventory_pricing
WHERE purchase_cost>Estimated_sale_price
GROUP BY product;

# Question 18:
# 18) For product = ‘BusiCard’,  print average of purchase_cost on condition that when purchase_cost  
# is not given, choose any of the higher value between price  and estimated_sale_price

SELECT Product, avg(ifnull((purchase_cost), greatest(Price,Estimated_sale_price)))
FROM bank_inventory_pricing
WHERE Product='BusiCard'
GROUP BY Product;

# Question 19:
# 19) Calculate average estimated_sale_price for each product .
# For any null estimated_sale_price, replace the value with purchase_cost

SELECT PRODUCT, avg(ifnull(estimated_sale_price,purchase_cost))
FROM bank_inventory_pricing
GROUP BY PRODUCT;

# Question 20:
# 20) Print products and their avg price on condition that products appeared in at least three different months.

SELECT PRODUCT, avg(PRICE)
FROM bank_inventory_pricing
WHERE month_>2
GROUP BY PRODUCT;