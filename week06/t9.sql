SELECT m.manufacturer_name
FROM manufacturer m
INNER JOIN ice_cream i ON m.manufacturer_id = i.manufacturer_id
GROUP BY m.manufacturer_name
HAVING AVG(i.manufacturing_cost) > (SELECT AVG(manufacturing_cost) FROM ice_cream);
