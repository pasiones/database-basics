--h10t2
--Lam Dat Minh 151395774

PRAGMA foreign_keys = ON;

--product

CREATE TABLE product (
    product_id INT,
    product_name VARCHAR(50) NOT NULL,
    category VARCHAR(30),
    weight INT,
    energy INT,
    PRIMARY KEY (product_id),
    UNIQUE (product_name)
);
 
INSERT INTO product
VALUES (1, 'Fazerina', 'chocolate bar', 37, 548);  

INSERT INTO product
VALUES (2, 'Jim', 'chocolate bar', 14, 366);  

INSERT INTO product
VALUES (3, 'Salta Katten', 'candy bag', 140, 351);

INSERT INTO product
VALUES (4, 'Dumle mix', 'chocolate bag', 220, 474);

INSERT INTO product
VALUES (5, 'Tupla Double Layer Banana', 'chocolate bar', 48, 471);  

INSERT INTO product
VALUES (6, 'Bilar Original', 'candy bag', NULL, NULL);

INSERT INTO product
VALUES (7, 'Sisu Horna', 'candy bag', 40, 370);

--sweet shop

CREATE TABLE sweet_shop (
    sweet_shop_id INT,
    sweet_shop_name VARCHAR(30) NOT NULL,
    address VARCHAR(30) NOT NULL,
    PRIMARY KEY (sweet_shop_id),
    UNIQUE (sweet_shop_name)
);

INSERT INTO sweet_shop VALUES (
    1, 'The Sugary Oasis', 'Tampere'
);

INSERT INTO sweet_shop VALUES (
    2, 'Candyland Creations', 'Helsinki'
);

INSERT INTO sweet_shop VALUES(
    3, 'Sweet Symphony Treats', 'Turku'
);

--sells

CREATE TABLE sells (
    sweet_shop_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT,
    PRIMARY KEY (sweet_shop_id, product_id),
    FOREIGN KEY (sweet_shop_id) REFERENCES sweet_shop,
    FOREIGN KEY (product_id) REFERENCES product
);

INSERT INTO sells VALUES (
    1, 1, 10
);
INSERT INTO sells VALUES (
    1, 2, 12
);
INSERT INTO sells VALUES (
    1, 3, 14
);

INSERT INTO sells VALUES (
    2, 2, 16
);
INSERT INTO sells VALUES (
    2, 3, 18
);
INSERT INTO sells VALUES (
    2, 4, 20
);

INSERT INTO sells VALUES (
    3, 5, 22
);
INSERT INTO sells VALUES (
    3, 6, 24
);
INSERT INTO sells VALUES (
    3, 7, 26
);