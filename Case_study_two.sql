#Professional SQL Case Study: MediCare Hospital Management System
-- Business Scenario
-- MediCare Hospital operates multiple branches. Analyze patients, doctors, appointments,
-- treatments, medicines and billing using SQL.


create database case_study_2;
use case_study_2;


#===============Data Modeling===============================
create table Hospitals(
	hospital_id int primary key auto_increment, 
	hospital_name varchar(20) not null, 
	city varchar(50), 
	state varchar(25)
    );

create table Departments(
	department_id int primary key auto_increment, 
	department_name varchar(50), 
	hospital_id int, 
    foreign key (hospital_id) references Hospitals(hospital_id)
    );
    
create table Doctors(
	doctor_id int primary key auto_increment, 
    doctor_name varchar(25), 
    specialization varchar(50), 
	salary decimal(10,2), 
    hire_date date, 
	department_id int, 
    foreign key (department_id) references Departments(department_id));
    
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_name VARCHAR(50) NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    age INT CHECK (age > 0),
    city VARCHAR(20) NOT NULL
);

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

CREATE TABLE Treatments (
    treatment_id INT PRIMARY KEY auto_increment,
    appointment_id INT,
    treatment_name VARCHAR(100),
    treatment_cost DECIMAL(10,2),
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);

CREATE TABLE Medicines (
    medicine_id INT PRIMARY KEY auto_increment,
    medicine_name VARCHAR(100),
    manufacturer VARCHAR(100),
    price DECIMAL(10,2)
);

CREATE TABLE Prescriptions (
    prescription_id INT PRIMARY KEY auto_increment,
    treatment_id INT,
    medicine_id INT,
    quantity INT,
    FOREIGN KEY (treatment_id) REFERENCES Treatments(treatment_id),
    FOREIGN KEY (medicine_id) REFERENCES Medicines(medicine_id)
);

CREATE TABLE Bills (
    bill_id INT PRIMARY KEY auto_increment,
    patient_id INT,
    bill_date DATE,
    total_amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    foreign key (patient_id) references Patients(patient_id)
);




# 1.Hospital table 

create table Hospitals(
	hospital_id int primary key auto_increment, 
	hospital_name varchar(20) not null, 
	city varchar(50), 
	state varchar(25)
    );
INSERT INTO Hospitals (hospital_name, city, state) VALUES
('Hospital 1','Mumbai','Maharashtra'),
('Hospital 2','Pune','Maharashtra'),
('Hospital 3','Nagpur','Maharashtra'),
('Hospital 4','Nashik','Maharashtra'),
('Hospital 5','Aurangabad','Maharashtra'),
('Hospital 6','Solapur','Maharashtra'),
('Hospital 7','Kolhapur','Maharashtra'),
('Hospital 8','Thane','Maharashtra'),
('Hospital 9','Amravati','Maharashtra'),
('Hospital 10','Jalgaon','Maharashtra'),
('Hospital 11','Mumbai','Maharashtra'),
('Hospital 12','Pune','Maharashtra'),
('Hospital 13','Nagpur','Maharashtra'),
('Hospital 14','Nashik','Maharashtra'),
('Hospital 15','Aurangabad','Maharashtra'),
('Hospital 16','Solapur','Maharashtra'),
('Hospital 17','Kolhapur','Maharashtra'),
('Hospital 18','Thane','Maharashtra'),
('Hospital 19','Amravati','Maharashtra'),
('Hospital 20','Jalgaon','Maharashtra'),
('Hospital 21','Mumbai','Maharashtra'),
('Hospital 22','Pune','Maharashtra'),
('Hospital 23','Nagpur','Maharashtra'),
('Hospital 24','Nashik','Maharashtra'),
('Hospital 25','Aurangabad','Maharashtra'),
('Hospital 26','Solapur','Maharashtra'),
('Hospital 27','Kolhapur','Maharashtra'),
('Hospital 28','Thane','Maharashtra'),
('Hospital 29','Amravati','Maharashtra'),
('Hospital 30','Jalgaon','Maharashtra'),
('Hospital 31','Mumbai','Maharashtra'),
('Hospital 32','Pune','Maharashtra'),
('Hospital 33','Nagpur','Maharashtra'),
('Hospital 34','Nashik','Maharashtra'),
('Hospital 35','Aurangabad','Maharashtra'),
('Hospital 36','Solapur','Maharashtra'),
('Hospital 37','Kolhapur','Maharashtra'),
('Hospital 38','Thane','Maharashtra'),
('Hospital 39','Amravati','Maharashtra'),
('Hospital 40','Jalgaon','Maharashtra'),
('Hospital 41','Mumbai','Maharashtra'),
('Hospital 42','Pune','Maharashtra'),
('Hospital 43','Nagpur','Maharashtra'),
('Hospital 44','Nashik','Maharashtra'),
('Hospital 45','Aurangabad','Maharashtra'),
('Hospital 46','Solapur','Maharashtra'),
('Hospital 47','Kolhapur','Maharashtra'),
('Hospital 48','Thane','Maharashtra'),
('Hospital 49','Amravati','Maharashtra'),
('Hospital 50','Jalgaon','Maharashtra'),
('Hospital 51','Mumbai','Maharashtra'),
('Hospital 52','Pune','Maharashtra'),
('Hospital 53','Nagpur','Maharashtra'),
('Hospital 54','Nashik','Maharashtra'),
('Hospital 55','Aurangabad','Maharashtra'),
('Hospital 56','Solapur','Maharashtra'),
('Hospital 57','Kolhapur','Maharashtra'),
('Hospital 58','Thane','Maharashtra'),
('Hospital 59','Amravati','Maharashtra'),
('Hospital 60','Jalgaon','Maharashtra'),
('Hospital 61','Mumbai','Maharashtra'),
('Hospital 62','Pune','Maharashtra'),
('Hospital 63','Nagpur','Maharashtra'),
('Hospital 64','Nashik','Maharashtra'),
('Hospital 65','Aurangabad','Maharashtra'),
('Hospital 66','Solapur','Maharashtra'),
('Hospital 67','Kolhapur','Maharashtra'),
('Hospital 68','Thane','Maharashtra'),
('Hospital 69','Amravati','Maharashtra'),
('Hospital 70','Jalgaon','Maharashtra'),
('Hospital 71','Mumbai','Maharashtra'),
('Hospital 72','Pune','Maharashtra'),
('Hospital 73','Nagpur','Maharashtra'),
('Hospital 74','Nashik','Maharashtra'),
('Hospital 75','Aurangabad','Maharashtra'),
('Hospital 76','Solapur','Maharashtra'),
('Hospital 77','Kolhapur','Maharashtra'),
('Hospital 78','Thane','Maharashtra'),
('Hospital 79','Amravati','Maharashtra'),
('Hospital 80','Jalgaon','Maharashtra'),
('Hospital 81','Mumbai','Maharashtra'),
('Hospital 82','Pune','Maharashtra'),
('Hospital 83','Nagpur','Maharashtra'),
('Hospital 84','Nashik','Maharashtra'),
('Hospital 85','Aurangabad','Maharashtra'),
('Hospital 86','Solapur','Maharashtra'),
('Hospital 87','Kolhapur','Maharashtra'),
('Hospital 88','Thane','Maharashtra'),
('Hospital 89','Amravati','Maharashtra'),
('Hospital 90','Jalgaon','Maharashtra'),
('Hospital 91','Mumbai','Maharashtra'),
('Hospital 92','Pune','Maharashtra'),
('Hospital 93','Nagpur','Maharashtra'),
('Hospital 94','Nashik','Maharashtra'),
('Hospital 95','Aurangabad','Maharashtra'),
('Hospital 96','Solapur','Maharashtra'),
('Hospital 97','Kolhapur','Maharashtra'),
('Hospital 98','Thane','Maharashtra'),
('Hospital 99','Amravati','Maharashtra'),
('Hospital 100','Jalgaon','Maharashtra');
select * from Hospitals;    

