
-- https://datalemur.com/questions/sql-spare-server-capacity

SELECT 
    server_id,
    cpu_capacity - SUM(job_cpu_usage) AS spare_capacity
FROM server_utilization
GROUP BY server_id, cpu_capacity
HAVING cpu_capacity - SUM(job_cpu_usage) > 0;