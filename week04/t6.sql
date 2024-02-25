select i.ice_cream_id, i.ice_cream_name
from ice_cream i
left outer join contains c on i.ice_cream_id = c.ice_cream_id
left outer join ingredient ing on c.ingredient_id = ing.ingredient_id
WHERE ing.ingredient_name IN ('Vanilla extract', 'Sugar')
GROUP BY i.ice_cream_id, i.ice_cream_name
HAVING COUNT(DISTINCT ing.ingredient_name) = 2
order by i.ice_cream_id;