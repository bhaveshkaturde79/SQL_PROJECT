
#Professional SQL Case Study: RetailHub Analytics

create database case_study_1;
use case_study_1;

#=====================Table Stores ================
create table Stores(store_id int primary key auto_increment, store_name varchar(50) not null, city varchar(20));

#======================Table Employees ===============================

create table Employees(employee_id int primary key auto_increment, employee_name varchar(20)not null, 
 store_id int,salary decimal(10,2), hire_date date,
foreign key (store_id) references Stores(store_id));

#==========================Table Customers====================
create table Customers(customer_id int primary key auto_increment, customer_name varchar(50) not null, city varchar(20));


#====================Table Categories=========================

create table Categories(category_id int primary key auto_increment, category_name varchar(50) not null);

#====================Table Products===============================

create table Products(product_id int primary key auto_increment, product_name varchar(50)not null ,
category_id int ,foreign key(category_id) references Categories(category_id) , price decimal(10,2));

#========================Table Orders=====================

create table Orders(order_id int primary key auto_increment,
customer_id int,foreign key (customer_id) references Customers(customer_id),
employee_id int,foreign key (employee_id) references Employees(employee_id), order_date date);

#===================Table OrderDetails=====================

create table OrderDetails(order_detail_id int primary key auto_increment, 
order_id int,foreign key (order_id) references Orders(order_id),
product_id int,foreign key (product_id) references Products(product_id), quantity int, sales_amount decimal(10,2));
desc OrderDetails;




create database case_study_1;
use case_study_1;

#=====================Table Stores ================
create table Stores(store_id int primary key auto_increment, store_name varchar(50) not null, city varchar(20));
desc Stores;
INSERT INTO Stores (store_name, city) VALUES
('Reliance Fresh', 'Mumbai'),
('D-Mart Andheri', 'Mumbai'),
('Big Bazaar', 'Delhi'),
('More Supermarket', 'Bengaluru'),
('Spencer''s', 'Kolkata'),
('Star Bazaar', 'Chennai'),
('Easyday', 'Hyderabad'),
('Vishal Mega Mart', 'Pune'),
('Reliance Smart', 'Ahmedabad'),
('Metro Cash & Carry', 'Jaipur'),
('Nature''s Basket', 'Lucknow'),
('D-Mart Borivali', 'Mumbai'),
('Reliance Digital', 'Delhi'),
('Big Mart', 'Bengaluru'),
('Family Store', 'Chennai'),
('Daily Needs', 'Hyderabad'),
('Fresh Choice', 'Pune'),
('Super Saver', 'Ahmedabad'),
('City Mart', 'Jaipur'),
('Value Store', 'Kolkata'),
('Mega Mart', 'Lucknow'),
('Urban Grocery', 'Mumbai'),
('Green Basket', 'Delhi'),
('Quick Shop', 'Bengaluru'),
('Happy Mart', 'Chennai'),
('Prime Store', 'Hyderabad'),
('Smart Choice', 'Pune'),
('Easy Shopping', 'Ahmedabad'),
('Best Buy Mart', 'Jaipur'),
('Home Needs', 'Kolkata'),
('Budget Mart', 'Lucknow'),
('Family Basket', 'Mumbai'),
('Express Mart', 'Delhi'),
('Fresh Mart', 'Bengaluru'),
('Daily Mart', 'Chennai'),
('Quality Store', 'Hyderabad'),
('Town Mart', 'Pune'),
('Neighborhood Store', 'Ahmedabad'),
('Super Value', 'Jaipur'),
('Mega Grocery', 'Kolkata'),
('Quick Basket', 'Lucknow'),
('Royal Mart', 'Mumbai'),
('Prime Grocery', 'Delhi'),
('Elite Store', 'Bengaluru'),
('Sunrise Mart', 'Chennai'),
('Moonlight Store', 'Hyderabad'),
('People''s Mart', 'Pune'),
('Grand Mart', 'Ahmedabad'),
('Choice Supermarket', 'Jaipur'),
('National Mart', 'Kolkata');

