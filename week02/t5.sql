SELECT ice_cream_name
FROM ice_cream i, contains c, ingredient ing
where i.ice_cream_id = c.ice_cream_id AND c.ingredient_id = ing.ingredient_id 
AND ingredient_name = 'Vanilla extract'
ORDER BY ice_cream_name;