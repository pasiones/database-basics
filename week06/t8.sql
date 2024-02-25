select i.ice_cream_name, i.manufacturing_cost, m.manufacturer_name
from ice_cream i 
left outer join manufacturer m on i.manufacturer_id = m.manufacturer_id
where i.manufacturing_cost = (select max(manufacturing_cost) from ice_cream);