# 2.Department table

create table Departments(
	department_id int primary key auto_increment, 
	department_name varchar(50), 
	hospital_id int, 
    foreign key (hospital_id) references Hospitals(hospital_id)
    );
    
  INSERT INTO Departments (department_name, hospital_id) VALUES
('Cardiology',1),
('Neurology',2),
('Orthopedics',3),
('Pediatrics',4),
('Dermatology',5),
('ENT',6),
('Gynecology',7),
('Oncology',8),
('Radiology',9),
('Emergency',10),
('General Medicine',11),
('Surgery',12),
('Ophthalmology',13),
('Psychiatry',14),
('Urology',15),
('Dental',16),
('Gastroenterology',17),
('Pulmonology',18),
('Nephrology',19),
('Physiotherapy',20),
('Cardiology',21),
('Neurology',22),
('Orthopedics',23),
('Pediatrics',24),
('Dermatology',25),
('ENT',26),
('Gynecology',27),
('Oncology',28),
('Radiology',29),
('Emergency',30),
('General Medicine',31),
('Surgery',32),
('Ophthalmology',33),
('Psychiatry',34),
('Urology',35),
('Dental',36),
('Gastroenterology',37),
('Pulmonology',38),
('Nephrology',39),
('Physiotherapy',40);  


# 3. Doctors table 

create table Doctors(
	doctor_id int primary key auto_increment, 
    doctor_name varchar(25), 
    specialization varchar(50), 
	salary decimal(10,2), 
    hire_date date, 
	department_id int, 
    foreign key (department_id) references Departments(department_id));
    
INSERT INTO Doctors 
(doctor_name, specialization, salary, hire_date, department_id) 
VALUES
('Dr. Amit Sharma','Cardiologist',85000.00,'2018-01-15',1),
('Dr. Priya Patel','Neurologist',90000.00,'2017-03-20',2),
('Dr. Rahul Verma','Orthopedic',75000.00,'2019-05-10',3),
('Dr. Sneha Joshi','Pediatrician',70000.00,'2020-02-18',4),
('Dr. Arjun Mehta','Dermatologist',65000.00,'2018-07-12',5),
('Dr. Neha Singh','ENT Specialist',72000.00,'2019-09-25',6),
('Dr. Kiran Rao','Gynecologist',88000.00,'2016-11-30',7),
('Dr. Vivek Kumar','Oncologist',95000.00,'2015-04-14',8),
('Dr. Pooja Shah','Radiologist',78000.00,'2021-06-05',9),
('Dr. Raj Malhotra','Emergency Physician',82000.00,'2017-08-19',10),
('Dr. Mohan Das','General Physician',60000.00,'2022-01-10',11),
('Dr. Anjali Nair','Surgeon',92000.00,'2016-12-01',12),
('Dr. Sameer Kulkarni','Ophthalmologist',67000.00,'2019-03-15',13),
('Dr. Riya Kapoor','Psychiatrist',73000.00,'2020-08-22',14),
('Dr. Vikram Yadav','Urologist',86000.00,'2018-10-17',15),
('Dr. Meera Iyer','Dentist',58000.00,'2021-02-25',16),
('Dr. Suresh Patil','Gastroenterologist',89000.00,'2017-05-30',17),
('Dr. Kavita Rao','Pulmonologist',81000.00,'2019-12-12',18),
('Dr. Nitin Joshi','Nephrologist',87000.00,'2016-06-08',19),
('Dr. Alok Gupta','Physiotherapist',55000.00,'2022-04-20',20),
('Dr. Ramesh Joshi','Cardiologist',88000.00,'2018-02-14',21),
('Dr. Asha Verma','Neurologist',91000.00,'2017-07-18',22),
('Dr. Deepak Shah','Orthopedic',76000.00,'2019-11-25',23),
('Dr. Kavya Nair','Pediatrician',71000.00,'2020-03-12',24),
('Dr. Manoj Rao','Dermatologist',66000.00,'2018-09-10',25),
('Dr. Pankaj Singh','ENT Specialist',74000.00,'2019-04-22',26),
('Dr. Shweta Patil','Gynecologist',89000.00,'2016-08-15',27),
('Dr. Harish Gupta','Oncologist',96000.00,'2015-12-20',28),
('Dr. Nisha Kapoor','Radiologist',79000.00,'2021-05-11',29),
('Dr. Vinod Kumar','Emergency Physician',83000.00,'2017-10-05',30),
('Dr. Ajay Mehta','General Physician',62000.00,'2022-02-16',31),
('Dr. Priti Shah','Surgeon',93000.00,'2016-09-28',32),
('Dr. Rohit Sharma','Ophthalmologist',68000.00,'2019-06-14',33),
('Dr. Tina Rao','Psychiatrist',75000.00,'2020-10-19',34),
('Dr. Sameer Joshi','Urologist',87000.00,'2018-12-08',35),
('Dr. Rekha Iyer','Dentist',59000.00,'2021-07-21',36),
('Dr. Yash Patil','Gastroenterologist',90000.00,'2017-11-17',37),
('Dr. Monica Das','Pulmonologist',82000.00,'2019-08-30',38),
('Dr. Kunal Shah','Nephrologist',88000.00,'2016-04-25',39),
('Dr. Priyanka Rao','Physiotherapist',56000.00,'2022-06-10',40);    


# 4.Patients table 

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_name VARCHAR(50) NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    age INT CHECK (age > 0),
    city VARCHAR(20) NOT NULL
);

