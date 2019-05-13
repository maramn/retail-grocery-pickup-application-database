-- credit card details

use retail;

INSERT INTO credit_card (credit_card_id, credit_card_num, expiry_date, cvv)
VALUES 

(1,	30352302397269,	'2019-05-24',621),
(2	,   4844458987481610,	'2019-11-14',343),
(3	, 30303316484239,	'2018-12-22',	851),
(4	, 4508514846544010,	'2018-04-29',	526),
(5	, 6493462804237890,	'2019-04-20',	299),
(6	, 4917399326710660,	'2019-05-14',	553),
(7	, 346166717254884,	'2019-01-14',	628),
(8	, 374769860487717,	'2020-04-01',	634),
(9	, 346491080754124,	'2018-05-18',	996),
(10,	5562571363550580,	'2019-02-17', 271),
(11,	30116963525876,	'2018-10-05',	299),
(12,	340603995471745,	'2019-09-05',	452),
(13,	379021226630142,	'2019-07-24',	169),
(14,	30440846537811,	'2019-05-12',	239),
(15,	6574990808561800,	'2020-02-27',	229),
(16,	30093041681114,	'2020-03-03',	396),
(17,	375886189704579,	'2018-05-11',	550),
(18,	4844572351301920,	'2019-11-24',	903),
(19,	372740978746536,	'2019-06-20',	333),
(20,	373075272071326,	'2018-07-30',	451),
(21,	6443293939864240,	'2018-12-31',	922),
(22,	349405355860546,	'2018-11-08',	434),
(23,	6590121411881210,	'2019-08-30',	131),
(24,	30344501051367,	'2019-09-10',	737),
(25,	5102856697922990,	'2018-12-15',	621),
(26,	30553635310487,	'2019-03-28',	470),
(27,	4026656555014130,	'2019-07-07',	225),
(28,	5355625694804410,	'2018-08-23',	462),
(29,	343987875813408,	'2019-08-01',	318),
(30,	4844707594396920,	'2020-02-26',	445);


-- INSERT INTO credit_card (credit_card_id, credit_card_num, expiry_date, cvv)
-- VALUES 

-- (31, 1234567891234567, '2021-04-27', 334);

-- SELECT * FROM credit_card;



####################################################################################

-- customer details

INSERT INTO customer(user_id, username, `password`, `name`, email, credit_card_id)
VALUES 