INSERT INTO Stores (store_name, city) VALUES
('Green Mart', 'Mumbai'),
('Super Fresh Store', 'Delhi'),
('Daily Choice', 'Bengaluru'),
('Smart Grocery', 'Chennai'),
('Fresh World', 'Hyderabad'),
('Mega Shopping Mart', 'Pune'),
('City Super Store', 'Ahmedabad'),
('Modern Mart', 'Jaipur'),
('Royal Grocery', 'Kolkata'),
('Family Supermarket', 'Lucknow'),
('Urban Fresh', 'Mumbai'),
('Quick Grocery', 'Delhi'),
('Happy Shopping', 'Bengaluru'),
('Value Mart', 'Chennai'),
('Premium Store', 'Hyderabad'),
('Golden Mart', 'Pune'),
('New Choice Store', 'Ahmedabad'),
('Bright Mart', 'Jaipur'),
('Daily Basket', 'Kolkata'),
('Smart Basket', 'Lucknow'),
('Fresh Point', 'Mumbai'),
('Mega Choice', 'Delhi'),
('Super Daily Needs', 'Bengaluru'),
('City Fresh Mart', 'Chennai'),
('Home Grocery', 'Hyderabad'),
('Market Square', 'Pune'),
('Green Valley Store', 'Ahmedabad'),
('Urban Choice', 'Jaipur'),
('Prime Supermarket', 'Kolkata'),
('Best Value Store', 'Lucknow'),
('Reliable Mart', 'Mumbai'),
('Complete Needs', 'Delhi'),
('Family Choice', 'Bengaluru'),
('Express Grocery', 'Chennai'),
('Fresh Corner', 'Hyderabad'),
('Daily Choice Mart', 'Pune'),
('Smart Value Store', 'Ahmedabad'),
('Town Grocery', 'Jaipur'),
('Super Corner', 'Kolkata'),
('Easy Mart', 'Lucknow'),
('Royal Choice', 'Mumbai'),
('Elite Mart', 'Delhi'),
('Sunrise Grocery', 'Bengaluru'),
('Moonlight Mart', 'Chennai'),
('People Choice Store', 'Hyderabad'),
('Grand Grocery', 'Pune'),
('National Supermarket', 'Ahmedabad'),
('Future Mart', 'Jaipur'),
('Global Store', 'Kolkata'),
('Universal Mart', 'Lucknow');
select * from Stores;

#======================Table Employees ===============================

create table Employees(employee_id int primary key auto_increment, employee_name varchar(20)not null, 
 store_id int,salary decimal(10,2), hire_date date,
foreign key (store_id) references Stores(store_id));
desc Employees;

INSERT INTO Employees (employee_name, store_id, salary, hire_date) VALUES
('Amit',1,30000,'2021-01-10'),
('Rahul',2,32000,'2021-02-15'),
('Priya',3,28000,'2021-03-20'),
('Sneha',4,35000,'2021-04-12'),
('Arjun',5,40000,'2021-05-05'),
('Vikram',6,33000,'2021-06-18'),
('Neha',7,29000,'2021-07-22'),
('Rohit',8,31000,'2021-08-10'),
('Kiran',9,27000,'2021-09-14'),
('Pooja',10,36000,'2021-10-01'),
('Manish',11,34000,'2021-11-11'),
('Anjali',12,39000,'2021-12-20'),
('Sanjay',13,30000,'2022-01-05'),
('Meena',14,32000,'2022-02-16'),
('Raj',15,41000,'2022-03-25'),
('Deepak',16,28000,'2022-04-08'),
('Kavita',17,37000,'2022-05-19'),
('Nitin',18,33000,'2022-06-23'),
('Rakesh',19,45000,'2022-07-15'),
('Divya',20,29000,'2022-08-30'),
('Ajay',21,31000,'2022-09-10'),
('Komal',22,36000,'2022-10-18'),
('Varun',23,40000,'2022-11-25'),
('Swati',24,34000,'2022-12-12'),
('Tarun',25,38000,'2023-01-05'),
('Ravi',26,30000,'2023-02-14'),
('Simran',27,35000,'2023-03-20'),
('Yash',28,42000,'2023-04-11'),
('Nisha',29,29000,'2023-05-16'),
('Akash',30,37000,'2023-06-21'),
('Mohit',31,31000,'2023-07-10'),
('Isha',32,39000,'2023-08-15'),
('Suresh',33,33000,'2023-09-18'),
('Payal',34,36000,'2023-10-25'),
('Gaurav',35,45000,'2023-11-05'),
('Asha',36,28000,'2023-12-12'),
('Harish',37,32000,'2024-01-09'),
('Riya',38,41000,'2024-02-17'),
('Karan',39,34000,'2024-03-22'),
('Maya',40,37000,'2024-04-14'),
('Abhishek',41,30000,'2024-05-20'),
('Priti',42,39000,'2024-06-18'),
('Sahil',43,43000,'2024-07-25'),
('Neeraj',44,35000,'2024-08-30'),
('Tina',45,31000,'2024-09-12'),
('Vivek',46,40000,'2024-10-08'),
('Rani',47,33000,'2024-11-16'),
('Sameer',48,38000,'2024-12-01'),
('Jyoti',49,29000,'2025-01-10'),
('Aditya',50,45000,'2025-02-15'),
('Kunal',1,32000,'2025-03-20'),
('Anu',2,30000,'2025-04-05'),
('Bharat',3,36000,'2025-05-12'),
('Chitra',4,41000,'2025-06-18'),
('Dinesh',5,34000,'2025-07-22'),
('Ekta',6,39000,'2025-08-10'),
('Farhan',7,28000,'2025-09-14'),
('Geeta',8,37000,'2025-10-20'),
('Hemant',9,42000,'2025-11-25'),
('Irfan',10,31000,'2025-12-30'),
('Jatin',11,35000,'2026-01-05'),
('Kajal',12,40000,'2026-02-12'),
('Lokesh',13,33000,'2026-03-18'),
('Monika',14,38000,'2026-04-25'),
('Naveen',15,29000,'2026-05-10'),
('Omkar',16,45000,'2026-06-15'),
('Preeti',17,31000,'2026-07-20'),
('Qasim',18,36000,'2026-08-05'),
('Ritu',19,39000,'2026-09-12'),
('Sachin',20,34000,'2026-10-18'),
('Tejas',21,41000,'2026-11-22'),
('Uma',22,30000,'2026-12-01'),
('Vikas',23,37000,'2027-01-10'),
('Wasim',24,42000,'2027-02-15'),
('Xavier',25,35000,'2027-03-20'),
('Yamini',26,39000,'2027-04-25'),
('Zoya',27,32000,'2027-05-30'),
('Alok',28,36000,'2027-06-12'),
('Bhavna',29,40000,'2027-07-18'),
('Chetan',30,33000,'2027-08-22'),
('Darshan',31,38000,'2027-09-25'),
('Esha',32,29000,'2027-10-30'),
('Faisal',33,45000,'2027-11-15'),
('Garima',34,31000,'2027-12-20'),
('Hitesh',35,37000,'2028-01-10'),
('Indu',36,42000,'2028-02-14'),
('Jaya',37,34000,'2028-03-18'),
('Kishore',38,39000,'2028-04-22'),
('Leena',39,30000,'2028-05-25'),
('Mohan',40,41000,'2028-06-30'),
('Nandini',41,35000,'2028-07-12'),
('Omar',42,38000,'2028-08-18'),
('Prakash',43,32000,'2028-09-22'),
('Ramesh',44,36000,'2028-10-25'),
('Sonia',45,40000,'2028-11-30'),
('Tushar',46,33000,'2028-12-15'),
('Usha',47,39000,'2029-01-20'),
('Vijay',48,45000,'2029-02-25'),
('Wani',49,31000,'2029-03-30'),
('Yogesh',50,37000,'2029-04-05');
select * from Employees;

