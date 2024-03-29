-- TOTAL STOCK IN WAREHOUSES
-- INVENTORY SCALE::
SELECT warehouseName, sum(quantityInstock) as Totalstock
FROM products
inner join warehouses on warehouses.warehouseCode = products.warehouseCode
GROUP BY warehouseName
order by Totalstock desc;

-- TOTAL STOCK FOR EACH PRODUCTLINE which has cardianlity with products and warehouses
select warehouseName, productLine, sum(quantityInstock) as Totalstock
from products
inner join warehouses on warehouses.warehouseCode = products.warehouseCode
group by productLine, warehouseName
order by warehouseName, Totalstock desc;

-- TOTAL STOCK FOR EACH PRODUCT THROUGHOUT:
SELECT warehouseName, productName, sum(quantityInstock) as Totalstock
from products
inner join warehouses on warehouses.warehouseCode = products.warehouseCode
group by warehouseName, productName
order by Totalstock desc;




