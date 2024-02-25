select m.manufacturer_id, m.manufacturer_name
from manufacturer m
where exists (select * from ice_cream i where m.manufacturer_id = i.manufacturer_id)
order by m.manufacturer_id;