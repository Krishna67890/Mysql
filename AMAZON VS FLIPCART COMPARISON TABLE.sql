-- CREATE DATABASE ecommerce_comparison;
-- USE ecommerce_comparison;

-- CREATE TABLE products (
--     product_id INT PRIMARY KEY AUTO_INCREMENT,
--     product_name VARCHAR(200),
--     category VARCHAR(50)
-- );
-- SHOW TABLES;

-- CREATE TABLE product_comparison (
--     compare_id INT PRIMARY KEY AUTO_INCREMENT,
--     product_id INT,
--     platform VARCHAR(20),
--     rating DECIMAL(2,1),
--     price INT,
--     description TEXT,
--     photo_1 VARCHAR(255),
--     photo_2 VARCHAR(255),
--     FOREIGN KEY (product_id) REFERENCES products(product_id)
-- );


-- DESC products;
-- DESC product_comparison;

-- INSERT INTO products (product_name, category)
-- VALUES ('ASUS TUF A15 Gaming Laptop', 'Laptop');

-- INSERT INTO product_comparison
-- (product_id, platform, rating, price, description, photo_1, photo_2)
-- VALUES
-- (1,'Amazon',4.2,76990,'Ryzen 7, RTX 3050, 16GB RAM','amazon1.png','amazon2.png');

-- INSERT INTO product_comparison
-- (product_id, platform, rating, price, description, photo_1, photo_2)
-- VALUES
-- (1,'Flipkart',4.1,82990,'Ryzen 7, RTX 3050, 1TB SSD','flipkart1.png','flipkart2.png');


-- SELECT 
-- p.product_name,

-- MAX(CASE WHEN c.platform = 'Amazon' THEN c.rating END) AS amazon_rating,
-- MAX(CASE WHEN c.platform = 'Amazon' THEN c.price END) AS amazon_price,

-- MAX(CASE WHEN c.platform = 'Flipkart' THEN c.rating END) AS flipkart_rating,
-- MAX(CASE WHEN c.platform = 'Flipkart' THEN c.price END) AS flipkart_price,

-- MAX(CASE WHEN c.platform = 'Amazon' THEN c.photo_1 END) AS amazon_photo,
-- MAX(CASE WHEN c.platform = 'Flipkart' THEN c.photo_1 END) AS flipkart_photo

-- FROM products p
-- JOIN product_comparison c ON p.product_id = c.product_id
-- GROUP BY p.product_name;


CREATE TABLE amazon_flipkart_comparison (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(200),
    
    amazon_rating DECIMAL(2,1),
    amazon_price INT,
    amazon_description TEXT,
    amazon_photo1 VARCHAR(255),
    amazon_photo2 VARCHAR(255),

    flipkart_rating DECIMAL(2,1),
    flipkart_price INT,
    flipkart_description TEXT,
    flipkart_photo1 VARCHAR(255),
    flipkart_photo2 VARCHAR(255)
);

INSERT INTO amazon_flipkart_comparison VALUES
(1,'ASUS TUF A15 Gaming Laptop',
4.2,76990,'Ryzen 7 7445HS, RTX 3050, 16GB RAM, 512GB SSD, 144Hz','a_tuf1.png','a_tuf2.png',
4.1,82990,'Ryzen 7, RTX 3050, 1TB SSD, RGB Keyboard, MIL-STD','f_tuf1.png','f_tuf2.png');

INSERT INTO amazon_flipkart_comparison VALUES
(2,'Lenovo LOQ i5 12450HX',
4.3,63990,'i5 12450HX, RTX 2050, 12GB RAM, 144Hz','a_loq1.png','a_loq2.png',
4.1,66990,'i5 12450HX, RTX 3050A, 16GB RAM','f_loq1.png','f_loq2.png');

INSERT INTO amazon_flipkart_comparison VALUES
(3,'Samsung Galaxy S25 Ultra',
5.0,122999,'Snapdragon 8 Elite, 200MP Camera, Galaxy AI','a_s25_1.png','a_s25_2.png',
4.6,134999,'512GB Storage, Circle to Search, Titanium','f_s25_1.png','f_s25_2.png');
 
 INSERT INTO amazon_flipkart_comparison VALUES
(4,'HP Victus i5 Gaming Laptop',
4.2,58990,'i5 12th Gen, RTX 3050, 16GB RAM','a_hp1.png','a_hp2.png',
4.1,61990,'i5 12th Gen, RTX 3050, Better Cooling','f_hp1.png','f_hp2.png');

INSERT INTO amazon_flipkart_comparison VALUES
(5,'Dell G15 Gaming Laptop',
4.1,67990,'Ryzen 5, RTX 3050, 120Hz Display','a_dell1.png','a_dell2.png',
4.0,69990,'Ryzen 5, RTX 3050, Alienware Cooling','f_dell1.png','f_dell2.png');

INSERT INTO amazon_flipkart_comparison VALUES
(6,'Acer Nitro 5',
4.3,64990,'i5 12th Gen, RTX 3050, RGB Keyboard','a_nitro1.png','a_nitro2.png',
4.2,66990,'i5 12th Gen, RTX 3050, Better Thermals','f_nitro1.png','f_nitro2.png');

INSERT INTO amazon_flipkart_comparison VALUES
(7,'ASUS ROG Strix G15',
4.5,89990,'Ryzen 7, RTX 3060, 300Hz Display','a_rog1.png','a_rog2.png',
4.4,92990,'Ryzen 7, RTX 3060, RGB Aura','f_rog1.png','f_rog2.png');

INSERT INTO amazon_flipkart_comparison VALUES
(8,'Lenovo IdeaPad Gaming 3',
4.2,55990,'Ryzen 5, GTX 1650, 8GB RAM','a_ipg1.png','a_ipg2.png',
4.1,57990,'Ryzen 5, GTX 1650, 120Hz','f_ipg1.png','f_ipg2.png');

INSERT INTO amazon_flipkart_comparison VALUES
(9,'MSI GF63 Thin',
4.0,52990,'i5 11th Gen, GTX 1650','a_msi1.png','a_msi2.png',
3.9,54990,'i5 11th Gen, GTX 1650','f_msi1.png','f_msi2.png');

INSERT INTO amazon_flipkart_comparison VALUES
(10,'Apple MacBook Air M1',
4.8,74990,'Apple M1, 8GB RAM, 256GB SSD','a_mac1.png','a_mac2.png',
4.7,76990,'Apple M1, Retina Display','f_mac1.png','f_mac2.png');
 
 SELECT * FROM amazon_flipkart_comparison;

 