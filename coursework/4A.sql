select c.c_name, count(c.c_id) as no_group_classes, 
    min(g.duration) as min_duration, max(g.duration) as max_duration
from category c 
left outer join g_class g on c.c_id = g.c_id
group by c.c_id, c.c_name
order by c.c_name;