INSERT INTO Patients 
(patient_name, gender, age, city) 
VALUES
('Aarav Sharma','Male',25,'Mumbai'),
('Priya Patel','Female',30,'Pune'),
('Rahul Verma','Male',40,'Nagpur'),
('Sneha Joshi','Female',28,'Nashik'),
('Arjun Mehta','Male',35,'Solapur'),
('Neha Singh','Female',32,'Thane'),
('Kiran Rao','Male',45,'Kolhapur'),
('Pooja Shah','Female',27,'Amravati'),
('Vivek Kumar','Male',50,'Jalgaon'),
('Riya Kapoor','Female',22,'Mumbai'),
('Amit Deshmukh','Male',38,'Pune'),
('Anjali Nair','Female',29,'Nagpur'),
('Rohit Patil','Male',33,'Nashik'),
('Kavita More','Female',41,'Solapur'),
('Suresh Yadav','Male',55,'Thane'),
('Meera Iyer','Female',36,'Kolhapur'),
('Nitin Joshi','Male',48,'Amravati'),
('Shweta Rao','Female',26,'Jalgaon'),
('Manoj Gupta','Male',52,'Mumbai'),
('Tina Sharma','Female',31,'Pune'),
('Raj Malhotra','Male',44,'Nagpur'),
('Asha Kulkarni','Female',39,'Nashik'),
('Deepak Shah','Male',34,'Solapur'),
('Kavya Nair','Female',24,'Thane'),
('Harish Patil','Male',57,'Kolhapur'),
('Nisha Verma','Female',37,'Amravati'),
('Vikram Singh','Male',46,'Jalgaon'),
('Priti Mehta','Female',29,'Mumbai'),
('Sameer Joshi','Male',42,'Pune'),
('Rekha Rao','Female',53,'Nagpur'),
('Yash Patil','Male',21,'Nashik'),
('Monica Das','Female',35,'Solapur'),
('Kunal Shah','Male',49,'Thane'),
('Priyanka Rao','Female',27,'Kolhapur'),
('Alok Gupta','Male',56,'Amravati'),
('Ramesh Joshi','Male',60,'Jalgaon'),
('Aarti Sharma','Female',23,'Mumbai'),
('Sanjay Patel','Male',47,'Pune'),
('Divya Verma','Female',33,'Nagpur'),
('Mohan Singh','Male',54,'Nashik'),
('Neelam Joshi','Female',45,'Solapur'),
('Aditya Mehta','Male',26,'Thane'),
('Sonali Shah','Female',38,'Kolhapur'),
('Vijay Kumar','Male',51,'Amravati'),
('Radhika Rao','Female',34,'Jalgaon'),
('Anil Patil','Male',43,'Mumbai'),
('Swati More','Female',28,'Pune'),
('Rakesh Yadav','Male',58,'Nagpur'),
('Komal Nair','Female',25,'Nashik'),
('Tarun Gupta','Male',36,'Solapur'),
('Maya Iyer','Female',40,'Thane'),
('Siddharth Rao','Male',32,'Kolhapur'),
('Preeti Shah','Female',44,'Amravati'),
('Gaurav Mehta','Male',39,'Jalgaon'),
('Namrata Joshi','Female',30,'Mumbai'),
('Ajay Kumar','Male',52,'Pune'),
('Shilpa Patil','Female',37,'Nagpur'),
('Vishal Sharma','Male',41,'Nashik'),
('Renu Verma','Female',29,'Solapur'),
('Prakash Singh','Male',63,'Thane'),
('Snehal More','Female',26,'Kolhapur'),
('Hemant Rao','Male',48,'Amravati'),
('Payal Shah','Female',31,'Jalgaon'),
('Dinesh Gupta','Male',55,'Mumbai'),
('Ritu Nair','Female',35,'Pune'),
('Sachin Patil','Male',46,'Nagpur'),
('Madhuri Joshi','Female',42,'Nashik'),
('Vivek Sharma','Male',28,'Solapur'),
('Kajal Mehta','Female',33,'Thane'),
('Ashok Rao','Male',59,'Kolhapur'),
('Anita Shah','Female',45,'Amravati'),
('Mahesh Kumar','Male',50,'Jalgaon'),
('Bhavna Patel','Female',27,'Mumbai'),
('Chirag Verma','Male',38,'Pune'),
('Isha Singh','Female',24,'Nagpur'),
('Ravi Joshi','Male',61,'Nashik'),
('Deepa Rao','Female',36,'Solapur'),
('Sahil Mehta','Male',29,'Thane'),
('Nandini Shah','Female',41,'Kolhapur'),
('Vikas Gupta','Male',53,'Amravati'),
('Kriti Nair','Female',32,'Jalgaon'),
('Manish Patil','Male',47,'Mumbai'),
('Sonia Sharma','Female',39,'Pune'),
('Ankit Verma','Male',34,'Nagpur'),
('Roshni Singh','Female',28,'Nashik'),
('Karan Mehta','Male',43,'Solapur'),
('Vaishali Rao','Female',37,'Thane'),
('Suresh Patil','Male',56,'Kolhapur'),
('Pallavi Joshi','Female',30,'Amravati'),
('Rohan Shah','Male',25,'Jalgaon'),
('Archana Gupta','Female',48,'Mumbai'),
('Vishnu Kumar','Male',52,'Pune'),
('Simran Nair','Female',26,'Nagpur'),
('Ritesh Patil','Male',44,'Nashik'),
('Anu Verma','Female',35,'Solapur'),
('Kishor Singh','Male',60,'Thane'),
('Sneha Mehta','Female',29,'Kolhapur'),
('Dev Rao','Male',31,'Amravati'),
('Jyoti Shah','Female',46,'Jalgaon');

