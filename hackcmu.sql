-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 15, 2013 at 12:18 AM
-- Server version: 5.5.29
-- PHP Version: 5.4.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hackcmu`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `rest_name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `rating` float NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `num_votes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`rest_name`, `category`, `rating`, `item_name`, `price`, `num_votes`) VALUES
('Skibo Cafe', 'Panini', 0, 'Three Cheese Panini', 6.25, 0),
('Skibo Cafe', 'Vegetarian', 0, 'Grilled Veggie Panini', 6.25, 0),
('Skibo Cafe', 'Panini', 0, 'Club Panini', 6.25, 0),
('Skibo Cafe', 'Vegetarian, Panini', 0, 'Skibo Panini', 6.25, 0),
('Skibo Cafe', 'Sandwiches', 0, 'Italian Sub', 6.25, 0),
('Skibo Cafe', 'Sandwiches', 0, 'Tuna Sandwiches', 6.25, 0),
('Skibo Cafe', 'Sandwiches', 0, 'Meatball Sub', 6.25, 0),
('Skibo Cafe', 'Vegetarian, Sandwiches', 0, 'Roasted Veggie Melt', 6.25, 0),
('Skibo Cafe', 'Sandwiches', 0, 'Southern Style Chicken Sandwich', 6.25, 0),
('Skibo Cafe', 'Sandwiches', 0, 'Tuscan Chicken Sandwich', 6.25, 0),
('Skibo Cafe', 'Sandwiches', 0, 'BBQ Chicken Sandwich', 6.25, 0),
('Skibo Cafe', 'Sandwiches', 0, 'Chicken Parmesan Sandwich', 6.25, 0),
('Skibo Cafe', 'Breakfast, Sandwich', 0, 'Breakfast Sandwich', 4.5, 0),
('Skibo Cafe', 'Breakfast', 0, 'PB Banana Crunch', 4.5, 0),
('Skibo Cafe', 'Breakfast', 0, 'Cafe Breakfast', 4.5, 0),
('Skibo Cafe', 'Breakfast', 0, 'Skibo French Toast', 4.5, 0),
('Skibo Cafe', 'Salads', 0, 'Classic Caesar Salad', 5.75, 0),
('Skibo Cafe', 'Salads', 0, 'Mediterranean Salad', 6.25, 0),
('Skibo Cafe', 'Salad', 0, 'Steak and Potato Salad', 7.25, 0),
('Skibo Cafe', 'Salad', 0, 'Chicken Artichoke and Feta Salad', 7.25, 0),
('Skibo Cafe', 'Wraps', 0, 'Chicken Caesar Wrap', 6.25, 0),
('Skibo Cafe', 'Wraps', 0, 'Roast Veggie and Hummus ', 6.25, 0),
('Skibo Cafe', 'Wraps', 0, 'Southwest Chicken', 6.25, 0),
('Skibo Cafe', 'Pizza', 0, 'Red', 5.25, 0),
('Skibo Cafe', 'Pizza', 0, 'White Caprese', 6.25, 0),
('Skibo Cafe', 'Pizza', 0, 'Green Peace-za', 6.25, 0),
('Skibo Cafe', 'Pizza', 0, 'Garlic Chicken', 6.25, 0),
('Skibo Cafe', 'Pizza', 0, 'BBQ Chicken Pizza', 6.25, 0),
('Skibo Cafe', 'Vegetarian, Pizza', 0, 'Veggie', 6.25, 0),
('Skibo Cafe', 'Pizza', 0, 'Four Meat', 6.25, 0),
('Skibo Cafe', 'Pizza', 0, 'Fajita Pizza', 6.25, 0),
('Skibo Cafe', 'Side', 0, 'Breadsticks', 3.5, 0),
('Skibo Cafe', 'Baked Wedges', 0, 'Wedgetable', 6.25, 0),
('Skibo Cafe', 'Baked Wedges', 0, 'Turkey', 6.25, 0),
('Skibo Cafe', 'Baked Wedges', 0, 'Chicken and Artichoke', 6.25, 0),
('Skibo Cafe', 'Pasta', 0, 'Baked Penne Pasta', 6.25, 0),
('The Exchange', 'Sandwiches', 0, 'Corned Beef', 6.15, 0),
('The Exchange', 'Sandwiches', 0, 'Roast Beef', 6.15, 0),
('The Exchange', 'Sandwiches', 0, 'Specialty Meat', 6.15, 0),
('The Exchange', 'Sandwiches', 0, 'Ham', 5.8, 0),
('The Exchange', 'Sandwiches', 0, 'Turkey', 5.8, 0),
('The Exchange', 'Sandwiches', 0, 'Tuna', 5.8, 0),
('The Exchange', 'Sandwiches', 0, 'Chicken', 5.8, 0),
('The Exchange', 'Sandwiches', 0, 'Egg Salad', 5.8, 0),
('The Exchange', 'Sandwiches', 0, 'BLT w/Cheese', 5.8, 0),
('The Exchange', 'Sandwiches', 0, 'BLT', 5.5, 0),
('The Exchange', 'Vegetarian, Sandwiches', 0, 'Grilled Vegetable ', 5.5, 0),
('The Exchange', 'Sandwiches', 0, 'Grilled Cheese', 5.3, 0),
('The Exchange', 'Pasta', 0, 'Pasta of the Day', 5.65, 0),
('The Exchange', 'Surpise', 0, 'Entree of the Day', 6.65, 0),
('The Exchange', 'Wraps', 0, 'Gourmet Wrap', 5.95, 0),
('The Exchange', 'Wraps', 0, 'Southwest Chicken Wrap', 5.8, 0),
('The Exchange', 'Vegetarian, Wraps', 0, 'Veggie Wrap', 5.5, 0),
('The Exchange', 'Sandwiches', 0, 'Free Market', 6.15, 0),
('The Exchange', 'Sandwiches', 0, 'Cheezy Beef Melt', 6.15, 0),
('The Exchange', 'Sandwiches', 0, 'Taste Sensation', 6.15, 0),
('The Exchange', 'Sandwiches', 0, 'Wall Street', 6.15, 0),
('The Exchange', 'Sandwiches', 0, 'Classic Italian', 6.15, 0),
('The Exchange', 'Sandwiches', 0, 'Build Your Own', 6.15, 0),
('The Exchange', 'Drinks', 0, 'Juice', 1.9, 0),
('The Exchange', 'Drinks', 0, 'Naked Juice', 4.25, 0),
('The Exchange', 'Drinks', 0, 'Energy Drink', 3.15, 0),
('The Exchange', 'Drinks', 0, 'Frappaccino', 3.15, 0),
('The Exchange', 'Drinks', 0, 'Oty Smoothie', 2.5, 0),
('The Exchange', 'Drinks', 0, 'Mocha', 2.15, 0),
('The Exchange', 'Drinks', 0, 'Cappuccino', 2.15, 0),
('The Exchange', 'Drinks', 0, 'Latte', 2.15, 0),
('The Exchange', 'Drinks', 0, 'Espresso', 2.15, 0),
('The Exchange', 'Drinks', 0, 'Coffee', 2, 0),
('The Exchange', 'Drinks', 0, 'Hot Chocolate', 2.15, 0),
('The Exchange', 'Drinks', 0, 'Hot Tea', 1.65, 0),
('The Exchange', 'Drinks', 0, 'Starbucks Cup', 0.25, 0),
('The Exchange', 'Drinks', 0, 'Milk', 0.9, 0),
('The Exchange', 'Drinks', 0, 'Soda', 1.45, 0),
('The Exchange', 'Drinks', 0, 'Bottled Soda', 1.55, 0),
('The Exchange', 'Drinks', 0, 'Bottled Water', 1.55, 0),
('The Exchange', 'Breakfast, Sandwich', 0, 'Croissant Egg Sandwich', 4.35, 0),
('The Exchange', 'Breakfast, Sandwich', 0, 'Bagel Egg Sandwich', 4.15, 0),
('The Exchange', 'Breakfast, Sandwich', 0, 'Double Egg Sandwich', 5.5, 0),
('The Exchange', 'Breakfast', 0, 'Bagel with Cream Cheese', 1.85, 0),
('The Exchange', 'Breakfast', 0, 'Toast with Butter & Jelly', 1.25, 0),
('The Exchange', 'Breakfast', 0, 'Muffin', 1.85, 0),
('The Exchange', 'Breakfast', 0, 'Danish', 1.85, 0),
('The Exchange', 'Breakfast', 0, 'Croissant', 1.85, 0),
('The Exchange', 'Breakfast', 0, 'Donuts', 1.45, 0),
('The Exchange', 'Breakfast', 0, 'Nugo Bars', 2.3, 0),
('The Exchange', 'Breakfast', 0, 'Breakfast Bars', 1.4, 0),
('The Exchange', 'Breakfast', 0, 'Yogurt', 1.75, 0),
('The Exchange', 'Salad', 0, 'Chicken Salad', 3.35, 0),
('The Exchange', 'Salad', 0, 'Tuna Salad', 3.35, 0),
('The Exchange', 'Salad', 0, 'Broccoli Bacon Salad', 2.95, 0),
('The Exchange', 'Sides', 0, 'Hummus', 2.9, 0),
('The Exchange', 'Salad', 0, 'Asian Noodle Salad', 2.9, 0),
('The Exchange', 'Salad', 0, 'Pasta Salad', 2.9, 0),
('The Exchange', 'Salad', 0, 'Egg Salad', 2.9, 0),
('The Exchange', 'Salad', 0, 'Potato Salad', 2.85, 0),
('The Exchange', 'Dessert', 0, 'Ice Cream', 1.5, 0),
('The Exchange', 'Side', 0, 'Fruit Salad', 3.35, 0),
('El Gallo de Oro', 'Burrito', 4.5, 'Beef Burrito', 6.95, 2),
('El Gallo de Oro', 'Burrito', 0, 'Chicken Burrito', 6.75, 0),
('El Gallo de Oro', 'Burrito', 0, 'Pork Burrito', 6.95, 0),
('El Gallo de Oro', 'Burrito', 0, 'Vegetarian Burrito', 6.75, 0),
('El Gallo de Oro', 'Bowl', 0, 'Beef Bowl', 6.95, 0),
('El Gallo de Oro', 'Bowl', 0, 'Chicken Bowl', 6.75, 0),
('El Gallo de Oro', 'Bowl', 0, 'Pork Bowl', 6.95, 0),
('El Gallo de Oro', 'Bowl', 0, 'Vegetarian Bowl', 6.75, 0),
('El Gallo de Oro', 'Quesadilla', 0, 'Beef Quesadilla', 6.95, 0),
('El Gallo de Oro', 'Quesadilla', 0, 'Chicken Quesadilla', 6.75, 0),
('El Gallo de Oro', 'Quesadilla', 0, 'Pork Quesadilla', 6.95, 0),
('El Gallo de Oro', 'Quesadilla', 0, 'Vegetarian Quesadilla', 6.75, 0),
('El Gallo de Oro', 'Salad', 0, 'Beef Salad', 6.95, 0),
('El Gallo de Oro', 'Salad', 0, 'Chicken Salad', 6.75, 0),
('El Gallo de Oro', 'Salad', 0, 'Pork Salad', 6.95, 0),
('El Gallo de Oro', 'Salad', 0, 'Vegetarian Salad', 6.75, 0),
('El Gallo de Oro', 'Taco', 0, 'Beef Taco', 6.95, 0),
('El Gallo de Oro', 'Taco', 0, 'Chicken Taco', 6.75, 0),
('El Gallo de Oro', 'Taco', 0, 'Pork Taco', 6.95, 0),
('El Gallo de Oro', 'Taco', 0, 'Vegetarian Taco', 6.75, 0),
('El Gallo de Oro', 'Sides', 0, 'Chips', 1.25, 0),
('El Gallo de Oro', 'Sides', 0, 'Chips & Salsa', 1.75, 0),
('El Gallo de Oro', 'Sides', 0, 'Chips & Guacamole', 2.75, 0),
('El Gallo de Oro', 'Sides', 0, 'Guacamole', 1.5, 0),
('El Gallo de Oro', 'Sides', 0, 'Papas Fritas', 2, 0),
('El Gallo de Oro', 'Sides', 0, 'Rice and Beans', 2, 0),
('El Gallo de Oro', 'Sides', 0, 'Fruit', 1, 0),
('El Gallo de Oro', 'Sides', 0, 'Banana', 0.5, 0),
('El Gallo de Oro', 'Beverages', 0, 'Pepsi (16 Oz)', 1.55, 0),
('El Gallo de Oro', 'Beverages', 0, 'Pepsi (24 Oz)', 1.8, 0),
('El Gallo de Oro', 'Beverages', 0, 'Unsweetened Iced Tea (24 Oz)', 1.8, 0),
('El Gallo de Oro', 'Beverages', 0, 'Agua Fresca (16 Oz)', 1.5, 0),
('Tartans Pavilion', 'Pizza', 0, 'Plain Cheese NY Style (By Slice)', 2.29, 0),
('Tartans Pavilion', 'Pizza', 0, 'One Topping NY Style (By Slice)', 2.69, 0),
('Tartans Pavilion', 'Pizza', 0, 'Specialty NY Style (By Slice)', 2.99, 0),
('Tartans Pavilion', 'Pizza', 0, 'Sicilian Cheese (By Slice)', 2.99, 0),
('Tartans Pavilion', 'Pizza', 0, 'Sicilian Specialty (By Slice)', 3.69, 0),
('Tartans Pavilion', 'Pizza', 0, 'Plain Cheese NY Style (Whole Pies)', 2.29, 0),
('Tartans Pavilion', 'Pizza', 0, 'One Topping NY Style (Whole Pies)', 2.69, 0),
('Tartans Pavilion', 'Pizza', 0, 'Specialty NY Style (Whole Pies)', 2.99, 0),
('Tartans Pavilion', 'Pizza', 0, 'Sicilian Cheese (Whole Pies)', 2.99, 0),
('Tartans Pavilion', 'Pizza', 0, 'Sicilian Specialty (Whole Pies)', 3.69, 0),
('Tartans Pavilion', 'Side', 0, 'Cheese Calzone', 6.19, 0),
('Tartans Pavilion', 'Side', 0, 'Filled Calzone', 6.49, 0),
('Tartans Pavilion', 'Side', 0, 'Stromboli', 5.99, 0),
('Tartans Pavilion', 'Side', 0, 'Pepperoni Roll', 3.39, 0),
('Tartans Pavilion', 'Side', 0, 'Signature Tartan Dog', 3.39, 0),
('Tartans Pavilion', 'Side', 0, 'Two Breadsticks With Sauce', 2.99, 0),
('Tartans Pavilion', 'Side', 0, 'Chicken Wings (5 Piece)', 4.29, 0),
('Tartans Pavilion', 'Side', 0, 'Chicken Wings (10 Piece)', 7.29, 0),
('Tartans Pavilion', 'Side', 0, 'Chips or Pretzels', 1.19, 0),
('Tartans Pavilion', 'Side', 0, 'Whole Piece of Fruit', 1.19, 0),
('Tartans Pavilion', 'Side', 0, 'One Breadstick With Sauce', 1.59, 0),
('Tartans Pavilion', 'Side', 0, 'Side Salad with Choice of Ken''s Dressing', 2.99, 0),
('Tartans Pavilion', 'Side', 0, 'Fountain Beverage', 1.55, 0);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `rest_name` varchar(100) NOT NULL,
  `lat_long` varchar(100) NOT NULL,
  `rating` double DEFAULT NULL,
  `num_votes` int(11) NOT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `open_time` int(11) NOT NULL,
  `close_time` int(11) NOT NULL,
  `image_path` varchar(200) DEFAULT NULL,
  `bw_image_path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`rest_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`rest_name`, `lat_long`, `rating`, `num_votes`, `description`, `open_time`, `close_time`, `image_path`, `bw_image_path`) VALUES
('Asiana', '40.443632,-79.945548', 3.8, 40, 'Located in the Atrium of Newell-Simon Hall, Asiana offers Chinese and Pacific Rim entrÃ©es, soups and snacks, from fresh hot foods to fresh ready-to-go items. Whether you''re on the move or ready to relax a meal in the Atrium, Asiana''s is ready and happy to serve you.', 1030, 1930, NULL, NULL),
('Carnegie Mellon Cafe', '40.442558,-79.9397', 3.5, 10, 'Stop by the Carnegie Mellon Cafe for hot breakfast served all day. EntrÃ©es include omelets, Belgian waffles, fluffy buttermilk pancakes, stuffed French toast and eggs made your way. Enjoy classic American diner sandwiches, wraps and flatbread sandwiches. Be sure and save room for premium hand dipped ice cream, banana splits, signature sundaes and malted milkshakes.', 730, 0, NULL, NULL),
('City Grill', '40.443177,-79.942012', NULL, 0, 'Grilled to order freshly prepared hand pressed burgers, crispy chicken tenders and Philly cheese steaks are just a few items this station offers. Served with our signature fresh-cut fries, onion rings and healthy side options. It’s a meal that you won’t forget. This station also features weekly sandwich, hot dog and cheesy melt specials! Located in The Marketplace on the second floor of the University Center.', 1100, 1600, NULL, NULL),
('Creperie', '40.443159,-79.941971', 3.1, 4, 'Indulge your palate with a taste of Old World cuisine at our new eatery. Chef inspired ingredients presented in a freshly handmade crepe. Located in the Marketplace, 2nd floor of the University Center.', 1100, 2000, NULL, NULL),
('Downtown Deli', '40.443159,-79.941939', 2.9, 25, 'Premium, upmarket sandwiches and wraps, pressed Panini and subs as well as traditional build-your-own deli sandwiches. Every item prepared at the Downtown Deli will always be prepared with fresh, high-quality ingredients of your choice. This station also features weekly sandwich and wraps of the week!  Located in the Marketplace, 2nd floor of the University Center.', 1100, 2000, NULL, NULL),
('El Gallo de Oro', '40.443199,-79.942076', 3.5, 20, 'We are committed to offering you authentic Mexican food made with fresh and healthful ingredients.\nMany of our dishes are prepared over the grill to maximize their flavors. Our meats are marinated with authentic Mexican recipes and spices, such as cumin, cilantro and chipotle.\nKeeping it simple, our menu consists of burritos, tacos, quesadillas and salads. Our motto: ''Simple menu packed with great flavors.''', 1030, 2000, NULL, NULL),
('Entropy', '40.44342,-79.942084', 3.2, 100, 'Carnegie Mellon University''s very own campus convenience store. In addition to the large variety of grocery items, health and beauty aids, bottled beverages, snacks, sweets and treats, Entropy offers a variety of Quik Piks sandwiches, salads, breakfast sandwiches, local and sustainable produce and dairy as well as a section dedicated to entrÃ©es and sides that are ''Ready to Heat/Eat Kosher.''', 730, 300, NULL, NULL),
('Evgefstos', '40.443205,-79.942068', 5, 1, 'A feast of vegetarian and vegan items inspired by cultures around the globe. Enjoy our chef''s choice of hot entrées, flatbread pizzas, boca burgers, wraps, hummus and fresh falafel accompanied by hot and cold side options.  Located in the Marketplace, 2nd floor of the University Center.', 1100, 1600, NULL, NULL),
('Gingers Express', '40.441509,-79.944614', NULL, 0, 'Ginger''s Express offers custom deli sandwiches and homemade salads, soups, and hot entrées. Hot beverages include an assortment of specialty and organic teas, as well as Starbucks coffee and espresso. Premium bottled juices, waters and teas are also offered. Ginger''s Express features fresh bakery goods, fresh fruits, yogurt parfaits and nutritional bars and many other items for grab and go customers.', 800, 1600, NULL, NULL),
('Heinz Cafe', '40.444775,-79.945432', NULL, 0, 'The Café has a relaxing lounge area with plenty of tables and chairs, making it a peaceful place to stop by for a cold drink or snack during a busy day. If your schedule is tight, grab a Quik Piks sandwich or salad. Either way, the Heinz Café offers a variety of items, designed to fit the busiest of class schedules.', 830, 1700, NULL, NULL),
('Jibril''s Warfare Zone', '40.447159,-79.946805', 5.001, 150, 'Constructed by Jibril and minions in 2013, Jibril''s Warfare Zone has rapidly risen to emerge as Carnegie Mellon''s premier restaurant. Located on the 7th floor of the Residence on Fifth, the Warfare Zone serves a delectable range of dishes, specializing in zombie cuisine. Try it out, and meanwhile find out where the Rez is! (Hint: on Fifth)!', 1, 0, NULL, NULL),
('La Prima Espresso', '40.442689,-79.945783', NULL, 0, 'Espresso, cappuccino, Italian pastries, focaccia bread, soups and sandwiches are some of the many options you will find at La Prima. You can get the daily specials by following its Twitter page at twitter.com/LaPrimaEspresso.', 800, 1800, NULL, NULL),
('Maggie Murph Cafe', '40.441187,-79.943573', NULL, 0, 'Need to refuel during a study session in the library? A full line of Starbucks coffee, espresso drinks, Tazo teas,  pastries, muffins, bagels, Quik Piks sandwiches and salads as well as sushi, fresh fruit and yogurt, and a daily variety of breakfast sandwiches. Make sure to grab a coffee or cold drink to keep you going while you’re hitting the books!', 1000, 1700, NULL, NULL),
('Mitchell''s Mainstreet', '40.443493,-79.945601', 4.34534, 17, 'Mitchell''s, located in the main atrium of Newell-Simon Hall, has something for everyone needing to grab a quick lunch that''s both tasty and healthy. The menu features coffee and cappuccino, soups and chili, delicious regular and specialty pizzas, and hot entrées including hot subs, wraps and baked pasta dishes. We also offer a full salad bar and made-to-order subs and sandwiches.', 800, 1500, NULL, NULL),
('Nakama Express', '40.442603,-79.939724', NULL, 0, 'Nakama Express sushi chefs provide fresh and made-to-order sushi daily during lunch and dinner in the Resnik Servery and provide prepared sushi daily in Entropy and Maggie Murph Café. Nakama’s sushi is prepared using only the freshest, prime quality seafood and vegetables. Pan-Asian cuisine is also available every Monday and Wednesday in the Resnik Servery.', 1100, 2100, NULL, NULL),
('Pasta Villaggio', '40.443132,-79.942014', NULL, 0, 'Select from our homemade sauces and fresh pasta to build-your-own pasta bowl or choose from one of our house specialties. All pasta entrées are prepared with traditional Italian ingredients. This station also features weekly pasta specials. Located in the Marketplace, 2nd floor of the University Center.', 1100, 1600, NULL, NULL),
('Schatz Dining Room', '40.443161,-79.942599', 4.33248, 178, 'Start your day with an all-you-care-to-eat breakfast buffet. During lunch, Schatz Dining Room becomes a faculty, staff and graduate student dining room, serving all of our fresh daily offerings ala carte in a comfortable and relaxed atmosphere.  Throughout dinner, Schatz plays host to the campus’s only all-you-care-to-eat dinner buffet. Join us every Wednesday Night for our themed dinners that feature cuisines from around the world.   Join us on Saturday and Sunday for our all-you-care-to-eat brunch that features omelets, frittatas, breakfast pastries, pancakes, waffles, fruits and more.', 730, 2000, NULL, NULL),
('SEIber Cafe', '40.446482,-79.950107', 4.833, 6, 'Come check out this dining location in the Software Engineering Institute at 4500 Fifth Avenue. Enjoy the chef''s choice of daily hot entrées, house-made soups, hot and cold sandwiches, fresh pastries, fresh brewed coffee and more, also featuring a giant self-serve salad bar.', 730, 1500, NULL, NULL),
('Skibo Cafe', '40.444049,-79.942189', 4, 30, 'Come check out the coolest hangout on campus! House specialties include a variety of coffee, espresso and smoothie drinks. Pick from our selection of pizzas, gourmet sandwiches, salads, frozen yogurts and desserts, or vegetarian and vegan options for a healthy and satisfying meal. Open late every night, Skibo Café also hosts entertainment on our in-house stage. Look for event announcements here and in the café!\nSkibo Café is also available to host a student- or group-sponsored event. If you would like to reserve space in Skibo, please fill out and return the Skibo Space Request Form (pdf). A manager will contact you as soon as possible with more details regarding your event.', 900, 200, NULL, NULL),
('Soup and Salad', '40.442613,-79.939802', 3.9999999, 25, 'A full, fresh salad bar with a variety of greens, veggies, toppings and dressing choices accompanied by two hot soups available daily. Take advantage of our value prices including all-you-care-to-eat and ala carte menu options!', 1100, 2100, NULL, NULL),
('Spice it up Grill', '40.442595,-79.939839', 3.2112, 37, 'Premium grill station open for lunch and dinner with signature and top-your-own hand-packed all-beef burgers, turkey burgers, our signature black bean burgers, portobello burgers and chicken breast sandwiches. Lunch and dinner entrées such as steak, chicken and fish partnered with a variety of chef’s choice sides are also available.', 1100, 2100, NULL, NULL),
('Spinning Salads', '40.443167,-79.941902', 2.33333333, 3, 'Build your own salad by choosing your greens, veggies, proteins and toppings.   Located in the Marketplace, 2nd floor of the University Center', 1100, 2000, NULL, NULL),
('Stackers Fresh Subs', '40.442538,-79.939759', 4.27, 20, 'Come experience the ultimate submarine sandwich. Chef Victor’s signature submarines begin with freshly baked Italian style bread and feature fresh deli style meats and cheeses accompanied with your choice of an infinite variety of toppings.', 1100, 2100, NULL, NULL),
('Stephanie''s', '40.446149,-79.951035', 3.75, 4, 'Offering a convenient breakfast and lunch location closer to students in Mellon Institute and Oakland residents, Stephanie''s features a menu highlighted by customer favorites from The Exchange in Posner Hall. Stephanie''s features bakery goods, fresh fruits, yogurt parfaits, nutritional bars and many other items for grab and go customers all day. Fresh wraps, deli sandwiches, soups and homemade salads are available for lunch. Hot beverages include an assortment of specialty and organic teas as well as Starbucks coffee and espresso. Premium bottled juices, waters and teas are also offered.', 800, 1400, NULL, NULL),
('Take Comfort', '40.442548,-79.939844', 3.66, 12, 'Craving a taste of home? Take comfort in our rotisserie chicken, turkey, pork, beef sirloin and seafood specialties or savor the flavor of our daily vegetarian entrée. All entrées are served with a large variety of starch and vegetable sides.', 1100, 2100, NULL, NULL),
('Take Comfort Too', '40.443073,-79.94199', NULL, 0, 'This sister location to Take Comfort located in the Marketplace offers our chef''s choice of home-style comfort foods from around the world. Located in the Marketplace, 2nd floor of the University Center.', 1100, 1600, NULL, NULL),
('Tartans Pavilion', '40.442726,-79.940109', 4.67901, 51, 'Campus pizza like you''ve never tasted before. Our 18" hand-tossed pies are baked to perfection served by-the-slice or as a whole pie made for sharing. In traditional pizza parlor fashion, we offer a variety of meat, vegetable and cheese filled calzones, strombolis, pepperoni rolls, Italian sandwiches and our signature: Tartan Dogs and Piadas (Italian Street Food). During dinner, try one of our baked pasta dishes. Join us every Thursday night for Wing Night!', 1100, 2300, NULL, NULL),
('Taste of India', '40.442597,-79.939689', 4.49, 35, 'Taste of India offers delicious Indian cuisine, including chicken tikka masala and other traditional favorites. Our Resnik Servery location in the Resnik House features make-your-own boxes for dinner, allowing customers the opportunity to sample different dishes. Stop by and enjoy a Taste of India!', 1100, 2100, NULL, NULL),
('Tazza D''Oro', '40.443634,-79.944758', 4.10992534, 600, 'Tazza D’Oro is a European style café and espresso bar. Locally owned and operated, Tazza D''Oro is known for exceptional coffee and espresso drinks, highly skilled baristas and a strong commitment to purchasing locally sourced food for delicious panini, pastries and desserts.', 700, 1900, NULL, NULL),
('The Exchange', '40.441542,-79.942087', 4.2, 60, 'The Exchange offers custom deli sandwiches and homemade salads, soups and hot entrees. Hot beverages include an assortment of specialty and organic teas as well as Starbucks coffee and espresso. Premium bottled juices, waters and teas are also offered. The Exchange features fresh bakery goods, fresh fruits and nutritional bars and many other items for grab and go customers. Founded by Tepper and Warfa in the 1960s, The Exchange is famous for being CMU''s only restaurant that serves stuff that can be categorized as food.', 800, 1900, NULL, NULL),
('The Pomegranate', '40.44304,-79.942023', 4, 1, 'The Pomegranate is located in the University Center serving fresh and healthy kosher offerings. The menu created by proprietor Zur Goldblum has choices to reflect cuisines with flavors from the Middle East, Turkey and Israel. Zur, former chef of Sabahbah on Murray Avenue in Squirrel Hill, has been a food service professional for over seven years. Offerings provided by The Pomegranate are prepared at the Kosher kitchen located in Beth Shalom Congregation and are under the strict supervision of Rabbi Michael Werbow. In addition to the grilled meats, sandwiches and salads, they will also offer a wide variety of vegetarian and vegan options such as home-made Falafel, Hummus and Babaganoush, all prepared fresh daily. Also offered is the very popular Shwarma sandwich.   Located in the General Motors Room, second floor of the University Center.', 1100, 2000, NULL, NULL),
('The Underground', '40.445232,-79.94337', 3.1, 5, 'The Underground is a restaurant and student activity center, located in the basement of Morewood Gardens. We feature a standard menu of hamburgers, chicken tenders, pasta, soups and desserts as well as daily specials for lunch and dinner. The Underground commonly hosts student and group-sponsored events. Those interested in reserving the Underground''s stage and other resources should complete The Underground Space Request Form (pdf) and return it to a manager.', 830, 2300, NULL, NULL),
('The Zebra Lounge', '40.441605,-79.942985', 3.679, 15, 'The artsy coffeehouse The Zebra Lounge is located in the Great Hall of College of Fine Arts. This unique shop is a great place to come for lunch or settle in and study for the afternoon. The Zebra Lounge is an excellent space to show off your artistic talents, vocally, musically or theatrically. The shop features free trade and organic coffees and teas.', 800, 1700, NULL, NULL),
('Worlds of Flavor', '40.442626,-79.939954', 4.5216, 108, 'Looking for a unique experience on campus? Look no further! Worlds of Flavor features authentically inspired regional dishes. Each week our chefs feature a specific regionally influenced cuisine. Located in Tartans Pavilion.', 1700, 2100, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