(1,	'Cody',	'malesuada',	'Cody Navarro',	'vestibulum.neque@lectusante.org',	1),
(2,	'Tatiana',	'mauris,',	'Tatiana Lynch'	,'at.lacus@lobortis.ca',	2),
(3,	'Kenneth',	'sed',	'Kenneth Austin', 'ligula.Nullam@Etiam.co.uk',	3),
(4,	'Hannah',	'semper',	'Hannah Reid',	'dolor.nonummy.ac@facilisismagnatellus.com',	4),
(5,	'Rajah',	'tempus',	'Rajah Davenport',	'arcu@sedhendrerit.com',	5),
(6,	'Bernard',	'ridiculus',	'Bernard Duncan',	'Suspendisse@risusodioauctor.org',	6),
(7,	'Celeste',	'semper',	'Celeste Tanner',	'ipsum.dolor@non.ca',	7),
(8,	'Erin',	'mus.', 	'Erin Franks'	,'purus@risusQuisquelibero.net',	8),
(9,	'Hedwig',	'est',	'Hedwig Anderson',	'nec@inaliquet.com',	9),
(10,	'Dominique',	'Curae;',	'Dominique Willis',	'ac.libero@ac.org',	10),
(11,	'Abbot',	'aliquet',	'Abbot Schultz',	'velit.egestas.lacinia@Duisvolutpatnunc.edu',	11),
(12,	'Ulric',	'dolor.',	'Ulric Wade',	'Curae.Donec.tincidunt@mattis.org',	12),
(13,	'Jamal',	'tellus.'	,'Jamal Ware'	,'tincidunt@inlobortis.edu',	13),
(14,	'Logan',	'nisi',	'Logan Marks',	'ac@tincidunt.org',	14),
(15,	'Rooney',	'enim',	'Rooney English',	'non@Sedegetlacus.net',	15),
(16,	'Oscar',	'tempus',	'Oscar Monroe'	,'mollis@nibh.com	',16),
(17,	'Gage',	'urna',	'Gage Savage'	,'risus@sitamet.net',	17),
(18,	'Charles',	'malesuada',	'Charles Buck',	'congue@nisl.ca',	18),
(19,	'Cyrus',	'Suspendisse',	'Cyrus Goodwin',	'sit@Phasellusfermis.org',	19),
(20,	'Ezra',	'Suspendisse',	'Ezra Goff'	,'nisi@felis.org',	20),
(21,	'Nita',	'nulla',	'Nita George',	'pellentesque@CrasinterdumNunc.com',	21),
(22,	'Olympia',	'elit,'	,'Olympia Puckett',	'eu.euismod.ac@Praesent.ca',	22),
(23,	'Josiah',	'ante',	'Josiah Berg',	'eu.tellus@neque.edu' ,	23),
(24,	'Mariko',	'Etiam',	'Mariko Valenzuela',	'volutpat.ornare.facilisis@vitus.co.uk',	24),
(25,	'Thane',	'est.',	'Thane Glass',	'id.erat.Etiam@magnisdis.org',	25),
(26,	'Deanna',	'lacus.',	'Deanna Stevens',	'Duis.ac@metusAliquamerat.com',	26),
(27,	'Griffin',	'Duis',	'Griffin Bowers',	'condimentum@in.org',	27),
(28,	'Cameron',	'nec',	'Cameron Bell',	'at@dolorvitaedolor.org',	28),
(29,	'Camilla',	'semper',	'Camilla Mayer',	'Nam.consequat.dolor@Dortellus.com',	29),
(30,	'Isaiah',	'papasa',	'Isaiah Farrell'	,'Aliquam.erat.volutpat@Sed.net',	30);

-- SELECT * FROM customer;


INSERT INTO customer(user_id, username, `password`, `name`, email, credit_card_id)
VALUES 

(31,	'Isaiah',	'papasa',	'Isaiah Farrell'	,'Aliquam.erat.volutpat@Sed.net',	31);


-- Truncate customer;


####################################################################################


INSERT INTO employee(employee_id, `name`, email, phone)
VALUES


(1,	'Bevis Cleveland',	'placerat@aarcuSed.com',	5636556499),
(2, 'Tobias Vargas',	'ante.ipsum@urnanec.edu',	5446750335),
(3,	'Timon Faulkner',	'sit.amet.ante@idanteNunc.co.uk',	1415917281),
(4,	'Germaine Bell',	'ac.mattis@sedest.org',	5879497219),
(5,	'Nigel Rodriquez',	'sagittis.semper@urnaVivamusmolestie.net',	5334835862),
(6,	'Candice Terrell',	'arcu.Curabitur@et.com',	6973929926),
(7,	'Byron Fletcher',	'a@dolortempus.co.uk',	2263492800),
(8,	'Faith Ford',	'elit.pellentesque.a@magna.com',	5829628574),
(9,	'Sopoline Pratt',	'consequat@convallisin.co.uk',	5149213515),
(10,	'August Barrera',	'tellus.Nunc@sed.net',	1614282206),
(11,	'Sonia Galloway',	'enim.nisl@semelit.ca',	6451398674),
(12,	'Emerald Mendez',	'Phasellus@acurnaUt.edu',	3172838762),
(13,	'Carlos Hampton',	'nisl.sem.consequat@cursusinhendrerit.edu',	6625996802),
(14,	'Iliana Crosby',	'vestibulum.massa@metus.com',	4895291489),
(15,	'Flavia Norton',	'Donec.egestas@Suspendissecommodo.com',	972923139),
(16,	'Kareem White',	'Cum.sociis.natoque@facilisis.com',	1096390497),
(17,	'Allen Todd',	'libero@liberoDonecconsectetuer.net',	7464541220),
(18,	'Vaughan Daniel',	'in@ProindolorNulla.com',	9102001094),
(19,	'Prescott Oneill',	'lacus.Etiam@pedenonummy.ca',	7287548630),
(20,	'Evelyn Good',	'ac@fermentum.net',	4964495503),
(21,	'Demetrius Shaw',	'massa.non.ante@elitpretiumet.ca',	5238525846),
(22,	'Salvador Nicholson',	'Nulla.eu.neque@montes.co.uk',	7098017655),
(23,	'Clarke Horn',	'eros.Nam.consequat@tincidunt.com',	2899258497),
(24,	'Jescie Whitehead',	'Nunc.pulvinar@nisimagna.com',	8010155727),
(25,	'Neville Ewing',	'Nunc.mauris@eu.co.uk',	2616502496),
(26,	'Lucy Mcdowell',	'orci@volutpat.edu',	9721616586),
(27,	'Griffith Frederick',	'volutpat.Nulla@facilisisvitaeorci.net',	3308546933),
(28,	'Dominic Jimenez',	'enim@sedpedenec.ca',	8954480348),
(29,	'Brett Mckay',	'urna.Nullam@Suspendissetristiqueneque.co.uk',	4857863602),
(30,	'Florence Reyes',	'sit@eleifendegestasSed.ca',	5316616776);