# 5.Appointments 

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);
select patient_id from Patients;
select doctor_id from Doctors;
INSERT INTO Appointments
(patient_id, doctor_id, appointment_date, status)
VALUES
(1,1,'2025-01-05','Completed'),
(2,2,'2025-01-06','Completed'),
(3,3,'2025-01-07','Pending'),
(4,4,'2025-01-08','Completed'),
(5,5,'2025-01-09','Cancelled'),
(6,6,'2025-01-10','Completed'),
(7,7,'2025-01-11','Pending'),
(8,8,'2025-01-12','Completed'),
(9,9,'2025-01-13','Completed'),
(10,10,'2025-01-14','Cancelled'),
(11,11,'2025-01-15','Completed'),
(12,12,'2025-01-16','Pending'),
(13,13,'2025-01-17','Completed'),
(14,14,'2025-01-18','Completed'),
(15,15,'2025-01-19','Cancelled'),
(16,16,'2025-01-20','Completed'),
(17,17,'2025-01-21','Pending'),
(18,18,'2025-01-22','Completed'),
(19,19,'2025-01-23','Completed'),
(20,20,'2025-01-24','Cancelled'),
(21,21,'2025-02-01','Completed'),
(22,22,'2025-02-02','Pending'),
(23,23,'2025-02-03','Completed'),
(24,24,'2025-02-04','Completed'),
(25,25,'2025-02-05','Cancelled'),
(26,26,'2025-02-06','Completed'),
(27,27,'2025-02-07','Pending'),
(28,28,'2025-02-08','Completed'),
(29,29,'2025-02-09','Completed'),
(30,30,'2025-02-10','Cancelled'),
(31,31,'2025-02-11','Completed'),
(32,32,'2025-02-12','Pending'),
(33,33,'2025-02-13','Completed'),
(34,34,'2025-02-14','Completed'),
(35,35,'2025-02-15','Cancelled'),
(36,36,'2025-02-16','Completed'),
(37,37,'2025-02-17','Pending'),
(38,38,'2025-02-18','Completed'),
(39,39,'2025-02-19','Completed'),
(40,40,'2025-02-20','Cancelled'),
(41,1,'2025-03-01','Completed'),
(42,2,'2025-03-02','Pending'),
(43,3,'2025-03-03','Completed'),
(44,4,'2025-03-04','Completed'),
(45,5,'2025-03-05','Cancelled'),
(46,6,'2025-03-06','Completed'),
(47,7,'2025-03-07','Pending'),
(48,8,'2025-03-08','Completed'),
(49,9,'2025-03-09','Completed'),
(50,10,'2025-03-10','Cancelled'),
(51,11,'2025-03-11','Completed'),
(52,12,'2025-03-12','Pending'),
(53,13,'2025-03-13','Completed'),
(54,14,'2025-03-14','Completed'),
(55,15,'2025-03-15','Cancelled'),
(56,16,'2025-03-16','Completed'),
(57,17,'2025-03-17','Pending'),
(58,18,'2025-03-18','Completed'),
(59,19,'2025-03-19','Completed'),
(60,20,'2025-03-20','Cancelled'),
(61,21,'2025-04-01','Completed'),
(62,22,'2025-04-02','Pending'),
(63,23,'2025-04-03','Completed'),
(64,24,'2025-04-04','Completed'),
(65,25,'2025-04-05','Cancelled'),
(66,26,'2025-04-06','Completed'),
(67,27,'2025-04-07','Pending'),
(68,28,'2025-04-08','Completed'),
(69,29,'2025-04-09','Completed'),
(70,30,'2025-04-10','Cancelled'),
(71,31,'2025-04-11','Completed'),
(72,32,'2025-04-12','Pending'),
(73,33,'2025-04-13','Completed'),
(74,34,'2025-04-14','Completed'),
(75,35,'2025-04-15','Cancelled'),
(76,36,'2025-04-16','Completed'),
(77,37,'2025-04-17','Pending'),
(78,38,'2025-04-18','Completed'),
(79,39,'2025-04-19','Completed'),
(80,40,'2025-04-20','Cancelled'),
(81,1,'2025-05-01','Completed'),
(82,2,'2025-05-02','Pending'),
(83,3,'2025-05-03','Completed'),
(84,4,'2025-05-04','Completed'),
(85,5,'2025-05-05','Cancelled'),
(86,6,'2025-05-06','Completed'),
(87,7,'2025-05-07','Pending'),
(88,8,'2025-05-08','Completed'),
(89,9,'2025-05-09','Completed'),
(90,10,'2025-05-10','Cancelled'),
(91,11,'2025-05-11','Completed'),
(92,12,'2025-05-12','Pending'),
(93,13,'2025-05-13','Completed'),
(94,14,'2025-05-14','Completed'),
(95,15,'2025-05-15','Cancelled'),
(96,16,'2025-05-16','Completed'),
(97,17,'2025-05-17','Pending'),
(98,18,'2025-05-18','Completed'),
(99,19,'2025-05-19','Completed');

select * from Appointments;

# 6. Treatmnts :

CREATE TABLE Treatments (
    treatment_id INT PRIMARY KEY auto_increment,
    appointment_id INT,
    treatment_name VARCHAR(100),
    treatment_cost DECIMAL(10,2),
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);

INSERT INTO Treatments
(appointment_id, treatment_name, treatment_cost)
VALUES
(200,'General Checkup',500.00),
(201,'Blood Test',1200.00),
(202,'X-Ray Scan',2500.00),
(203,'MRI Scan',8000.00),
(204,'Physiotherapy',3000.00),
(205,'Dental Cleaning',1500.00),
(206,'ECG Test',2000.00),
(207,'Vaccination',800.00),
(208,'Skin Treatment',3500.00),
(209,'Eye Examination',1200.00),
(210,'Cardiac Consultation',4000.00),
(211,'Neurological Assessment',4500.00),
(212,'Orthopedic Treatment',6000.00),
(213,'Pediatric Consultation',2500.00),
(214,'Cancer Screening',7000.00),
(215,'ENT Treatment',3000.00),
(216,'Diabetes Management',3500.00),
(217,'Kidney Function Test',4000.00),
(218,'Lung Function Test',4500.00),
(219,'Surgery Consultation',5000.00),
(220,'General Checkup',700.00),
(221,'Blood Test',1500.00),
(222,'X-Ray Scan',2800.00),
(223,'MRI Scan',8500.00),
(224,'Physiotherapy',3200.00),
(225,'Dental Cleaning',1700.00),
(226,'ECG Test',2200.00),
(227,'Vaccination',900.00),
(228,'Skin Treatment',3800.00),
(229,'Eye Examination',1400.00),
(230,'Cardiac Consultation',4200.00),
(231,'Neurological Assessment',4800.00),
(232,'Orthopedic Treatment',6200.00),
(233,'Pediatric Consultation',2700.00),
(234,'Cancer Screening',7500.00),
(235,'ENT Treatment',3300.00),
(236,'Diabetes Management',3700.00),
(237,'Kidney Function Test',4300.00),
(238,'Lung Function Test',4700.00),
(239,'Surgery Consultation',5500.00),
(240,'General Checkup',600.00),
(241,'Blood Test',1300.00),
(242,'X-Ray Scan',2600.00),
(243,'MRI Scan',8200.00),
(244,'Physiotherapy',3100.00),
(245,'Dental Cleaning',1600.00),
(246,'ECG Test',2100.00),
(247,'Vaccination',850.00),
(248,'Skin Treatment',3600.00),
(249,'Eye Examination',1300.00),
(250,'Cardiac Consultation',4100.00),
(251,'Neurological Assessment',4600.00),
(252,'Orthopedic Treatment',6100.00),
(253,'Pediatric Consultation',2600.00),
(254,'Cancer Screening',7200.00),
(255,'ENT Treatment',3200.00),
(256,'Diabetes Management',3600.00),
(257,'Kidney Function Test',4200.00),
(258,'Lung Function Test',4600.00),
(259,'Surgery Consultation',5200.00),
(260,'General Checkup',750.00),
(261,'Blood Test',1400.00),
(262,'X-Ray Scan',2700.00),
(263,'MRI Scan',8300.00),
(264,'Physiotherapy',3400.00),
(265,'Dental Cleaning',1800.00),
(266,'ECG Test',2300.00),
(267,'Vaccination',950.00),
(268,'Skin Treatment',3900.00),
(269,'Eye Examination',1500.00),
(270,'Cardiac Consultation',4300.00),
(271,'Neurological Assessment',4900.00),
(272,'Orthopedic Treatment',6400.00),
(273,'Pediatric Consultation',2800.00),
(274,'Cancer Screening',7600.00),
(275,'ENT Treatment',3500.00),
(276,'Diabetes Management',3800.00),
(277,'Kidney Function Test',4400.00),
(278,'Lung Function Test',4800.00),
(279,'Surgery Consultation',5600.00),
(280,'General Checkup',800.00),
(281,'Blood Test',1600.00),
(282,'X-Ray Scan',2900.00),
(283,'MRI Scan',8700.00),
(284,'Physiotherapy',3500.00),
(285,'Dental Cleaning',1900.00),
(286,'ECG Test',2400.00),
(287,'Vaccination',1000.00),
(288,'Skin Treatment',4000.00),
(289,'Eye Examination',1600.00),
(290,'Cardiac Consultation',4500.00),
(291,'Neurological Assessment',5000.00),
(292,'Orthopedic Treatment',6500.00),
(293,'Pediatric Consultation',3000.00),
(294,'Cancer Screening',8000.00),
(295,'ENT Treatment',3600.00),
(296,'Diabetes Management',3900.00),
(297,'Kidney Function Test',4500.00),
(298,'Lung Function Test',4900.00);
select * from Treatments;

