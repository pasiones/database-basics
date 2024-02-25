select m.manufacturer_id, m.manufacturer_name, count(distinct i.ice_cream_id) as ice_creams, count(distinct ing.ingredient_id) as ingredients
from manufacturer m 
left outer join ice_cream i on m.manufacturer_id = i.manufacturer_id
left outer join contains c on i.ice_cream_id = c.ice_cream_id
left outer join ingredient ing on c.ingredient_id = ing.ingredient_id
group by m.manufacturer_id, m.manufacturer_name
order by m.manufacturer_id;