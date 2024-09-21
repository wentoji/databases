INSERT INTO Pizza (name, price ,vegetarian, vegan) 
VALUES 
('Margherita', 0.00, NULL, NULL),
('Pepperoni', 0.00, NULL, NULL),
('Veggie Supreme', 0.00, NULL, NULL),
('BBQ Chicken', 0.00, NULL, NULL),
('Mushroom & Spinach', 0.00,NULL, NULL),
('Hawaiian', 0.00, NULL, NULL),
('Buffalo Chicken', 0.00, NULL, NULL),
('Four Cheese', 0.00, NULL, NULL),
('Meat Lover’s', 0.00, NULL, NULL),
('Mediterranean', 0.00, NULL, NULL);

INSERT INTO Ingredients (name, cost, vegetarian, vegan)
VALUES 
('Flour', 0.30, TRUE),
('Water', 0.00, TRUE),
('Yeast', 0.10, TRUE),
('Salt', 0.05, TRUE),
('Olive Oil', 0.20, TRUE),
('Sugar', 0.05, TRUE);
('Tomato', 0.30, TRUE, TRUE),
('Tomato Sauce', 0.20, TRUE,TRUE)
('Mozzarella', 1.20, TRUE,FALSE),
('Basil', 0.10, TRUE, TRUE),
('Pepperoni', 1.50, FALSE, FALSE),
('Bell Peppers', 0.15, TRUE,TRUE),
('Onions', 0.25, TRUE, TRUE),
('Mushrooms', 0.40, TRUE, TRUE),
('BBQ Sauce', 0.50, TRUE, TRUE),
('Chicken', 1.50, FALSE, FALSE),
('Red Onion', 0.30, TRUE, TRUE),
('Spinach', 0.45, TRUE, TRUE),
('Ham', 1.80, FALSE, FALSE),
('Pineapple', 1.00, TRUE, TRUE),
('Buffalo Sauce', 1.10, TRUE, FALSE),
('Blue Cheese', 1.30, TRUE, FALSE),
('Cheddar', 1.10, TRUE, FALSE),
('Parmesan', 1.20, TRUE, FALSE),
('Sausage', 1.70, FALSE FALSE),
('Bacon', 1.90, FALSE, FALSE),
('Feta', 1.40, TRUE, FALSE),
('Olives', 0.70,TRUE, TRUE),
('Artichokes', 1.50,TRUE, TRUE);


-- Margherita (pizza_id = 1)
INSERT INTO Pizza_Ingredients (pizza_id, ingredient_id)
VALUES 
(1, 1), -- Flour
(1, 2), -- Water
(1, 3), -- Yeast
(1, 4), -- Salt
(1, 5), -- Olive Oil
(1, 6), -- Sugar
(1, 7), -- Tomato
(1, 8), -- Tomato Sauce
(1, 9), -- Mozzarella
(1, 10); -- Basil

-- Pepperoni (pizza_id = 2)
INSERT INTO Pizza_Ingredients (pizza_id, ingredient_id)
VALUES 
(2, 1), -- Flour
(2, 2), -- Water
(2, 3), -- Yeast
(2, 4), -- Salt
(2, 5), -- Olive Oil
(2, 6), -- Sugar
(2, 7), -- Tomato
(2, 8), -- Tomato Sauce
(2, 9), -- Mozzarella
(2, 11); -- Pepperoni

-- Veggie Supreme (pizza_id = 3)
INSERT INTO Pizza_Ingredients (pizza_id, ingredient_id)
VALUES 
(3, 1), -- Flour
(3, 2), -- Water
(3, 3), -- Yeast
(3, 4), -- Salt
(3, 5), -- Olive Oil
(3, 6), -- Sugar
(3, 7), -- Tomato
(3, 8), -- Tomato Sauce
(3, 9), -- Mozzarella
(3, 12), -- Bell Peppers
(3, 13), -- Onions
(3, 14); -- Mushrooms

-- BBQ Chicken (pizza_id = 4)
INSERT INTO Pizza_Ingredients (pizza_id, ingredient_id)
VALUES 
(4, 1), -- Flour
(4, 2), -- Water
(4, 3), -- Yeast
(4, 4), -- Salt
(4, 5), -- Olive Oil
(4, 6), -- Sugar
(4, 15), -- BBQ Sauce
(4, 9), -- Mozzarella
(4, 16), -- Chicken
(4, 17); -- Red Onion

-- Mushroom & Spinach (pizza_id = 5)
INSERT INTO Pizza_Ingredients (pizza_id, ingredient_id)
VALUES 
(5, 1), -- Flour
(5, 2), -- Water
(5, 3), -- Yeast
(5, 4), -- Salt
(5, 5), -- Olive Oil
(5, 6), -- Sugar
(5, 7), -- Tomato
(5, 8), -- Tomato Sauce
(5, 9), -- Mozzarella
(5, 14), -- Mushrooms
(5, 18); -- Spinach

-- Hawaiian (pizza_id = 6)
INSERT INTO Pizza_Ingredients (pizza_id, ingredient_id)
VALUES 
(6, 1), -- Flour
(6, 2), -- Water
(6, 3), -- Yeast
(6, 4), -- Salt
(6, 5), -- Olive Oil
(6, 6), -- Sugar
(6, 7), -- Tomato
(6, 8), -- Tomato Sauce
(6, 9), -- Mozzarella
(6, 19), -- Ham
(6, 20); -- Pineapple

-- Buffalo Chicken (pizza_id = 7)
INSERT INTO Pizza_Ingredients (pizza_id, ingredient_id)
VALUES 
(7, 1), -- Flour
(7, 2), -- Water
(7, 3), -- Yeast
(7, 4), -- Salt
(7, 5), -- Olive Oil
(7, 6), -- Sugar
(7, 21), -- Buffalo Sauce
(7, 9), -- Mozzarella
(7, 16), -- Chicken
(7, 22), -- Blue Cheese
(7, 17); -- Red Onion

-- Four Cheese (pizza_id = 8)
INSERT INTO Pizza_Ingredients (pizza_id, ingredient_id)
VALUES 
(8, 1), -- Flour
(8, 2), -- Water
(8, 3), -- Yeast
(8, 4), -- Salt
(8, 5), -- Olive Oil
(8, 6), -- Sugar
(8, 7), -- Tomato
(8, 8), -- Tomato Sauce
(8, 9), -- Mozzarella
(8, 23), -- Cheddar
(8, 24), -- Parmesan
(8, 22); -- Blue Cheese

-- Meat Lover’s (pizza_id = 9)
INSERT INTO Pizza_Ingredients (pizza_id, ingredient_id)
VALUES 
(9, 1), -- Flour
(9, 2), -- Water
(9, 3), -- Yeast
(9, 4), -- Salt
(9, 5), -- Olive Oil
(9, 6), -- Sugar
(9, 7), -- Tomato
(9, 8), -- Tomato Sauce
(9, 9), -- Mozzarella
(9, 11), -- Pepperoni
(9, 25), -- Sausage
(9, 19), -- Ham
(9, 26); -- Bacon

-- Mediterranean (pizza_id = 10)
INSERT INTO Pizza_Ingredients (pizza_id, ingredient_id)
VALUES 
(10, 1), -- Flour
(10, 2), -- Water
(10, 3), -- Yeast
(10, 4), -- Salt
(10, 5), -- Olive Oil
(10, 6), -- Sugar
(10, 7), -- Tomato
(10, 8), -- Tomato Sauce
(10, 9), -- Mozzarella
(10, 27), -- Feta
(10, 28), -- Olives
(10, 29); -- Artichokes
 