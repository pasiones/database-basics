select g.gc_name, g.duration, c.c_name
from g_class g 
left outer join category c on g.c_id = c.c_id 
where c.c_name = 'Body maintenance' 
and g.duration = (select min(g.duration) from g_class g 
                left outer join category c on g.c_id = c.c_id 
                where c.c_name = 'Body maintenance')
order by g.gc_name;