SELECT manufacturer_name, ice_cream_name, ingredient_name
FROM manufacturer m, ice_cream i, ingredient ing, contains c
WHERE m.manufacturer_id = i.manufacturer_id AND i.ice_cream_id = c.ice_cream_id AND c.ingredient_id = ing.ingredient_id
ORDER BY manufacturer_name, ice_cream_name, ingredient_name;