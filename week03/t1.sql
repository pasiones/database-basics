select m1.name as name, m2.name as predecessor_name
from movie m1 
left outer join movie m2 on m1.predecessor_id = m2.id
where m1.predecessor_id is not NULL
order by m1.id;