select ing.ingredient_id, ingredient_name
from ingredient ing 
left outer join contains c on ing.ingredient_id = c.ingredient_id 
left outer join ice_cream i on c.ice_cream_id = i.ice_cream_id
where ice_cream_name is null
order by ing.ingredient_id;