CREATE DATABASE IF NOT EXISTS pizza_shop;
USE pizza_shop;

DROP TABLE Pizza;

CREATE TABLE Pizza (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(5,3) NOT NULL,
    vegetarian BOOLEAN DEFAULT FALSE,
    vegan BOOLEAN DEFAULT FALSE
);

INSERT INTO Pizza (name, price, vegetarian, vegan) VALUES
                                                       ('Margherita', 8.500, TRUE, TRUE),
                                                       ('Pepperoni', 9.000, FALSE, FALSE),
                                                       ('BBQ Chicken', 10.250, FALSE, FALSE),
                                                       ('Vegetable Medley', 9.500, TRUE, TRUE),
                                                       ('Hawaiian', 10.000, FALSE, FALSE),
                                                       ('Mushroom Deluxe', 9.200, TRUE, TRUE),
                                                       ('Four Cheese', 11.000, FALSE, FALSE),
                                                       ('Spicy Italian', 10.500, FALSE, FALSE),
                                                       ('Pesto Veggie', 9.800, TRUE, TRUE),
                                                       ('Buffalo Cauliflower', 9.300, TRUE, TRUE);


DROP TABLE Ingredients;

CREATE TABLE Ingredients (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    cost DECIMAL(5, 2) NOT NULL,
    vegetarian BOOLEAN DEFAULT FALSE,
    vegan BOOLEAN DEFAULT FALSE
);

INSERT INTO Ingredients (name, cost, vegetarian, vegan) VALUES
                                                            ('Tomato Sauce', 0.50, TRUE, TRUE),
                                                            ('Mozzarella Cheese', 1.00, FALSE, FALSE),
                                                            ('Pepperoni Slices', 1.50, FALSE, FALSE),
                                                            ('BBQ Sauce', 0.75, TRUE, TRUE),
                                                            ('Grilled Chicken', 1.75, FALSE, FALSE),
                                                            ('Bell Peppers', 0.80, TRUE, TRUE),
                                                            ('Onions', 0.60, TRUE, TRUE),
                                                            ('Mushrooms', 0.70, TRUE, TRUE),
                                                            ('Olives', 0.90, TRUE, TRUE),
                                                            ('Pineapple', 1.00, TRUE, TRUE),
                                                            ('Spinach', 0.70, TRUE, TRUE),
                                                            ('Feta Cheese', 1.25, FALSE, FALSE),
                                                            ('Blue Cheese', 1.50, FALSE, FALSE),
                                                            ('Garlic', 0.50, TRUE, TRUE),
                                                            ('Basil', 0.40, TRUE, TRUE),
                                                            ('Jalapeños', 0.80, TRUE, TRUE),
                                                            ('Zucchini', 0.75, TRUE, TRUE),
                                                            ('Avocado', 1.20, TRUE, TRUE),
                                                            ('Ground Beef', 1.80, FALSE, FALSE),
                                                            ('Italian Sausage', 1.70, FALSE, FALSE),
                                                            ('Artichokes', 1.10, TRUE, TRUE),
                                                            ('Eggplant', 0.85, TRUE, TRUE),
                                                            ('Chorizo', 1.90, FALSE, FALSE),
                                                            ('Sun-Dried Tomatoes', 1.00, TRUE, TRUE),
                                                            ('Cilantro', 0.50, TRUE, TRUE),
                                                            ('Arugula', 0.60, TRUE, TRUE),
                                                            ('Capers', 0.75, TRUE, TRUE),
                                                            ('Pesto', 1.25, TRUE, TRUE),
                                                            ('Ricotta Cheese', 1.50, FALSE, FALSE),
                                                            ('Lemon Zest', 0.40, TRUE, TRUE),
                                                            ('Hummus', 0.90, TRUE, TRUE),
                                                            ('Coconut Cream', 1.00, TRUE, TRUE);


DROP TABLE Pizza_Ingredients;

