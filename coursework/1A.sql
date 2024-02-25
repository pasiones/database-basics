select t.day_of_week, t.start_time, g.gc_name, g.duration
from tt_class t 
left outer join g_class g on t.gc_id = g.gc_id
left outer join category c on g.c_id = c.c_id
where c.c_name = 'Body maintenance'
order by t.day_of_week, t.start_time, g.gc_name;