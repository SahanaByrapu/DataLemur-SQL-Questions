-- Warehouse-Manager
https://leetcode.com/problems/warehouse-manager/description/

SELECT w.warehouse_name, p.Width * p.Length * p.Height AS total_volume 
FROM Warehouse w, Products p 
WHERE 