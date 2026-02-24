select YEAR(OrderDate) AS Year,
       MONTH(OrderDate) AS Month,
       COUNT(*) AS OrdersCount
from Orders
group by YEAR(OrderDate), MONTH(OrderDate)
order by Year, Month;