-- Select * FROM employee;



####################################################################################


-- orders details

INSERT INTO orders(order_id, user_id, order_date, employee_id)
VALUES

(1,	23,	'2019-04-08',	26),
(2,	4,	'2019-04-08',	12),
(3,	28,	'2019-04-08',	21),
(4,	20,	'2019-04-08',	18),
(5,	27,	'2019-04-08',	7),
(6,	17,	'2019-04-09',	22),
(7,	26,	'2019-04-09',	12),
(8,	9,	'2019-04-09',	16),
(9,	12,	'2019-04-09',	10),
(10,	23,	'2019-04-09',	8),
(11,	19,	'2019-04-10',	30),
(12,	8,	'2019-04-10',	11),
(13,	27,	'2019-04-10',	17),
(14,	10,	'2019-04-10',	3),
(15,	19,	'2019-04-10',	7),
(16,	25,	'2019-04-11',	7),
(17,	23,	'2019-04-11',	27),
(18,	1,	'2019-04-11',	1),
(19,	12,	'2019-04-11',	26),
(20,	12,	'2019-04-11',	12),
(21,	13,	'2019-04-12',	17),
(22,	5,	'2019-04-12',	21),
(23,	14,	'2019-04-12',	29),
(24,	9,	'2019-04-12',	3),
(25,	21,	'2019-04-12',	30),
(26, 15, '2019-04-15', 14),
(27,	6,	'2019-04-13'	,21),
(28,	18,	'2019-04-13',	26),
(29,	1,	'2019-04-13'	,23),
(30,	15,	'2019-04-13',	13),
(31,	13,	'2019-04-14',	28),
(32,	7,	'2019-04-14'	,24),
(33,	7,	'2019-04-14'	,1),
(34,	20,	'2019-04-14',	27),
(35,	8,	'2019-04-14'	,15),
(36,	17,	'2019-04-15',	3),
(37,	11,	'2019-04-15',	12),
(38,	7,	'2019-04-15'	,23),
(39,	20,	'2019-04-15',	25),
(40,	4,	'2019-04-15'	,17),
(41,	14,	'2019-04-16',	20),
(42,	10,	'2019-04-16',	14),
(43,	16,	'2019-04-16',	11),
(44,	8,	'2019-04-16'	,16),
(45,	20,	'2019-04-16',	5),
(46,	18,	'2019-04-17',	25),
(47,	3,	'2019-04-17'	,8),
(48,	1,	'2019-04-17'	,25),
(49,	13,	'2019-04-17',	14),
(50,	19,	'2019-04-17',	4);


