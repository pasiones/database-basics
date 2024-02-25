select c.c_name, count(DISTINCT g.gc_id) as no_group_classes, 
    count(t.gc_id) as no_timetable_classes, count(DISTINCT i.i_id) as no_instructors
from category c
left outer join g_class g on g.c_id = c.c_id
left outer join tt_class t on t.gc_id = g.gc_id
left outer join instructor i on i.i_id = t.i_id
group by c.c_id, c.c_name
order by c.c_name;