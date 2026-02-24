select e.FirstName + ' ' + e.LastName AS EmployeeName,
    COUNT(*) AS OrdersHandled
from Employees e
JOIN Orders o ON e.EmployeeID = o.EmployeeID
group by e.FirstName, e.LastName
having COUNT (*) > 100
order by OrdersHandled DESC;
