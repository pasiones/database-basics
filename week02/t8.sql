select ingredient_name, ice_cream_name
from ingredient ing 
left outer join contains c on ing.ingredient_id = c.ingredient_id 
left outer join ice_cream i on c.ice_cream_id = i.ice_cream_id
order by ing.ingredient_name, ice_cream_name;
     
