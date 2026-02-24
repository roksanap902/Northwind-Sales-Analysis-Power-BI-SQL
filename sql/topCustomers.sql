select c.CompanyName,
    SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) as TotalRevenue
from Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN [Order Details] od ON o.OrderID = od.OrderID
group by c.CompanyName
order by TotalRevenue DESC;
