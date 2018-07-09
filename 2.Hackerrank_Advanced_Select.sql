#Type of Triangle
SELECT CASE WHEN A=B AND B=C THEN 'Equilateral' 
    WHEN A+B <= C OR A+C <=B OR B+C <=A THEN 'Not A Triangle' 
    WHEN A != B AND B != C AND C != A THEN 'Scalene' 
    ELSE 'Isosceles'
    END
FROM TRIANGLES;

#The PADS
SELECT CONCAT(Name,'(',LEFT(Occupation,1),')') FROM OCCUPATIONS
ORDER BY NAME
;
SELECT CONCAT('There are a total of ',COUNT(Occupation),' ',LOWER(Occupation),'s.') From OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation) ASC, Occupation ASC;

#Occupations
set @r1=0, @r2=0, @r3=0, @r4=0;
select min(Doctor), min(Professor), min(Singer), min(Actor) FROM
  (select case when Occupation='Doctor' then (@r1:=@r1+1)
            when Occupation='Professor' then (@r2:=@r2+1)
            when Occupation='Singer' then (@r3:=@r3+1)
            when Occupation='Actor' then (@r4:=@r4+1) end as RowNumber,
    case when Occupation='Doctor' then Name end as Doctor,
    case when Occupation='Professor' then Name end as Professor,
    case when Occupation='Singer' then Name end as Singer,
    case when Occupation='Actor' then Name end as Actor
  from OCCUPATIONS
  order by Name) AS A
GROUP BY RowNumber

#Binary Tree Nodes 
SELECT N, CASE 
        WHEN P IS NULL THEN 'Root'
        WHEN N IN (SELECT DISTINCT P FROM BST) THEN 'Inner'
        ELSE 'Leaf'
        END
 FROM BST
 ORDER BY N

#New Companies
SELECT c.company_code,c.founder, COUNT(distinct l.lead_manager_code), COUNT(distinct s.senior_manager_code), COUNT(distinct m.manager_code),COUNT(distinct e.employee_code)
FROM Company c LEFT JOIN Lead_Manager l ON c.company_code = l.company_code 
LEFT JOIN Senior_Manager s ON s.lead_manager_code = l.lead_manager_code
LEFT JOIN Manager m ON m.senior_manager_code = s.senior_manager_code
LEFT JOIN Employee e ON e.manager_code = m.manager_code
GROUP BY company_code, c.founder
ORDER BY c.company_code