#==========================Table Customers====================
create table Customers(customer_id int primary key auto_increment, customer_name varchar(50) not null, city varchar(20));
desc Customers;
INSERT INTO Customers (customer_name, city) VALUES
('Aarav Sharma','Mumbai'),
('Riya Patel','Delhi'),
('Vikram Singh','Pune'),
('Ananya Gupta','Bengaluru'),
('Rahul Verma','Chennai'),
('Sneha Joshi','Hyderabad'),
('Arjun Mehta','Ahmedabad'),
('Priya Nair','Kolkata'),
('Rohan Kapoor','Jaipur'),
('Neha Reddy','Lucknow'),
('Amit Kumar','Mumbai'),
('Pooja Shah','Delhi'),
('Sanjay Yadav','Pune'),
('Kavita Rao','Bengaluru'),
('Manish Jain','Chennai'),
('Divya Das','Hyderabad'),
('Karan Malhotra','Ahmedabad'),
('Simran Kaur','Kolkata'),
('Nitin Agarwal','Jaipur'),
('Meera Iyer','Lucknow'),
('Rajesh Gupta','Mumbai'),
('Swati Mishra','Delhi'),
('Deepak Singh','Pune'),
('Isha Verma','Bengaluru'),
('Mohit Sharma','Chennai'),
('Anjali Patel','Hyderabad'),
('Varun Joshi','Ahmedabad'),
('Kiran Rao','Kolkata'),
('Rakesh Mehta','Jaipur'),
('Tina Kapoor','Lucknow'),
('Akash Nair','Mumbai'),
('Komal Reddy','Delhi'),
('Gaurav Shah','Pune'),
('Asha Kumar','Bengaluru'),
('Harish Jain','Chennai'),
('Ritu Das','Hyderabad'),
('Sahil Malhotra','Ahmedabad'),
('Nisha Kaur','Kolkata'),
('Yash Agarwal','Jaipur'),
('Payal Iyer','Lucknow'),
('Abhishek Gupta','Mumbai'),
('Maya Singh','Delhi'),
('Suresh Verma','Pune'),
('Jyoti Sharma','Bengaluru'),
('Aditya Patel','Chennai'),
('Ravi Joshi','Hyderabad'),
('Naveen Rao','Ahmedabad'),
('Preeti Mehta','Kolkata'),
('Sameer Kapoor','Jaipur'),
('Kajal Nair','Lucknow'),
('Tarun Reddy','Mumbai'),
('Bhavna Shah','Delhi'),
('Chetan Kumar','Pune'),
('Dinesh Jain','Bengaluru'),
('Ekta Das','Chennai'),
('Farhan Malhotra','Hyderabad'),
('Geeta Kaur','Ahmedabad'),
('Hemant Agarwal','Kolkata'),
('Indu Iyer','Jaipur'),
('Jatin Gupta','Lucknow'),
('Kunal Singh','Mumbai'),
('Leena Verma','Delhi'),
('Mohan Sharma','Pune'),
('Nandini Patel','Bengaluru'),
('Omkar Joshi','Chennai'),
('Priti Rao','Hyderabad'),
('Qasim Mehta','Ahmedabad'),
('Rani Kapoor','Kolkata'),
('Sachin Nair','Jaipur'),
('Tejas Reddy','Lucknow'),
('Uma Shah','Mumbai'),
('Vikas Kumar','Delhi'),
('Wasim Jain','Pune'),
('Xavier Das','Bengaluru'),
('Yamini Malhotra','Chennai'),
('Zoya Kaur','Hyderabad'),
('Alok Agarwal','Ahmedabad'),
('Bharat Iyer','Kolkata'),
('Chitra Gupta','Jaipur'),
('Darshan Singh','Lucknow'),
('Esha Verma','Mumbai'),
('Faisal Sharma','Delhi'),
('Garima Patel','Pune'),
('Hitesh Joshi','Bengaluru'),
('Irfan Rao','Chennai'),
('Jaya Mehta','Hyderabad'),
('Kishore Kapoor','Ahmedabad'),
('Lokesh Nair','Kolkata'),
('Monika Reddy','Jaipur'),
('Naveen Shah','Lucknow'),
('Ojas Kumar','Mumbai'),
('Parth Jain','Delhi'),
('Riya Das','Pune'),
('Sonia Malhotra','Bengaluru'),
('Tushar Kaur','Chennai'),
('Usha Agarwal','Hyderabad'),
('Vijay Iyer','Ahmedabad'),
('Yogesh Gupta','Kolkata'),
('Zara Singh','Jaipur');
select * from Customers;

