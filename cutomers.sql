-- customer data ::
select c.customerNumber, c.customerNmae, c.country, c.creditLimit, totalorder, totalpayment, (totalpayment - c.creditLimit) as creditLimitdiff
from(select customerName, 

