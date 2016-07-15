# Write your MySQL query statement below


select distinct a.Num AS 'ConsecutiveNums' from Logs a 
inner join Logs b on a.id = b.id+1 
inner join Logs c on a.id = c.id+2
where a.Num = b.Num and a.Num = c.Num