SELECT i.ice_cream_id, i.ice_cream_name
FROM ice_cream i 
WHERE EXISTS (
    SELECT *
    FROM contains c
    JOIN ingredient ing ON c.ingredient_id = ing.ingredient_id
    WHERE i.ice_cream_id = c.ice_cream_id AND ing.ingredient_name = 'Sugar'
)
AND NOT EXISTS (
    SELECT *
    FROM contains c
    JOIN ingredient ing ON c.ingredient_id = ing.ingredient_id
    WHERE i.ice_cream_id = c.ice_cream_id AND ing.ingredient_name = 'Vanilla extract'
)
ORDER BY i.ice_cream_id;