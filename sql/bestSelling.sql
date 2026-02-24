select p.ProductName,
    COUNT(*) AS TimesOrdered
from Products p
JOIN [Order Details] od ON p.ProductID = od.ProductID
group by p.ProductName
order by TimesOrdered DESC;
