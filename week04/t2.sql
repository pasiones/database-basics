select ing.ingredient_id, ing.ingredient_name, ing.kcal, ing.protein
from ingredient ing
where ing.kcal > 300 and ing.protein = 0
order by ing.ingredient_id;