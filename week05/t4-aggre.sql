select i.manufacturer_id, m.manufacturer_name, 
count(i.ice_cream_id) as ice_cream_count, min(i.manufacturing_cost) 
as min_cost, max(i.manufacturing_cost) as max_cost
from ice_cream i
left outer join manufacturer m on i.manufacturer_id = m.manufacturer_id
group by i.manufacturer_id
order by i.manufacturer_id;