# 7.Medicines table 

CREATE TABLE Medicines (
    medicine_id INT PRIMARY KEY auto_increment,
    medicine_name VARCHAR(100),
    manufacturer VARCHAR(100),
    price DECIMAL(10,2)
);

INSERT INTO Medicines
(medicine_name, manufacturer, price)
VALUES
('Paracetamol','Cipla',50.00),
('Amoxicillin','Sun Pharma',120.00),
('Azithromycin','Dr Reddys',180.00),
('Ibuprofen','Abbott',90.00),
('Cetirizine','GSK',60.00),
('Metformin','USV Pvt Ltd',140.00),
('Amlodipine','Cipla',85.00),
('Atorvastatin','Sun Pharma',220.00),
('Omeprazole','Dr Reddys',110.00),
('Pantoprazole','Abbott',130.00),
('Insulin','Novo Nordisk',750.00),
('Aspirin','Bayer',70.00),
('Diclofenac','Novartis',95.00),
('Losartan','Cipla',150.00),
('Levocetirizine','Glenmark',80.00),
('Montelukast','Sun Pharma',170.00),
('Vitamin C Tablets','Cipla',100.00),
('Calcium Tablets','Abbott',160.00),
('Iron Supplements','Himalaya',120.00),
('Multivitamin','Dabur',200.00),
('Prednisolone','Pfizer',90.00),
('Hydroxychloroquine','Ipca',250.00),
('Doxycycline','Sun Pharma',140.00),
('Cough Syrup','Mankind',130.00),
('Antacid Syrup','Gelusil',95.00),
('Pain Relief Gel','Volini',150.00),
('Eye Drops','Alcon',180.00),
('Nasal Spray','GSK',220.00),
('Antiseptic Liquid','Dettol',120.00),
('Bandage Roll','Johnson & Johnson',60.00),
('Insulin Pen','Novo Nordisk',900.00),
('Blood Pressure Tablet','Cipla',190.00),
('Cholesterol Tablet','Sun Pharma',260.00),
('Thyroid Medicine','Abbott',140.00),
('Allergy Medicine','Glenmark',100.00),
('Antifungal Cream','Himalaya',90.00),
('Antibiotic Cream','Cipla',130.00),
('Digestive Enzyme','Abbott',160.00),
('ORS Powder','Electral',40.00),
('Cold Relief Tablet','Dr Reddys',75.00),
('Fever Syrup','Cipla',85.00),
('Diabetes Injection','Novo Nordisk',850.00),
('Heart Care Tablet','Sun Pharma',300.00),
('Kidney Care Medicine','Abbott',280.00),
('Lung Care Tablet','GSK',240.00),
('Skin Care Cream','Himalaya',150.00),
('Joint Pain Tablet','Cipla',210.00),
('Eye Care Capsule','Alcon',190.00),
('Dental Gel','Colgate',80.00),
('Surgical Antibiotic','Pfizer',350.00);
select * from Medicines;

# 8.Prescription table:

CREATE TABLE Prescriptions (
    prescription_id INT PRIMARY KEY auto_increment,
    treatment_id INT,
    medicine_id INT,
    quantity INT,
    FOREIGN KEY (treatment_id) REFERENCES Treatments(treatment_id),
    FOREIGN KEY (medicine_id) REFERENCES Medicines(medicine_id)
);
INSERT INTO Prescriptions
(treatment_id, medicine_id, quantity)
VALUES
(100,1,2),
(101,2,3),
(102,3,1),
(103,4,2),
(104,5,4),
(105,6,2),
(106,7,1),
(107,8,3),
(108,9,2),
(109,10,1),
(110,11,2),
(111,12,3),
(112,13,1),
(113,14,2),
(114,15,4),
(115,16,2),
(116,17,1),
(117,18,3),
(118,19,2),
(119,20,1),
(120,21,2),
(121,22,3),
(122,23,1),
(123,24,2),
(124,25,4),
(125,26,2),
(126,27,1),
(127,28,3),
(128,29,2),
(129,30,1),
(130,31,2),
(131,32,3),
(132,33,1),
(133,34,2),
(134,35,4),
(135,36,2),
(136,37,1),
(137,38,3),
(138,39,2),
(139,40,1),
(140,41,2),
(141,42,3),
(142,43,1),
(143,44,2),
(144,45,4),
(145,46,2),
(146,47,1),
(147,48,3),
(148,49,2),
(149,50,1),
(150,1,2),
(151,2,3),
(152,3,1),
(153,4,2),
(154,5,4),
(155,6,2),
(156,7,1),
(157,8,3),
(158,9,2),
(159,10,1),
(160,11,2),
(161,12,3),
(162,13,1),
(163,14,2),
(164,15,4),
(165,16,2),
(166,17,1),
(167,18,3),
(168,19,2),
(169,20,1),
(170,21,2),
(171,22,3),
(172,23,1),
(173,24,2),
(174,25,4),
(175,26,2),
(176,27,1),
(177,28,3),
(178,29,2),
(179,30,1),
(180,31,2),
(181,32,3),
(182,33,1),
(183,34,2),
(184,35,4),
(185,36,2),
(186,37,1),
(187,38,3),
(188,39,2),
(189,40,1),
(190,41,2),
(191,42,3),
(192,43,1),
(193,44,2),
(194,45,4),
(195,46,2),
(196,47,1),
(197,48,3),
(198,49,2);

# 9.Bills Table

CREATE TABLE Bills (
    bill_id INT PRIMARY KEY auto_increment,
    patient_id INT,
    bill_date DATE,
    total_amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    foreign key (patient_id) references Patients(patient_id)
);