#====================Table Categories=========================

create table Categories(category_id int primary key auto_increment, category_name varchar(50) not null);
desc categories;
INSERT INTO Categories (category_name) VALUES
('Electronics'),
('Mobile Phones'),
('Laptops'),
('Televisions'),
('Cameras'),
('Headphones'),
('Smart Watches'),
('Home Appliances'),
('Refrigerators'),
('Washing Machines'),
('Microwaves'),
('Air Conditioners'),
('Furniture'),
('Sofas'),
('Beds'),
('Tables'),
('Chairs'),
('Kitchen Items'),
('Cookware'),
('Utensils'),
('Groceries'),
('Rice'),
('Wheat Products'),
('Pulses'),
('Spices'),
('Snacks'),
('Beverages'),
('Dairy Products'),
('Bakery Items'),
('Frozen Foods'),
('Clothing'),
('Mens Wear'),
('Womens Wear'),
('Kids Wear'),
('Footwear'),
('Sports Wear'),
('Accessories'),
('Bags'),
('Watches'),
('Jewellery'),
('Beauty Products'),
('Skin Care'),
('Hair Care'),
('Makeup'),
('Personal Care'),
('Books'),
('Stationery'),
('School Supplies'),
('Office Supplies'),
('Toys'),
('Games'),
('Sports Equipment'),
('Fitness Products'),
('Outdoor Items'),
('Automobile Accessories'),
('Car Parts'),
('Bike Accessories'),
('Tools'),
('Hardware'),
('Electrical Items'),
('Lighting'),
('Building Materials'),
('Pet Supplies'),
('Animal Food'),
('Gardening'),
('Plants'),
('Home Decor'),
('Curtains'),
('Bedsheets'),
('Kitchen Appliances'),
('Cleaning Products'),
('Detergents'),
('Safety Products'),
('Medical Supplies'),
('Health Products'),
('Fitness Supplements'),
('Travel Accessories'),
('Luggage'),
('Mobile Accessories'),
('Computer Accessories'),
('Printers'),
('Networking Devices'),
('Software'),
('Gaming Consoles'),
('Video Games'),
('Music Instruments'),
('Musical Accessories'),
('Art Supplies'),
('Craft Materials'),
('Gift Items'),
('Party Supplies'),
('Seasonal Products'),
('Office Furniture'),
('Industrial Equipment'),
('Construction Tools'),
('Agricultural Products'),
('Farming Equipment'),
('Organic Products'),
('Luxury Items'),
('Miscellaneous');
select * from Categories;

#====================Table Products===============================

