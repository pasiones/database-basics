select i.i_id, i.i_name
from tt_class t 
left outer join instructor i on t.i_id = i.i_id
left outer join can_instruct c on i.i_id = c.i_id
group by i.i_id
having COUNT(DISTINCT t.gc_id) = COUNT(DISTINCT c.gc_id)
order by i.i_id;