INSERT INTO Bills
(patient_id, bill_date, total_amount, payment_status)
VALUES
(1,'2025-01-05',5500.00,'Paid'),
(2,'2025-01-06',7200.00,'Paid'),
(3,'2025-01-07',4500.00,'Pending'),
(4,'2025-01-08',8500.00,'Paid'),
(5,'2025-01-09',3000.00,'Cancelled'),
(6,'2025-01-10',6200.00,'Paid'),
(7,'2025-01-11',2800.00,'Pending'),
(8,'2025-01-12',9000.00,'Paid'),
(9,'2025-01-13',5000.00,'Paid'),
(10,'2025-01-14',3500.00,'Cancelled'),
(11,'2025-01-15',7600.00,'Paid'),
(12,'2025-01-16',4200.00,'Pending'),
(13,'2025-01-17',6800.00,'Paid'),
(14,'2025-01-18',7300.00,'Paid'),
(15,'2025-01-19',3900.00,'Cancelled'),
(16,'2025-01-20',8200.00,'Paid'),
(17,'2025-01-21',4700.00,'Pending'),
(18,'2025-01-22',9500.00,'Paid'),
(19,'2025-01-23',5600.00,'Paid'),
(20,'2025-01-24',4100.00,'Cancelled'),
(21,'2025-02-01',6000.00,'Paid'),
(22,'2025-02-02',5200.00,'Pending'),
(23,'2025-02-03',7800.00,'Paid'),
(24,'2025-02-04',8800.00,'Paid'),
(25,'2025-02-05',3300.00,'Cancelled'),
(26,'2025-02-06',6400.00,'Paid'),
(27,'2025-02-07',3600.00,'Pending'),
(28,'2025-02-08',9200.00,'Paid'),
(29,'2025-02-09',5100.00,'Paid'),
(30,'2025-02-10',4000.00,'Cancelled'),
(31,'2025-02-11',7400.00,'Paid'),
(32,'2025-02-12',4600.00,'Pending'),
(33,'2025-02-13',6900.00,'Paid'),
(34,'2025-02-14',8100.00,'Paid'),
(35,'2025-02-15',3700.00,'Cancelled'),
(36,'2025-02-16',8600.00,'Paid'),
(37,'2025-02-17',4800.00,'Pending'),
(38,'2025-02-18',9700.00,'Paid'),
(39,'2025-02-19',5900.00,'Paid'),
(40,'2025-02-20',4300.00,'Cancelled'),
(41,'2025-03-01',6200.00,'Paid'),
(42,'2025-03-02',5400.00,'Pending'),
(43,'2025-03-03',8000.00,'Paid'),
(44,'2025-03-04',8900.00,'Paid'),
(45,'2025-03-05',3400.00,'Cancelled'),
(46,'2025-03-06',6500.00,'Paid'),
(47,'2025-03-07',3800.00,'Pending'),
(48,'2025-03-08',9400.00,'Paid'),
(49,'2025-03-09',5300.00,'Paid'),
(50,'2025-03-10',4200.00,'Cancelled'),
(51,'2025-03-11',7700.00,'Paid'),
(52,'2025-03-12',4900.00,'Pending'),
(53,'2025-03-13',7100.00,'Paid'),
(54,'2025-03-14',8300.00,'Paid'),
(55,'2025-03-15',3600.00,'Cancelled'),
(56,'2025-03-16',8700.00,'Paid'),
(57,'2025-03-17',5000.00,'Pending'),
(58,'2025-03-18',9800.00,'Paid'),
(59,'2025-03-19',6100.00,'Paid'),
(60,'2025-03-20',4500.00,'Cancelled'),
(61,'2025-04-01',6300.00,'Paid'),
(62,'2025-04-02',5500.00,'Pending'),
(63,'2025-04-03',8200.00,'Paid'),
(64,'2025-04-04',9100.00,'Paid'),
(65,'2025-04-05',3500.00,'Cancelled'),
(66,'2025-04-06',6700.00,'Paid'),
(67,'2025-04-07',3900.00,'Pending'),
(68,'2025-04-08',9600.00,'Paid'),
(69,'2025-04-09',5700.00,'Paid'),
(70,'2025-04-10',4400.00,'Cancelled'),
(71,'2025-04-11',7900.00,'Paid'),
(72,'2025-04-12',5100.00,'Pending'),
(73,'2025-04-13',7300.00,'Paid'),
(74,'2025-04-14',8500.00,'Paid'),
(75,'2025-04-15',3800.00,'Cancelled'),
(76,'2025-04-16',8900.00,'Paid'),
(77,'2025-04-17',5200.00,'Pending'),
(78,'2025-04-18',9900.00,'Paid'),
(79,'2025-04-19',6300.00,'Paid'),
(80,'2025-04-20',4600.00,'Cancelled'),
(81,'2025-05-01',6600.00,'Paid'),
(82,'2025-05-02',5700.00,'Pending'),
(83,'2025-05-03',8400.00,'Paid'),
(84,'2025-05-04',9300.00,'Paid'),
(85,'2025-05-05',4000.00,'Cancelled'),
(86,'2025-05-06',7000.00,'Paid'),
(87,'2025-05-07',4200.00,'Pending'),
(88,'2025-05-08',9800.00,'Paid'),
(89,'2025-05-09',6000.00,'Paid'),
(90,'2025-05-10',4800.00,'Cancelled'),
(91,'2025-05-11',8200.00,'Paid'),
(92,'2025-05-12',5400.00,'Pending'),
(93,'2025-05-13',7600.00,'Paid'),
(94,'2025-05-14',8700.00,'Paid'),
(95,'2025-05-15',4100.00,'Cancelled'),
(96,'2025-05-16',9200.00,'Paid'),
(97,'2025-05-17',5600.00,'Pending'),
(98,'2025-05-18',10000.00,'Paid'),
(99,'2025-05-19',6500.00,'Paid');

#==========50 SQL Practice Questions===========

-- 1. List all patients.
select * from Patients;

-- 2. Find doctors earning more than 100000.
select * from Doctors where salary>100000;

-- 3. Display top 10 highest paid doctors.
select * from Doctors order by salary desc limit 10;

-- 4. Count patients.
select count(*) as count_patients from Patients;

-- 5. Average doctor salary.
select avg(salary)  as average_salary from Doctors;

-- 6. Department-wise doctor count.
select department_id, count(*) as doctor_count
from Doctors group by department_id;

select d.department_id,d.department_name,count(dr.doctor_id) as doctor_count
from Departments d join Doctors dr
on d.department_id= dr.department_id
group by d.department_id,d.department_name;

-- 7. Hospital-wise patient count.

select h.hospital_id,h.hospital_name,count(distinct p.patient_id) as patient_count 
from Hospitals h join Departments d 
on h.hospital_id= d.hospital_id 
join Doctors dr on d.department_id=dr.department_id 
join Appointments a on a.doctor_id=dr.doctor_id
join Patients p on p.patient_id=a.patient_id group by h.hospital_id,h.hospital_name;

-- 8. Appointments this month.
select  * from Appointments where month(appointment_date)=month(current_date())
and year(appointment_id)=year(current_date());

-- 9. Pending appointments.
select * from Appointments where status='Pending';
select count(*) as apoointment_pending
from Appointments where status='Pending';

-- 10. Completed appointments.
select * from Appointments where status='Completed';
select count(*) as completed_appointment from Appointments where status='Completed';

