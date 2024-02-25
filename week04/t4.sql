select i.ice_cream_name, m.manufacturer_name, m.country 
from ice_cream i
left outer join manufacturer m on i.manufacturer_id = m.manufacturer_id
where m.country = 'Finland' or m.country = 'Italy'
order by m.manufacturer_name, i.ice_cream_name;