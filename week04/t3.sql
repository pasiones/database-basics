select ing.ingredient_id, ing.ingredient_name, ing.kcal, ing.protein
from ingredient ing
where (ing.kcal > 300 or ing.protein = 0) and not(kcal > 300 and protein = 0)
order by ing.ingredient_id;