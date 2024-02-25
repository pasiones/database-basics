select i.i_id, i.i_name
from instructor i
left outer join can_instruct can on i.i_id = can.i_id
left outer join g_class g on can.gc_id = g.gc_id
left outer join category c on g.c_id = c.c_id
where c.c_name in ('Indoor cycling', 'Body maintenance')
group by i.i_id, i.i_name
having count(DISTINCT c.c_name) = 2
order by i.i_id;