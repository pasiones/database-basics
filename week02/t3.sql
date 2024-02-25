SELECT ice_cream_id, ice_cream_name, manufacturing_cost, manufacturer_name
FROM ice_cream i, manufacturer m
WHERE i.manufacturing_cost > 1 AND i.manufacturer_id = m.manufacturer_id
ORDER BY ice_cream_id;