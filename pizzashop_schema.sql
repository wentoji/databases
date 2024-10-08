CREATE DATABASE IF NOT EXISTS pizza_shop;
USE pizza_shop;



CREATE TABLE Pizza (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(5,2) NOT NULL,
    vegetarian BOOLEAN DEFAULT FALSE,
    vegan BOOLEAN DEFAULT FALSE
);


CREATE TABLE Ingredients (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    cost DECIMAL(5,2) NOT NULL,
    vegetarian BOOLEAN DEFAULT FALSE,
    vegan BOOLEAN DEFAULT FALSE
);


CREATE TABLE Pizza_Ingredients (
    pizza_id INT,
    ingredient_id INT,
    FOREIGN KEY (pizza_id) REFERENCES Pizza(id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredients(id),
    PRIMARY KEY (pizza_id, ingredient_id)
);