create table Products(product_id int primary key auto_increment, product_name varchar(50)not null ,
category_id int ,foreign key(category_id) references Categories(category_id) , price decimal(10,2));
desc Products;
INSERT INTO Products (product_name, category_id, price) VALUES
('iPhone 15',2,79999.00),
('Samsung Galaxy S24',2,69999.00),
('Dell Laptop Inspiron',3,55000.00),
('HP Pavilion Laptop',3,62000.00),
('Sony Bravia TV',4,75000.00),
('Canon DSLR Camera',5,45000.00),
('Boat Headphones',6,2500.00),
('Apple Watch',7,35000.00),
('LG Refrigerator',9,48000.00),
('Samsung Washing Machine',10,42000.00),
('LG Microwave Oven',11,15000.00),
('Voltas AC',12,38000.00),
('Wooden Sofa',13,55000.00),
('King Size Bed',14,60000.00),
('Dining Table',15,45000.00),
('Office Chair',16,8000.00),
('Non Stick Cookware',19,3500.00),
('Steel Utensils Set',20,5000.00),
('Basmati Rice 5kg',22,600.00),
('Whole Wheat Flour',23,400.00),
('Toor Dal 1kg',24,150.00),
('Red Chilli Powder',25,120.00),
('Potato Chips',26,50.00),
('Cold Drink Bottle',27,60.00),
('Milk Packet',28,70.00),
('Chocolate Cake',29,500.00),
('Frozen Pizza',30,350.00),
('Mens Shirt',32,1200.00),
('Womens Dress',33,2500.00),
('Kids T Shirt',34,700.00),
('Sports Shoes',35,3000.00),
('Cricket Jersey',36,1500.00),
('Leather Bag',38,4000.00),
('Titan Watch',39,5000.00),
('Gold Necklace',40,85000.00),
('Face Cream',41,800.00),
('Hair Shampoo',42,400.00),
('Lipstick',43,600.00),
('Body Lotion',44,350.00),
('Novel Book',46,500.00),
('Notebook Set',47,300.00),
('School Bag',48,1200.00),
('Printer Paper',49,500.00),
('Remote Car Toy',50,900.00),
('Chess Board',51,700.00),
('Football',52,800.00),
('Yoga Mat',53,1000.00),
('Car Seat Cover',54,2500.00),
('Brake Pads',55,1500.00),
('Bike Helmet',56,2000.00),
('Screwdriver Set',57,600.00),
('Electric Drill',58,3500.00),
('LED Bulb',60,150.00),
('Dog Food',62,1200.00),
('Cat Food',63,900.00),
('Flower Plant',64,300.00),
('Indoor Plant Pot',65,500.00),
('Wall Painting',66,2500.00),
('Curtain Set',67,2000.00),
('Bedsheet Set',68,1500.00),
('Mixer Grinder',69,4500.00),
('Floor Cleaner',70,250.00),
('Detergent Powder',71,600.00),
('First Aid Kit',72,800.00),
('Health Supplement',74,1200.00),
('Travel Bag',77,3500.00),
('Suitcase',78,5000.00),
('Mobile Charger',79,800.00),
('USB Cable',80,400.00),
('Laptop Printer',81,12000.00),
('WiFi Router',82,2500.00),
('Antivirus Software',83,1500.00),
('Gaming Console',84,45000.00),
('Video Game CD',85,3000.00),
('Guitar',86,8000.00),
('Guitar Strings',87,500.00),
('Painting Kit',88,1200.00),
('Craft Paper Set',89,400.00),
('Birthday Gift Pack',90,800.00),
('Party Decoration Set',91,1500.00),
('Christmas Lights',92,1000.00),
('Office Desk',93,7000.00),
('Industrial Machine',94,55000.00),
('Construction Hammer',95,700.00),
('Farming Tools',96,3000.00),
('Organic Honey',97,600.00),
('Luxury Perfume',98,5000.00),
('Premium Watch',99,25000.00),
('General Product',100,1000.00),
('Smart Speaker',1,5000.00),
('Tablet Device',2,25000.00),
('Gaming Laptop',3,90000.00),
('LED Television',4,40000.00),
('Action Camera',5,15000.00),
('Wireless Earbuds',6,3000.00),
('Fitness Smart Band',7,4000.00),
('Air Cooler',12,12000.00),
('Bookshelf',13,8000.00),
('Pressure Cooker',19,2500.00);
select * from Products;

#========================Table Orders=====================

create table Orders(order_id int primary key auto_increment,
customer_id int,foreign key (customer_id) references Customers(customer_id),
employee_id int,foreign key (employee_id) references Employees(employee_id), order_date date);

