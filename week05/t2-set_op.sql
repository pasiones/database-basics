select manufacturer_name
from manufacturer
where country in ('Finland', 'Italy')
order by manufacturer_name;