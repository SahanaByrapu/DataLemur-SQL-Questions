--
--https://leetcode.com/problems/friendly-movies-streamed-last-month/description/ 

SELECT * 
FROM TVProgram
WHERE Kids_content='Y'
AND content_type in ('Movies','Series')
AND MONTH(program_date) = MONTH(CURDATE())-1
AND YEAR(program_date) = YEAR(CURDATE())