INSERT INTO Orders (customer_id, employee_id, order_date) VALUES
(1,1,'2024-01-05'),
(2,2,'2024-01-10'),
(3,3,'2024-01-15'),
(4,4,'2024-01-20'),
(5,5,'2024-01-25'),
(6,6,'2024-02-01'),
(7,7,'2024-02-05'),
(8,8,'2024-02-10'),
(9,9,'2024-02-15'),
(10,10,'2024-02-20'),
(11,11,'2024-03-01'),
(12,12,'2024-03-05'),
(13,13,'2024-03-10'),
(14,14,'2024-03-15'),
(15,15,'2024-03-20'),
(16,16,'2024-04-01'),
(17,17,'2024-04-05'),
(18,18,'2024-04-10'),
(19,19,'2024-04-15'),
(20,20,'2024-04-20'),
(21,21,'2024-05-01'),
(22,22,'2024-05-05'),
(23,23,'2024-05-10'),
(24,24,'2024-05-15'),
(25,25,'2024-05-20'),
(26,26,'2024-06-01'),
(27,27,'2024-06-05'),
(28,28,'2024-06-10'),
(29,29,'2024-06-15'),
(30,30,'2024-06-20'),
(31,31,'2024-07-01'),
(32,32,'2024-07-05'),
(33,33,'2024-07-10'),
(34,34,'2024-07-15'),
(35,35,'2024-07-20'),
(36,36,'2024-08-01'),
(37,37,'2024-08-05'),
(38,38,'2024-08-10'),
(39,39,'2024-08-15'),
(40,40,'2024-08-20'),
(41,41,'2024-09-01'),
(42,42,'2024-09-05'),
(43,43,'2024-09-10'),
(44,44,'2024-09-15'),
(45,45,'2024-09-20'),
(46,46,'2024-10-01'),
(47,47,'2024-10-05'),
(48,48,'2024-10-10'),
(49,49,'2024-10-15'),
(50,50,'2024-10-20');
select * from Orders;

#===================Table OrderDetails=====================

create table OrderDetails(order_detail_id int primary key auto_increment, 
order_id int,foreign key (order_id) references Orders(order_id),
product_id int,foreign key (product_id) references Products(product_id), quantity int, sales_amount decimal(10,2));
desc OrderDetails;

INSERT INTO OrderDetails (order_id, product_id, quantity, sales_amount) VALUES
(101,1,2,159998.00),
(102,2,1,69999.00),
(103,3,1,55000.00),
(104,4,2,124000.00),
(105,5,1,75000.00),
(106,6,1,45000.00),
(107,7,3,7500.00),
(108,8,1,35000.00),
(109,9,1,48000.00),
(110,10,2,84000.00),
(111,11,1,15000.00),
(112,12,1,38000.00),
(113,13,1,55000.00),
(114,14,1,60000.00),
(115,15,2,90000.00),
(116,16,3,24000.00),
(117,17,2,7000.00),
(118,18,1,5000.00),
(119,19,5,3000.00),
(120,20,4,1600.00),
(121,21,3,450.00),
(122,22,2,240.00),
(123,23,5,250.00),
(124,24,3,210.00),
(125,25,2,240.00),
(126,26,1,500.00),
(127,27,2,700.00),
(128,28,3,3600.00),
(129,29,1,2500.00),
(130,30,2,1400.00),
(131,31,1,3000.00),
(132,32,2,3000.00),
(133,33,1,4000.00),
(134,34,1,5000.00),
(135,35,2,170000.00),
(136,36,3,2400.00),
(137,37,2,800.00),
(138,38,1,600.00),
(139,39,2,700.00),
(140,40,1,500.00),
(141,41,2,1600.00),
(142,42,3,1200.00),
(143,43,1,600.00),
(144,44,2,700.00),
(145,45,1,1200.00),
(146,46,2,1000.00),
(147,47,3,900.00),
(148,48,1,1200.00),
(149,49,2,1000.00),
(150,50,1,900.00);
SELECT order_id FROM Orders;
SELECT * FROM Products;
select * from OrderDetails;

#==============RetailHub SQL Expert Questions (50)==================

-- 1. List all products sorted by price in descending order.
select * from Products order by price desc;

-- 2. Find customers from Mumbai.
select customer_name from Customers where city='Mumbai';

-- 3. Show employees hired after 2024-01-01.
select * from Employees where hire_date >'2024-01-01';

-- 4. Display products costing between ₹500 and ₹2000.
select * from Products where price between 500 and 2000;

-- 5. List distinct customer cities.
select distinct city from Customers;

-- 6. Find products whose name starts with 's';.
select * from Products where product_name like 's%';

-- 7. Count customers in each city.
select city,count(*) customers from Customers group by city;

-- 8. Find average employee salary per store.
select store_id,avg(salary) average_salary from Employees group by store_id;

select s.store_name, avg(e.salary) as average_Salary
from Employees e join Stores s 
on e.store_id=s.store_id
group by s.store_name;

-- 9. Show categories having more than 10 products.
select category_id,count(*) categories from Products group by category_id having count(*)>10;

