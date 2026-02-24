select ShipCountry, COUNT(*) as OrdersCount
from Orders
group by ShipCountry
order by OrdersCount desc;