# Write your MySQL query statement below
DELETE from Person where Id  not in
(select id from (select min(Id) as Id 
                            from Person group by Email ) as p)