select c.category_name, COUNT(*) AS product_count
from Categories c
join Products p
on c.category_id = p.category_id
group by c.category_name
having COUNT(*) > 10;

-- 10. Find total sales per order.
select o.order_id,sum(d.sales_amount) total_sales
from OrderDetails d join Orders o 
on d.order_id=o.order_id
group by o.order_id;

-- 11. Find stores where average salary exceeds ₹60,000.
select s.store_name,avg(e.salary) average_salary from Employees e join Stores s 
on e.store_id=s.store_id
group by s.store_name
having avg(e.salary)>60000;

-- 12. Show cities with at least 5 customers.
select city,count(*) as total_customer from Customers
group by city
having count(*)>=5;

-- 13. Display orders with customer names.
select o.*,c.customer_name from Customers c join Orders o 
on c.customer_id=o.customer_id;

-- 14. Show products with category names.
select p.*,c.category_name from Products p join Categories c
on p.category_id=c.category_id;

-- 15. Find employees and their store names.
select e.*,s.store_name from Employees e join Stores s
on e.store_id=s.store_id;

-- 16. List order details with product names.
select od.*,p.product_name from OrderDetails od join Products p
on od.product_id=p.product_id;

-- 17. Find customers and employees involved in each order.
select o.*, c.customer_name,e.employee_name
from Orders o join Customers c
on o.customer_id=c.customer_id join Employees e
on o.employee_id=e.employee_id;


-- 18. Display stores and total employee count.
select s.store_name,count(e.employee_id) as total_employee
from Employees e join Stores s 
on e.store_id=s.store_id
group by s.store_name;
 
-- 19. Show products that have never been ordered.
select p.product_id,p.product_name 
from Products p left join OrderDetails o
on p.product_id=o.product_id
where o.product_id is null;

-- 20. Find customers who have placed orders.
SELECT DISTINCT c.*
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id;

-- 21. Find products priced above the average product price.
select * from Products where price>(select Avg(price) from Products);

-- 22. Find employees earning more than the company average salary.
select * from Employees where salary>(select avg(salary) as company_avg_salary from Employees);

-- 23. Show customers from cities where stores exist.
select * from Customers where exists(select city from Stores);
select customer_id,customer_name,city from Customers
where city in (select city from Stores);

-- 24. Find orders having sales greater than the overall average order value.
select * from OrderDetails where sales_amount>(select avg(sales_amount) from OrderDetails);

-- 25. Find the highest-priced product in each category.
select p.product_id,p.product_name,c.category_name,max(p.price) as price from Products p left join Categories c
on p.category_id=c.category_id
group by c.category_name, p.product_id,p.product_name;

SELECT 
    product_id,
    product_name,
    category_id,
    price
FROM Products p
WHERE price = (
    SELECT MAX(price)
    FROM Products
    WHERE category_id = p.category_id
);

-- 26. Find customers who placed more orders than the average customer.
select customer_id,customer_name,city from Customers where customer_id >(select avg(customer_id) from Orders);

-- 27. Show employees working in the same store as the highest-paid employee.
SELECT employee_id,employee_name,store_id,salary
FROM Employees e
WHERE salary = (
    SELECT MAX(salary)
    FROM Employees
    WHERE store_id = e.store_id
);

SELECT 
    e.employee_id,
    e.employee_name,
    e.salary,
    s.store_name
FROM Employees e
JOIN Stores s
ON e.store_id = s.store_id
JOIN (
    SELECT store_id
    FROM Employees
    WHERE salary = (
        SELECT MAX(salary)
        FROM Employees
    )
) h
ON e.store_id = h.store_id;

-- 28. Find categories with total sales above ₹1,00,000.
select c.category_name , sum(p.price) as total_sales
from Products p join Categories c 
on p.category_id=c.category_id
group by c.category_name
having sum(p.price)>100000;

-- 29. Use a CTE to calculate total sales per customer.
with calculte_sale as(
		 select customer_id , customer_name,sum(customer_id) over(order by customer_id ) as total_sales
         from Customers)
select * from calculte_sale;
         

-- 30. Use a CTE to find top 5 customers by sales.
with customers_sale as(
			select c.customer_name,sum(od.sales_amount) as total_amount 
            from Customers c join Orders o
            on c.customer_id=o.customer_id
            join OrderDetails od on od.order_id=o.order_id
            group by c.customer_name)
            select * from customers_sale order by total_amount limit 5 ;

-- 31. Use a CTE to calculate monthly sales.
with monthly_sale as(
					select month(o.order_date) as month_sale,
                    sum(od.sales_amount) as total_sales
                    from Orders o join OrderDetails od
                    on o.order_id=od.order_id
                    group by month(o.order_date))
select * from monthly_sale;
                
