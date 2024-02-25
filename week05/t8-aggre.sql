select i.ice_cream_id, i.ice_cream_name, m.manufacturer_name
from ingredient ing
left outer join contains c on ing.ingredient_id = c.ingredient_id
left outer join ice_cream i on c.ice_cream_id = i.ice_cream_id
left outer join manufacturer m on i.manufacturer_id = m.manufacturer_id
group by i.ice_cream_id, i.ice_cream_name
having count(ing.ingredient_id) = 2
order by i.ice_cream_id;