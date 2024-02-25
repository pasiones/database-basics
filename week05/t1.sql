select grape.id, grape.name, winery.id, winery.name
from winery
left outer join wine on winery.id = wine.winery_id
left outer join contains on wine.id = contains.wine_id
left outer join grape on contains.grape_id = grape.id
where grape.color = 'blue';
