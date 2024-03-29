-- TOTAL ORDERS BY TIME ::

SELECT orderDate, Totalorder
from orders as o
left join(select orderNumber, 
		   sum(quantityOrdered) as totalorder
           from orderdetails
           group by orderNumber) as od
on o.orderNumber = od.orderNumber
order by orderDate desc;           
           