-- 32. Find products contributing more than 5% of total sales.
SELECT
    product_id,
    SUM(sales_amount) AS product_sales,
    (SUM(sales_amount) * 100.0 /
        (SELECT SUM(sales_amount) FROM OrderDetails)) AS sales_percentage
FROM OrderDetails
GROUP BY product_id
HAVING (SUM(sales_amount) * 100.0 /
        (SELECT SUM(sales_amount) FROM OrderDetails)) > 5;
        
-- 33. Find stores whose sales exceed the company average store sales.
with store_sales as(
			select o.order_id, sum(od.sales_amount) as total_sale
            from Orders o join  OrderDetails od
            on o.order_id=od.order_id group by o.order_id)
		select  * from store_sales
        where total_sale>(select avg(total_sale) from store_sales);
        
-- 34. Generate a recursive sequence from 1 to 12.
WITH RECURSIVE numbers AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1
    FROM numbers
    WHERE n < 12
)
SELECT *
FROM numbers;

DELIMITER $$
CREATE PROCEDURE GenerateSequence()
BEGIN
    DECLARE n INT DEFAULT 1;

    WHILE n <= 12 DO
        SELECT n AS Number;
        SET n = n + 1;
    END WHILE;
END $$

DELIMITER ;
CALL GenerateSequence();

-- 35. Calculate running sales by month using a CTE.
 with running_sales as(
				select month(o.order_date) as month_sale,
                sum(od.sales_amount) as total_sale
                from Orders o join OrderDetails od
                on o.order_id= od.order_id
                group by month(o.order_date))
	select month_sale, total_sale
    ,sum(total_sale) over(order by month_sale) as running_sale from running_sales ;

-- 36. Rank employees by salary.
select *, rank() over(order by salary desc) rank_emp from Employees;

-- 37. Find top 3 highest-paid employees per store.
SELECT *
FROM (
    SELECT employee_id,
           employee_name,
           store_id,
           salary,
           DENSE_RANK() OVER (
               PARTITION BY store_id
               ORDER BY salary DESC
           ) AS rnk
    FROM Employees
) AS t
WHERE rnk <= 3;

-- 38. Calculate cumulative sales per customer.
SELECT
    o.customer_id,
    o.order_date,
    SUM(od.sales_amount) AS order_sales,
    SUM(SUM(od.sales_amount))
        OVER (
            PARTITION BY o.customer_id
            ORDER BY o.order_date
        ) AS cumulative_sales
FROM Orders o
JOIN OrderDetails od
    ON o.order_id = od.order_id
GROUP BY o.customer_id, o.order_date;

-- 39. Show previous order date for each customer.
select customer_id,order_date,lag(order_date) 
over(partition by customer_id order by order_date) as previous_date from Orders;

-- 40. Show next order date for each customer.
select customer_id,order_date,lead(order_date) 
over(partition by customer_id order by order_date) as next_date from Orders;

-- 41. Divide products into 4 price quartiles.
SELECT
    product_id,
    product_name,
    price,
    NTILE(4) OVER (ORDER BY price) AS price_quartile
FROM Products;

-- 42. Find each employee’s salary difference from store average.
select employee_id, employee_name, store_id, salary, 
 salary -avg(salary) over(partition by store_id) as  salary_difference from Employees;
 

-- 43. Calculate percentage contribution of each product to total sales.
SELECT
    product_id,
    SUM(sales_amount) AS total_sales,
    SUM(sales_amount) * 100.0 /
    SUM(SUM(sales_amount)) OVER () AS contribution_percent
FROM OrderDetails
GROUP BY product_id;

-- 44. Create a view for customer total sales.
create view customer_total_sale as
select o.customer_id,sum(od.sales_amount) as total_sale
from Orders o join OrderDetails od 
on o.order_id=od.order_id 
group by o.customer_id;

-- 45. Query the customer sales view.
select * from customer_total_sale;

-- 46. Create a view for product performance.
create view product_performance as 
select product_id ,sum(quantity) as total_quantity,
sum(sales_amount) as total_sale from OrderDetails group by product_id;

select * from product_performance;

-- 47. Find orders placed in the current month.
select * from Orders where month(order_date)=month(current_date())
and year(order_date)=year(current_date());

-- 48. Calculate employee tenure in years.
select employee_id,employee_name,
    TIMESTAMPDIFF(YEAR, hire_date, CURDATE()) AS tenure_years
FROM Employees;

-- 49. Find monthly sales trend.
SELECT
    YEAR(o.order_date) AS year,
    MONTH(o.order_date) AS month,
    SUM(od.sales_amount) AS total_sales
FROM Orders o
JOIN OrderDetails od
    ON o.order_id = od.order_id
GROUP BY YEAR(o.order_date), MONTH(o.order_date)
ORDER BY year, month;

-- 50. Find orders placed in the last 30 days.
select * from Orders where order_date >= current_date() - interval 30 day;


