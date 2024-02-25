SELECT
    i.ice_cream_id,
    i.ice_cream_name,
    i.manufacturing_cost,
    i.manufacturer_id,
    m.ice_cream_count,
    m.avg_costs
FROM ice_cream i
LEFT JOIN (
    SELECT
        manufacturer_id,
        COUNT(ice_cream_id) AS ice_cream_count,
        AVG(manufacturing_cost) AS avg_costs
    FROM ice_cream
    GROUP BY manufacturer_id
) m ON i.manufacturer_id = m.manufacturer_id
ORDER BY m.ice_cream_count DESC, i.manufacturer_id ASC, i.ice_cream_id ASC;
