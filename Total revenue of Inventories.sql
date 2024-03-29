-- TOTAL REVENUE FOR EACH WAREHOUSE

SELECT warehouseName as warehouse, sum(quantityOrdered) as Totalordered, sum(quantityOrdered * priceEach) as Totalrevenue
from products
inner join orderdetails ON products.productCode = orderdetails.productCode
right join warehouses on warehouses.warehouseCode = products.warehouseCode
group by warehouse
order by Totalrevenue desc;

-- TOTAL REVENUE FOR EACH PRODUCTLINE
SELECT productLine, sum(quantityOrdered) as Totalorder, sum(quantityordered * priceEach) as Totalrevenue
from products
inner join orderdetails on products.productCode = orderdetails.productCode
group by productLine
order by Totalrevenue desc; 


-- REVENUE FROM EACH PRODUCT OF THE STOCK:
SELECT productName, quantityInstock, priceEach, sum(quantityOrdered) as Totalorder, sum(quantityordered * priceEach) as Totalrevenue
from products
inner join orderdetails on products.productCode = orderdetails.productCode
group by productName, quantityInstock, priceEach
order by Totalrevenue desc;

