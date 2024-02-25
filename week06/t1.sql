select manufacturer_id, manufacturer_name
from manufacturer 
where manufacturer_id in (select manufacturer_id from ice_cream)
order by manufacturer_id;