select m.manufacturer_id, m.manufacturer_name, 
count(i.manufacturer_id) as ice_cream_count, min(i.manufacturing_cost) 
as min_cost, max(i.manufacturing_cost) as max_cost
from manufacturer m
left outer join ice_cream i on m.manufacturer_id = i.manufacturer_id
group by m.manufacturer_id, m.manufacturer_name
order by m.manufacturer_id;