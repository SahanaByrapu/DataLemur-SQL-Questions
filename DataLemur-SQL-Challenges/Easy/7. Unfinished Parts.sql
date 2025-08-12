-- Unfinished Parts
-- Source: https://datalemur.com/questions/tesla-unfinished-parts

-- Explanation:  We're using IS NULL condition to find unfinished parts

SELECT part, assembly_step
FROM parts_assembly
WHERE finish_date IS NULL;