-- INSERT INTO orders(order_id, user_id, order_date, employee_id)
-- VALUES

-- (56, 16, '2019-04-20', 13),
-- (57, 12,'2019-04-20', 24),
-- (58, 19, '2019-04-20', 26);



-- SELECT * from orders;

####################################################################################



-- category details

Insert INTO category (category_id, `name`)

VALUES 


(1,	'produce'),
(2,	'other'),
(3,	'frozen'),
(4,	'beverage'),
(5,	'sports'),
(6,	'personal care'),
(7,	'canned'),
(8,	'cleaners'),
(9,	'cereal');


-- SELECT * FROM category;

####################################################################################


-- product location details

INSERT INTO product_location (product_location_id, lane_number, shelf, shelf_loc)
VALUES

(1,	1,	'A',	'top'),
(2,	1,	'A',	'bottom'),
(3,	1,	'B',	'top'),
(4,	1,	'B',	'bottom'),
(5,	1,	'C',	'top'),
(6,	1,	'C',	'bottom'),
(7,	1,	'D',	'top'),
(8,	1,	'D',	'bottom'),
(9,	2,	'A',	'top'),
(10,	2,	'A',	'bottom'),
(11,	2,	'B',	'top'),
(12,	2,	'B',	'bottom'),
(13,	2,	'C',	'top'),
(14,	2,	'C',	'bottom'),
(15,	2,	'D',	'top'),
(16,	2,	'D',	'bottom'),
(17,	3,	'A',	'top'),
(18,	3,	'A',	'bottom'),
(19,	3,	'B',	'top'),
(20,	3,	'B',	'bottom'),
(21,	3,	'C',	'top'),
(22,	3,	'C',	'bottom'),
(23,	3,	'D',	'top'),
(24,	3,	'D',	'bottom'),
(25,	4,	'A',	'top'),
(26,	4,	'A',	'bottom'),
(27,	4,	'B',	'top'),
(28,	4,	'B',	'bottom'),
(29,	4,	'C',	'top'),
(30,	4,	'C',	'bottom'),
(31,	4,	'D',	'top'),
(32,	4,	'D',	'bottom'),
(33,	5,	'A',	'top'),
(34,	5,	'A',	'bottom'),
(35,	5,	'B',	'top'),
(36,	5,	'B',	'bottom'),
(37,	5,	'C',	'top'),
(38,	5,	'C',	'bottom'),
(39,	5,	'D',	'top'),
(40,	5,	'D',	'bottom'),
(41,	6,	'A',	'top'),
(42,	6,	'A',	'bottom'),
(43,	6,	'B',	'top'),
(44,	6,	'B',	'bottom'),
(45,	6,	'C',	'top'),
(46,	6,	'C',	'bottom'),
(47,	6,	'D',	'top'),
(48,	6,	'D',	'bottom'),
(49,	7,	'A',	'top'),
(50,	7,	'A',	'bottom');


####################################################################################


INSERT into product_details(product_id, `name`,price, category_id, product_location_id, inventory)
VALUES

