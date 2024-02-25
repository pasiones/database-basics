-- h1t5
-- Lam Dat Minh 151395774

SELECT category, energy, name
FROM product
WHERE energy < 500
ORDER BY category, energy DESC;