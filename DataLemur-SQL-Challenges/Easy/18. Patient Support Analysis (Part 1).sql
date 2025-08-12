-- Patient Support Analysis (Part 1)
-- https://datalemur.com/questions/frequent-callers

SELECT COUNT(policy_holder_id) AS policy_holder_count
FROM (
SELECT policy_holder_id, COUNT(case_id) AS policy_calls
FROM callers
GROUP BY policy_holder_id
HAVING COUNT(case_id)>=3) AS policy_holder_calls;