(1,	'Riceland American Jazmine Rice',	21,	1,	1,50),
(2,	'Caress Velvet Bliss Ultra Silkening Beauty Bar - 6 Ct',	7,	2,	2, 50),
(3,	'Earths Best Organic Fruit Yogurt Smoothie Mixed Berry',	19,	3,	3, 50),
(4,	'Boars Head Sliced White American Cheese - 120 Ct',	18,	2,	4, 50),
(5,	'Back to Nature Gluten Free White Cheddar Rice Thin Crackers',	11,	2,	5, 50),
(6,	'Sally Hansen Nail Color Magnetic 903 Silver Elements',	15,	2,	6, 50),
(7,	'Twinings Of London Classics Lady Grey Tea - 20 Ct',	21,	4,	7, 50),
(8,	'Lea & Perrins Marinade In-a-bag Cracked Peppercorn',	12,	2,	8, 50),
(9,	'Van De Kamps Fillets Beer Battered - 10 Ct',	6,	3,	9, 50),
(10,	'Ahold Cocoa Almonds',	24,	2,	10, 50),
(11,	'Honest Tea Peach White Tea',	15,	4,	11, 50),
(12,	'Mueller Sport Care Basic Support Level Medium Elastic Knee Support',	16,	5,	12, 50),
(13,	'Garnier Nutritioniste Moisture Rescue Fresh Cleansing Foam',	20,	6,	13, 50),
(14,	'Pamprin Maximum Strength Multi-symptom Menstrual Pain Relief',	11,	6,	14, 50),
(15,	'Suave Naturals Moisturizing Body Wash Creamy Tropical Coconut',	10,	6,	15, 50),
(16,	'Burts Bees Daily Moisturizing Cream Sensitive',	20,	6,	16, 50),
(17,	'Ducal Refried Red Beans',	10,	7,	17, 50),
(18,	'Scotch Removable Clear Mounting Squares - 35 Ct',	14,	8,	18, 50),
(19,	'Careone Family Comb Set - 8 Ct',	16,	6,	19, 50),
(20,	'Plums Black',	9,	1,	20, 50),
(21,	'Doctors Best Best Curcumin C3 Complex 1000mg Tablets - 120 Ct',	9,	6,	21, 50),
(22,	'Betty Crocker Twin Pack Real Potatoes Scalloped 2 Pouches For 2 Meals - 2 Pk',	11, 3,22, 50),
(23,	'Reese Mandarin Oranges Segments In Light Syrup',	19,	3,	23, 50),
(24,	'Smart Living Charcoal Lighter Fluid',	23,	2,	24, 50),
(25,	'Hood Latte Iced Coffee Drink Vanilla Latte',	5,	4,	25, 50),
(26,	'Triaminic Syrup Night Time Cold & Cough Grape 4oz',	12,	6,	26, 50),
(27,	'Morton Kosher Salt Coarse',	13,	2,	27, 50),
(28,	'Guava',	20,	1,	28, 50),
(29,	'Heinz Tomato Ketchup - 2 Ct',	11,	2,	29, 50),
(30,	'Petmate Booda Bones Steak, Bacon & Chicken Flavors - 9 Ct',	25,	3,	30, 50),
(31,	'Zhenas Gypsy Tea Herbal Red Tea Sachets Fire Light Chai - 22 Ct',	20,	4,	31, 50),
(32,	'Barefoot Pinot Grigio',	19,	2,	32, 50),
(33,	'Tomy The First Years Gumdrop Orthodontic Pacifiers 6m+ - 2ct',	13,	6,	33, 50),
(34,	'Halls Menthol Cough Suppresant/oral Anesthetic Drops Honey-lemon - 30 Ct',	14,	6,	34, 50),
(35,	'Natures Way Forskohlii - 60 Ct',	23,	6,	35, 50),
(36,	'Rice Bran Gluten Free Dinner Rolls Plain',	22,	1,	36, 50),
(37,	'Nakano Seasoned Rice Vinegar Original',	20,	1,	37, 50),
(38,	'Sundown Naturals Essential Electrolytes Tropical Punch Watermelon Fruit Punch Gummies - 60 Ct',	15,	2,	38, 50),
(39,	'Munchies Sandwich Crackers Cheddar Cheese On Golden Toast Crackers - 8 Pk',	12,	2,	39, 50),
(40,	'Amys Light & Lean Spaghetti Italiano',	6,	2,	40, 50),
(41,	'P.f. Changs Home Menu Meal For Two Beef With Broccoli',	25,	3,	41, 50),
(42,	'Moms Best Naturals Cereal Toasted Cinnamon Squares',	23,	2,	42, 50),
(43,	'Ferrara Vanilla Syrup',	7,	1,	43, 50),
(44,	'Elmers Board Mate Dual Tip Glue Pen',	23,	2,	44, 50),
(45,	'Kelloggs Disney Pixar Cars 2 Cereal',	15,	9,	45, 50),
(46,	'Pizza Sauce',	15,	2,	46, 50),
(47,	'Bear Naked Fit Almond Crisp 100% Natural Energy Cereal',	22,	9,	47, 50),
(48,	'Dove Men + Care Antiperspirant Deodorant Cool Silver',	22,	6,	48, 50),
(49,	'Easy-off Oven Cleaner Lemon Scent',	6,	6,	49, 50),
(50,	'Choice Organic Teas Black Tea Classic Black - 16 Ct',	12,	4,	50, 50);


