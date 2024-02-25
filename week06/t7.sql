select ice_cream_name, manufacturing_cost
from ice_cream
where manufacturing_cost = (select max(manufacturing_cost) from ice_cream);