-- 11. Top spending patients.
#--query 1
select patient_id,sum(total_amount) as top_spending 
from Bills group by patient_id,total_amount order by sum(total_amount) desc ;

#query 2
select p.patient_id,p.patient_name, 
		sum(b.total_amount) as top_spent
        from Patients p join Bills b 
        on p.patient_id=b.patient_id
        group by p.patient_id,p.patient_name
        order by top_spent desc;
        
-- 12. Revenue by hospital.
SELECT
    h.hospital_id,
    h.hospital_name,
    SUM(b.total_amount) AS total_revenue
FROM Hospitals h
JOIN Departments d
    ON h.hospital_id = d.hospital_id
JOIN Doctors doc
    ON d.department_id = doc.department_id
JOIN Appointments a
    ON doc.doctor_id = a.doctor_id
JOIN Bills b
    ON a.patient_id = b.patient_id
GROUP BY h.hospital_id, h.hospital_name
ORDER BY total_revenue DESC;

-- 13. Revenue by department.
select d.department_id, d.department_name,sum(b.total_amount) as total_revenue
		from Departments d join Doctors dr
        on d.department_id=dr.department_id
        join Appointments a on a.doctor_id=dr.doctor_id
        join Bills b on b.patient_id=a.patient_id
        group by d.department_id,d.department_name
        order by total_revenue desc;
        
-- 14. Most prescribed medicine.
select m.medicine_id,m.medicine_name,
		sum(p.quantity) total_prescribed from Medicines m join Prescriptions p 
        on m.medicine_id=p.medicine_id
        group by m.medicine_id,m.medicine_name
        order by total_prescribed desc limit 1;

-- 15. Patients without appointments.
select p.patient_id,p.patient_name
		from Patients p left join Appointments a
        on p.patient_id=a.patient_id
        where a.appointment_id is null;
        
        
-- 16. Doctors hired after 2022.
select * from Doctors where year(hire_date )>2022;

-- 17. Monthly billing.
select  month(bill_date) as monthly_billing ,
	sum(total_amount) as total_bill
    from Bills group by month(bill_date);
    
select monthname(bill_date) as monthly_billing ,
	sum(total_amount) as total_bill
    from Bills group by monthname(bill_date);
    
-- 18. Department with highest revenue.
select d.department_id,d.department_name,sum(dr.salary) as highest_revenue
	from Departments d join Doctors dr
    on d.department_id=dr.department_id
    group by d.department_id,d.department_name
    order by highest_revenue desc limit 1;
    
select d.department_id,d.department_name,sum(t.treatment_cost) as highest_revenue
	from Departments d join Doctors dr
    on d.department_id=dr.department_id
    join Appointments a on a.doctor_id=dr.doctor_id
    join Treatments t on t.appointment_id=a.appointment_id
    group by d.department_id,d.department_name
    order by highest_revenue desc limit 1 ;
    
-- 19. Rank doctors by salary.
select doctor_id,doctor_name,specialization ,
		rank() over(order by salary desc) ranks from Doctors;
        
-- 20. Running total of bills.
select * from Bills;
select bill_id, bill_date,total_amount,
		sum(total_amount) over(order by bill_date) as running_total
        from Bills;
        
select bill_id,bill_date,total_amount,sum(total_amount) as running_total
		from Bills group by bill_id order by bill_date ;
        
-- 21. Find duplicate patient names.
select patient_name,count(*) as duplicate_name 
from Patients group by patient_name having count(*)>1;

-- 22. Patients from Mumbai.
select * from Patients where city='Mumbai';

-- 23. Doctors in Cardiology.
select * from Doctors where specialization='Cardiologist';

-- 24. Bills above 50000.
select * from Bills where total_amount>50000;

-- 25. Average treatment cost.
select avg(treatment_cost) as average_treatment from Treatments;

select treatment_id,treatment_name ,avg(treatment_cost) as average_treatment from Treatments
group by treatment_id,treatment_name;

-- 26. Top 5 medicines by usage.
select * from Medicines order by price desc limit 5;

-- 27. Doctors with no appointments. 
select d.doctor_id,d.doctor_name 
		from Doctors d join Appointments a 
        on d.doctor_id=a.doctor_id
        where appointment_id is null;
        
-- 28. Hospitals in Delhi.
select * from Hospitals where city='Delhi';

-- 29. Patients older than 60.
select * from Patients where age >60;

-- 30. Appointment count by doctor.
select a.appointment_id,d.doctor_name,count(distinct d.doctor_id) as count_doctor
		from Appointments a join Doctors d
        on a.doctor_id=d.doctor_id
        group by a.appointment_id;

-- 31. Revenue by month.
select monthname(bill_date) as month,sum(total_amount) as revenue
		from Bills group by monthname(bill_date);

-- 32. Treatments costing above average.
select * from Treatments where treatment_cost > (select avg(treatment_cost) from Treatments);

-- 33. Latest appointment per patient.
select p.patient_id,p.patient_name from Patients p join Appointments a 
on p.patient_id=a.patient_id
where a.appointment_date=current_date();

-- 34. Second highest salary.
select max(salary) as second_highest_salary from Doctors where salary<(select max(salary)  from Doctors);

-- 35. Create patient summary view.
create view summary as select * from Patients;
select * from summary;

-- 36. Create stored procedure for bill lookup.
#query 1
delimiter //
create procedure bill_lookup()
begin
		select * from Bills;
 end //
delimiter ;
call bill_lookup();

#Query 2
delimiter //
create procedure BillLookup(in b_bill_id int)
begin 
		select * from Bills where bill_id=b_bill_id;
end //
delimiter ;

call BillLookup(10);


-- 37. Create trigger to log bill insert.
create table log_bill( log_id int auto_increment primary key,
					bill_id int,
                    log_time timestamp default now());
delimiter //
create trigger bill_insert
before insert on Bills
for each row
begin 
		insert into log_bill(bill_id) values(new.bill_id);
end //
delimiter ;
insert into Bills
values (100, 1, '2026-07-31', 10000, 'paid');
drop trigger bill_insert;
select * from Bills;

-- 38. Create function for annual revenue.
select *  from  Bills;
delimiter //
create function annual_revnue(p_year int)
returns decimal(15,2)
deterministic
begin
			declare total_revune decimal(15,2);
			select sum(total_amount) into total_revune
            from Bills where year(bill_date)=p_year;
            return total_revune ;
            
end //
delimiter ;
select annual_revnue(2025) as annual_revune;

-- 39. Use CTE for monthly revenue.
with monthly_revenue as(
			select year(bill_date) as year,
            month(bill_date) as month,
            sum(total_amount) as monthly_revenue
            from Bills group by month(bill_date),year(bill_date))
	select * from monthly_revenue order by year,month;
    select * from Bills;

-- 40. Dense rank hospitals by revenue.
with hospital_dense_rnk as
(select h.hospital_id,h.hospital_name,
    sum(b.total_amount) AS total_revenue,
    dense_rank() over(order by sum(b.total_amount) desc) as rnk
from Hospitals h
join Departments d
    on h.hospital_id = d.hospital_id
join Doctors doc
    on d.department_id = doc.department_id
join Appointments a
    on doc.doctor_id = a.doctor_id
join Bills b
    on a.patient_id = b.patient_id
group by h.hospital_id, h.hospital_name)

