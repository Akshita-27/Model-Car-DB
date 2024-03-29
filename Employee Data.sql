-- number of employees in each office as per the cities

select o.officeCode, o.city, o.country, count(employeeNumber) as Totalemployees
from offices as o
left join employees on employees.officeCode = o.officeCode
group by officeCode, city, country
order by Totalemployees desc;

-- evaluation of employees on the basis of their performance ::
select e.employeeNumber, e.firstName, e.lastName, e.jobtitle, count(orderNumber) as Totalsales
from employees as e
left join customers as c on e.employeeNumber = c.salesRepEmployeeNumber
left join orders as o on o.customerNumber = c.customerNumber
group by employeeNumber, firstName, lastName, jobtitle
order by Totalsales desc;


   
        