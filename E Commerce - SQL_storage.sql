CREATE DATABASE washing_machine_db;
USE washing_machine_db;

CREATE TABLE washing_machines (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Product_Name VARCHAR(1000),
    brand_name VARCHAR(100),
    capacity_kg DECIMAL(4,1),
    machine_type VARCHAR(50),
    load_type VARCHAR(50),
    color VARCHAR(50),
    Current_Price INT,
    Original_Price INT,
    Discount INT ,
    Rating_Score DECIMAL(2,2) NULL,
    Ratings_Count INT DEFAULT 0,
    Reviews_Count INT DEFAULT 0,
    max_speed_RPM INT,
    energy_rating_stars INT,
    warranty_product_years INT,
    warranty_motor_years INT,
    has_inbuilt_heater BOOLEAN,
    Product_URL TEXT

);

ALTER TABLE washing_machines MODIFY rating_score DECIMAL(3,1) NULL;

select * from washing_machines;

CREATE USER 'pyuser'@'localhost' IDENTIFIED BY '1234';

GRANT ALL PRIVILEGES ON *.* TO 'pyuser'@'localhost';
FLUSH PRIVILEGES;

