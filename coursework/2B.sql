select g.gc_name, min(g.duration) as duration, c.c_name
from g_class g 
left outer join category c on g.c_id = c.c_id;