select ing.ingredient_id, ing.ingredient_name, count(c.ingredient_id) as ice_cream_count
from ingredient ing 
left outer join contains c on ing.ingredient_id = c.ingredient_id
group by ing.ingredient_id, ing.ingredient_name
order by ing.ingredient_id;