-- Select * FROM product_details;

####################################################################################

-- order_product details;


insert into order_product(id, order_id, product_id, quantity)

VALUES(1,	1,	12,	4),
(2,	1,	48,	5),
(3,	2,	37,	2),
(4,	2,	12,	4),
(5,	3,	12,	5),
(6,	4,	49,	4),
(7,	4,	1,	3),
(8,	4,	29,	3),
(9,	4,	41,	3),
(10,	4,	40,	1),
(11,	4,	19,	2),
(12,	5,	10,	2),
(13,	5,	26,	4),
(14,	5,	40,	1),
(15,	6,	35,	3),
(16,	6,	16,	5),
(17,	7,	45,	2),
(18,	8,	14,	4),
(19,	8,	4,	2),
(20,	9,	29,	2),
(21,	9,	35,	5),
(22,	9,	8,	1),
(23,	10,	30,	2),
(24,	11,	50,	2),
(25,	11,	26,	5),
(26,	11,	11,	2),
(27,	12,	8, 3),
(28,	13,	39,	5),
(29,	14,	42,	4),
(30,	15,	42,	1),
(31,	15,	11,	4),
(32,	16,	34,	5),
(33,	17,	1,	3),
(34,	17,	17,	3),
(35,	18,	22,	1),
(36,	18,	33,	5),
(37,	18,	8,	3),
(38,	18,	39,	5),
(39,	18,	13,	2),
(40,	18,	40,	3),
(41,	19,	15,	3),
(42,	20,	29,	2),
(43,	21,	21,	5),
(44,	21,	45,	1),
(45,	22,	10,	4),
(46,	22,	4,	2),
(47,	23,	18,	3),
(48,	24,	37,	3),
(49,	24,	35,	3),
(50,	25,	18,	3),
(51, 26, 23, 2),
(52,	27,	16,	3),
(53,	27,	32,	2),
(54,	28,	20,	3),
(55,	28,	7	,5),
(56,	29,	3	,4),
(57,	29,	3	,2),
(58,	29,	43,	4),
(59,	30,	45,	3),
(60,	31,	14,	6),
(61,	32,	7	,6),
(62,	33,	26,	6),
(63,	33,	50,	5),
(64,	34,	10,	2),
(65,	34,	28,	2),
(66,	34,	5	,4),
(67,	34,	40,	1),
(68,	34,	15,	4),
(69,	35,	18,	5),
(70,	36,	29,	6),
(71,	37,	24,	6),
(72,	38,	1	,5),
(73,	38,	17,	6),
(74,	38,	14,	2),
(75,	39,	39,	6),
(76,	40,	17,	6),
(77,	41,	9	,2),
(78,	42,	24,	3),
(79,	43,	11,	1),
(80,	44,	28,	3),
(81,	45,	14,	3),
(82,	46,	41,	4),
(83,	47,	8	,3),
(84,	47,	3	,1),
(85,	47,	29,	1),
(86,	48,	44,	6),
(87,	49,	44,	6),
(88,	50,	26,	6);

-- insert into order_product(order_id, product_id, quantity)

-- VALUES

-- (56,	28,	3),
-- (56,	14,	3),
-- (56,	41,	4),
-- (57,	8	,3),
-- (57,	3	,1),
-- (57,	29,	1),
-- (58,	44,	6),
-- (58,	44,	6),
-- (58,	26,	6);








-- Select * FROM order_product;






