CREATE TABLE Pizza_Ingredients (
    pizza_id INT,
    ingredient_id INT,
    FOREIGN KEY (pizza_id) REFERENCES Pizza(id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredients(id),
    PRIMARY KEY (pizza_id, ingredient_id)
);

DROP TABLE Customers;

CREATE TABLE Customers (
                           customer_id INT AUTO_INCREMENT PRIMARY KEY,
                           name VARCHAR(100) NOT NULL,
                           gender ENUM('Male', 'Female', 'Other'),
                           birthdate DATE NOT NULL,
                           phone_number VARCHAR(15) NOT NULL,
                           address VARCHAR(255) NOT NULL,
                           total_orders INT DEFAULT 0
);

INSERT INTO Customers (name, gender, birthdate, phone_number, address, total_orders) VALUES
                                                                                         ('Alice Johnson', 'Female', '1990-05-12', '123-456-7890', '123 Elm St, Springfield', 5),
                                                                                         ('Bob Smith', 'Male', '1985-08-23', '987-654-3210', '456 Oak St, Springfield', 2),
                                                                                         ('Charlie Brown', 'Other', '1992-02-15', '555-123-4567', '789 Maple St, Springfield', 1),
                                                                                         ('Diana Prince', 'Female', '1991-10-30', '333-444-5555', '101 Pine St, Springfield', 3),
                                                                                         ('Edward Elric', 'Male', '1994-03-11', '222-333-4444', '202 Birch St, Springfield', 8),
                                                                                         ('Fiona Apple', 'Female', '1993-12-05', '444-555-6666', '303 Cedar St, Springfield', 4),
                                                                                         ('George Lucas', 'Male', '1980-11-25', '666-777-8888', '404 Walnut St, Springfield', 6),
                                                                                         ('Hannah Baker', 'Female', '1995-07-21', '888-999-0000', '505 Chestnut St, Springfield', 2),
                                                                                         ('Ian Malcolm', 'Male', '1988-04-14', '111-222-3333', '606 Maple St, Springfield', 1),
                                                                                         ('Julia Roberts', 'Female', '1996-09-17', '999-888-7777', '707 Elm St, Springfield', 0);



DROP TABLE Orders;

CREATE TABLE Orders (
                        order_id INT AUTO_INCREMENT PRIMARY KEY,
                        customer_id INT NOT NULL,
                        order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
                        delivery_status ENUM('Pending', 'In Process', 'Out for Delivery', 'Delivered') DEFAULT 'Pending',
                        FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders (customer_id, order_date, delivery_status) VALUES
                                                                  (1, '2024-09-20 12:30:00', 'Pending'),
                                                                  (2, '2024-09-20 13:00:00', 'In Process'),
                                                                  (3, '2024-09-20 14:15:00', 'Out for Delivery'),
                                                                  (4, '2024-09-20 15:45:00', 'Delivered'),
                                                                  (5, '2024-09-21 10:00:00', 'Pending'),
                                                                  (6, '2024-09-21 11:30:00', 'In Process'),
                                                                  (7, '2024-09-21 12:45:00', 'Pending'),
                                                                  (8, '2024-09-21 13:15:00', 'Delivered'),
                                                                  (9, '2024-09-21 14:00:00', 'Out for Delivery'),
                                                                  (10, '2024-09-21 15:30:00', 'Pending');



DROP TABLE Orders_Items;

CREATE TABLE Order_Items (
                             order_item_id INT AUTO_INCREMENT PRIMARY KEY,
                             order_id INT NOT NULL,
                             pizza_id INT NOT NULL,
                             quantity INT DEFAULT 1,
                             FOREIGN KEY (order_id) REFERENCES Orders(order_id),
                             FOREIGN KEY (pizza_id) REFERENCES Pizza(id)
);

INSERT INTO Order_Items (order_id, pizza_id, quantity) VALUES
                                                           (1, 1, 2),  -- 2 of Pizza 1 for Order 1
                                                           (1, 2, 1),  -- 1 of Pizza 2 for Order 1
                                                           (2, 3, 3),  -- 3 of Pizza 3 for Order 2
                                                           (3, 1, 1),  -- 1 of Pizza 1 for Order 3
                                                           (4, 4, 2),  -- 2 of Pizza 4 for Order 4
                                                           (5, 2, 1),  -- 1 of Pizza 2 for Order 5
                                                           (6, 5, 1),  -- 1 of Pizza 5 for Order 6
                                                           (7, 1, 2),  -- 2 of Pizza 1 for Order 7
                                                           (8, 3, 1),  -- 1 of Pizza 3 for Order 8
                                                           (9, 4, 2);  -- 2 of Pizza 4 for Order 9


