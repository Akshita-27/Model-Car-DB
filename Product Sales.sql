-- PRODUCT SCALE::
-- moving onto table orderdetails
-- DATA BETWEEN TOTAL STOCK AND TOTAL ORDER


SELECT productName, quantityInstock, sum(quantityOrdered) as Totalordered, (quantityInstock - sum(quantityOrdered) ) as CurrentInventory
from products
left join Orderdetails on products.productCode = Orderdetails.productCode
group by productName, quantityInstock
order by CurrentInventory desc;