select * from hospital_dense_rnk;


-- 41. Top medicine per department.
select  d.department_id,d.department_name ,m.price
		from Departments d join Doctors dr
        on d.department_id=dr.department_id join Appointments a
        on dr.doctor_id=a.doctor_id join Treatments t
        on t.appointment_id=a.appointment_id join Prescriptions p
        on p.treatment_id=p.treatment_id join Medicines m
        on m.medicine_id=p.medicine_id
        group by d.department_id,d.department_name ,m.price
        order by m.price desc limit 1;
        
with top_medicine as(select  d.department_id,d.department_name ,m.price as topprice
		from Departments d join Doctors dr
        on d.department_id=dr.department_id join Appointments a
        on dr.doctor_id=a.doctor_id join Treatments t
        on t.appointment_id=a.appointment_id join Prescriptions p
        on p.treatment_id=p.treatment_id join Medicines m
        on m.medicine_id=p.medicine_id
        group by d.department_id,d.department_name ,m.price)
	select * from top_medicine order by topprice desc limit 1;

-- 42. Patients visiting multiple doctors.
select p.patient_id,p.patient_name,count(distinct d.doctor_id) as visiting_doctors from Patients p 
join Appointments a on p.patient_id=a.patient_id
join Doctors d on d.doctor_id=a.doctor_id
group by p.patient_id,p.patient_name
having count(distinct d.doctor_id)>1;

select d.doctor_id,p.patient_name,count(distinct p.patient_id) as visiting_doctors from Patients p 
join Appointments a on p.patient_id=a.patient_id
join Doctors d on d.doctor_id=a.doctor_id
group by d.doctor_id,p.patient_name
having count(distinct p.patient_id)>1;


-- 43. Doctors with highest appointments.
with highest_appointment as(
				select d.doctor_id,d.doctor_name ,
                count(a.appointment_id) as total_appointment
                from Doctors d join Appointments a 
                on d.doctor_id=a.doctor_id
                group by d.doctor_id,d.doctor_name)
		select * from highest_appointment order by total_appointment desc ;
        

-- 44. Revenue growth year over year.
select
    year(bill_date) AS year,
    sum(total_amount) AS revenue
from Bills
GROUP BY YEAR(bill_date)
ORDER BY year;

with yearly_revenue as (
select sum(total_amount) as revenue,
 year(bill_date) as year from Bills
 group by year(bill_date))
 SELECT
    year,
    revenue,
    LAG(revenue) OVER (ORDER BY year) AS previous_year_revenue,
    revenue - LAG(revenue) OVER (ORDER BY year) AS revenue_growth,
    ROUND(
        ((revenue - LAG(revenue) OVER (ORDER BY year)) 
        / LAG(revenue) OVER (ORDER BY year)) * 100,
        2
    ) AS growth_percentage
FROM yearly_revenue;
 
-- 45. Rolling 3-month revenue.
select * from Bills;
SELECT
    DATE_FORMAT(bill_date, '%Y-%m') AS month,
    SUM(total_amount) AS monthly_revenue,
    SUM(SUM(total_amount)) OVER (
        ORDER BY DATE_FORMAT(bill_date, '%Y-%m')
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS rolling_3_month_revenue
FROM Bills
GROUP BY DATE_FORMAT(bill_date, '%Y-%m')
ORDER BY month;

-- 46. Inactive patients.
SELECT
    p.patient_id,
    p.patient_name
FROM Patients p
LEFT JOIN Appointments a
    ON p.patient_id = a.patient_id
    AND a.appointment_date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
WHERE a.patient_id IS NULL;

-- 47. Inactive doctors.
SELECT
    d.doctor_id,
    d.doctor_name
FROM Doctors d
LEFT JOIN Appointments a
    ON d.doctor_id = a.doctor_id
    AND a.appointment_date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
WHERE a.doctor_id IS NULL;

-- 48. Average billing by city.
select p.city,avg(b.total_amount) as average_billing 
from Patients p join Bills b
on p.patient_id=b.patient_id
group by p.city;

-- 49. Highest bill per hospital.
select h.hospital_id, h.hospital_name, sum(b.total_amount) as highest_bill
from Hospitals h join Departments d 
on h.hospital_id=d.hospital_id
join Doctors dr on d.department_id=dr.department_id
join Appointments a on dr.doctor_id=a.doctor_id
join Bills b on a.patient_id=b.patient_id
group by h.hospital_id, h.hospital_name;


-- 50. Final dashboard query.
SELECT
    (SELECT COUNT(*) FROM Patients) AS total_patients,
    (SELECT COUNT(*) FROM Doctors) AS total_doctors,
    (SELECT COUNT(*) FROM Appointments) AS total_appointments,
    (SELECT SUM(total_amount) FROM Bills) AS total_revenue,
    (SELECT ROUND(AVG(total_amount), 2) FROM Bills) AS avg_bill_amount;
    
-- =============Advanced Challenge=============
--  Create a recursive CTE.
WITH RECURSIVE numbers AS (
    SELECT 1 AS n

    UNION ALL

    SELECT n + 1
    FROM numbers
    WHERE n < 10
)
SELECT *
FROM numbers;

--  Create views for hospital analytics.
CREATE VIEW vw_appointment_summary AS
SELECT
    d.doctor_name,
    COUNT(a.appointment_id) AS total_appointments
FROM Doctors d
LEFT JOIN Appointments a
ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_name;
select * from vw_appointment_summary;

--  Identify inactive patients.
SELECT
    p.patient_id,
    p.patient_name
FROM Patients p
LEFT JOIN Appointments a
    ON p.patient_id = a.patient_id
    AND a.appointment_date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
WHERE a.patient_id IS NULL;

--  Rank departments by revenue.
SELECT
    dept.department_name,
    SUM(b.total_amount) AS revenue,
    DENSE_RANK() OVER (
        ORDER BY SUM(b.total_amount) DESC
    ) AS revenue_rank
FROM Departments dept
JOIN Doctors d
ON dept.department_id = d.department_id
JOIN Appointments a
ON d.doctor_id = a.doctor_id
JOIN Bills b
ON a.appointment_id = a.appointment_id
GROUP BY dept.department_name;

--  Calculate year-over-year growth.
with yearly_revenue as (
select sum(total_amount) as revenue,
 year(bill_date) as year from Bills
 group by year(bill_date))
 SELECT
    year,
    revenue,
    LAG(revenue) OVER (ORDER BY year) AS previous_year_revenue,
    revenue - LAG(revenue) OVER (ORDER BY year) AS revenue_growth,
    ROUND(
        ((revenue - LAG(revenue) OVER (ORDER BY year)) 
        / LAG(revenue) OVER (ORDER BY year)) * 100,
        2
    ) AS growth_percentage
FROM yearly_revenue;


