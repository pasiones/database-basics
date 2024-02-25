select m1.name as name, m2.name as sequel_name
from movie m1
left outer join movie m2 on m1.id = m2.predecessor_id
order by m1.id;