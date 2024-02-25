SELECT distinct ing.ingredient_id, ing.ingredient_name
FROM ice_cream i, contains c, ingredient ing
WHERE i.ice_cream_id = c.ice_cream_id AND c.ingredient_id = ing.ingredient_id
ORDER BY ing.ingredient_id;