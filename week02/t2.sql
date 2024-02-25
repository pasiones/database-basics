SELECT ice_cream_id, ice_cream_name, manufacturer_name
FROM ice_cream, manufacturer
WHERE ice_cream.manufacturer_id = manufacturer.manufacturer_id
ORDER BY ice_cream_id;