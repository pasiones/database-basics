-- h1t10 
-- Lam Dat Minh 151395774

CREATE TABLE ski (
    id          INT NOT NULL,
    brand       VARCHAR(10) NOT NULL,
    name        VARCHAR(20) NOT NULL,
    terrain     VARCHAR(20),
    price       NUMERIC(3,2),
    PRIMARY KEY (id)
);


INSERT INTO ski
VALUES(1, 'Atomic', 'Redster S8', 'race', 949.99)

INSERT INTO ski
VALUES(4, 'Atomic', 'Maven 86', 'all mountain', 499.99)

INSERT INTO ski
VALUES(6, 'Head', 'Kore 85', 'all mountain', 399.00)

INSERT INTO ski
VALUES(7, 'Blizzard', 'Phoenix R13', 'piste', 649.00)