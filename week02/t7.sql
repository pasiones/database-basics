SELECT m.manufacturer_id, manufacturer_name, i.ice_cream_id, ice_cream_name
FROM manufacturer m LEFT OUTER JOIN ice_cream i ON m.manufacturer_id = i.manufacturer_id
ORDER BY m.manufacturer_id, i.ice_cream_id;