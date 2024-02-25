select ingredient_id, count(ingredient_id) as count
from contains
group by ingredient_id;