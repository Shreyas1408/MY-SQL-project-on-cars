create database vasishta

use vasishta

create table city
(
city_id int unique not null,
city_ varchar(50) not null,
province varchar(50) not null,
postal_code varchar(12) not null,
primary key (city_id)
)

desc city

insert into city values
(1001,'Bangalore','South','586123'),
(1002,'Bangalore','North','560025'),
(1003,'Bangalore','East','562129'),
(1004,'Bangalore','West','560009'),
(1005,'Mysore','Narasimharaja kshetra','570007'),
(1006,'Mysore','Krishnaraja kshetra','571602'),
(1007,'Mysore','Chamaraja kshetra',' 570020 '),
(1008,'Mysore','Chamundeshwari kshetra','570010'),
(1009,'Kodagu','Madikeri','571201'),
(1010,'Kodagu','Virajpet','571218'),
(1011,'Tumkur','Chikkanayakanahalli','572214'),
(1012,'Tumkur','Tiptur','572201'),
(1013,'Tumkur','Turuvekere','572221'),
(1014,'Tumkur','Kunigal','572130'),
(1015,'Chikkamagaluru','Kundapura','576201'),
(1016,'Chikkamagaluru','Mudigere','577132'),
(1017,'Chikkamagaluru','Sringeri','577139'),
(1018,'Chikkamagaluru','Karkala','574104'),
(1019,'Chikkamagaluru','Putturu','574105'),
(1020,'Chikkamagaluru','Kaduru','574106'),
(1021,'Shivamogga','Bhadravathi','577301'),
(1022,'Shivamogga','Hosanagar','577418'),
(1023,'Shivamogga','Shikaripur','577427'),
(1024,'Bagalkot','Mudhol','587313'),
(1025,'Bagalkot','Badami','587201')

select * from city

create table users
(
user_id int unique not null,
first_name varchar(30) not null,
last_name varchar(30),
phone varchar(12),
address varchar(100) not null,
city_id int not null,
primary key (user_id),
foreign key (city_id) references city(city_id)
)

desc users

select * from users

insert into users values
( 2000,'SHREYAS','VASISHTA','9606239216','#1015, lokaranjan mahal road, Ittigegudu, Mysuru', 1006 ),
( 2001,'PALLAVI','VASISHTA','9606239225','#101, indiranagar, Bangalore', 1002 ),
( 2002,'PAVAN','KUMAR','6366239225','#10, Putturu, Chikmagalur', 1020 ),
( 2003,'SACHIN','SEENU','7606569774','#38, BTM, Bangalore', 1003 ),
( 2004,'ARCHANA','VASISHTA','9606239225','#1015, Vijaynagar, Bangalore', 1003 ),
( 2005,'MAHESH','GUPTHA','9053308215','#001, kamur, Tumkur', 1011 ),
( 2006,'MADHU','SAGAR','9034478255','#08, Virajpet, Kodagu', 1002 ),
( 2007,'BHAIRAVA','KASHYAP','9689235575','#77, narasipura, Mysuru', 1008 ),
( 2008,'SNEHA','SRIVATSA','8277184868','#09, Dalvoy agrahara, T Narasipura', 1008 ),
( 2009,'Anitha','VASISHTA','9035508216','#1015, Tyamagonglu, Bangalore', 1004 ),
( 2010,'SHREESH','KUMAR','7338211796','#12, MG road, Bagalkot', 1024 ),
( 2011,'BHUVANA',null,'6362423409','#16, karkala, Chikkamagalur', 1018 ),
( 2012,'MEGHRAJ','REDDY','8792815106','#19, Shikaripura, Shivamogga', 1023 ),
( 2013,'RAJESH',null,'6363123409','#16, Putturu, Chikkamagalur', 1020 ),
( 2014,'BHUVAN',null,'7338123409','#01, Putturu, Chikkamagalur', 1020 ),
( 2015,'KUMAR',null,'6368123409','#19, varuna, chamaraja kshetra', 1007 ),
( 2016,'BASAVARAJ','KUMAR','8333123409','#30, Chikkanayakanahalli, Tumkur', 1011 ),
( 2017,'RAJESH','Rao','6363567809','#111, Bhadravathi, Shivamogga', 1021 ),
( 2018,'KAMALA',null,'6363123987','#100, Hosanagar, Shivamogga', 1022 ),
( 2019,'ROOPA','Shreevatsa','9338123409','#168, Badami, Bagalkot', 1025 ),
( 2020,'BHYRESH','Gowda','1234567891','#167, Turuvekere, tumkur', 1013 )

select*from users

create table cars
(
car_id int unique not null,
car_brand varchar (50),
car_model varchar (50),
car_type  varchar (50),
primary key (car_id)
)

desc cars

select * from cars

insert into cars values
( 100,'BMW','M5 CS','Sedan' ),
( 200,'BMW','M4 CS','Sedan' ),
( 300,'BMW','X3','SUV' ),
( 400,'BMW','X5','SUV' ),
( 500,'MERCEDES','E Class','Sedan' ),
( 600,'MERCEDES','C Class','Sedan' ),
( 700,'MERCEDES','GLB','SUV' ),
( 800,'MERCEDES','AMG EQS','Sedan' ),
( 900,'TOYOTA','Hy-cross','SUV' ),
( 1000,'TOYOTA','Innova Crysta','SUV' ),
( 1001,'TOYOTA','Glanza','Hatchback' ),
( 1002,'TOYOTA','Camry','Sedan' ),
( 1003,'TOYOTA','Fortuner','SUV' ),
( 1004,'TOYOTA','Legender','SUV' ),
( 1005,'TOYOTA','Land Cruiser 300','SUV' ),
( 1006,'NISSAN','Magnite','Hatchback' ),
( 1007,'NISSAN','Terrano','SUV' ),
( 1008,'RENAULT','Duster','SUV' ),
( 1009,'RENAULT','Kwid','Hatchback' ),
( 1010,'TATA','Nexon','Hatchback' ),
( 1011,'TATA','Harrier','SUV' ),
( 1012,'TATA','Safari','Suv' ),
( 1013,'TATA','Punch','Hatchback' ),
( 1014,'MAHINDRA','XUV 500','SUV' ),
( 1015,'MAHINDRA','XUV 300','SUV' ),
( 1016,'MAHINDRA','Thar','SUV' ),
( 1017,'FORD','Eco Sport','Hatchback' ),
( 1018,'FORD','Figo','Hatchback' ),
( 1019,'FORD','Endovior','SUV' ),
( 1020,'FORD','Evarest','SUV' ),
( 1021,'AUDI','A3','Sedan' ),
( 1022,'AUDI','A4','Sedan' ),
( 1023,'AUDI','Q3','SUV' ),
( 1024,'MARUTI SUZUKI','Baleno','Hatchback' ),
( 1025,'MARUTI SUZUKI','Fronx','SUV' ),
( 1026,'MARUTI SUZUKI','XL 6','SUV' ),
( 1027,'MARUTI SUZUKI','Ignis','Urban SUV' ),
( 1028,'MARUTI SUZUKI','Jimny','SUV' ),
( 1029,'Force','Gurkha','SUV' ),
( 1030,'LAND ROVER','Defender','SUV' )

create table advertisement
(
ads_id int unique not null,
user_id int not null,
car_id int not null,
built_year year,
color varchar(30) not null,
mileage int not null,
price float not null,
primary key(ads_id),
foreign key (user_id) references users(user_id),
foreign key (car_id) references cars(car_id)
)

desc advertisement

insert into advertisement values
( 1,2000,100,2023,'Black',25,17400000 ),
( 2,2001,200,2022,'Black',25,12400000 ),
( 3,2004,600,2021,'Blue',10,7500000 ),
( 4,2000,800,2024,'Silver',15,24500000 ),
( 5,2002,300,2021,'Blue',22,7300000 ),
( 6,2003,400,2020,'Black',21,9600000 ),
( 7,2005,500,2019,'White',25,8800000 ),
( 8,2005,600,2021,'Red',21,7500000 ),
( 9,2006,700,2017,'Gold',20,9680000 ),
( 10,2001,1000,2020,'Red',12,3500000),
( 11,2007,1003,2022,'Grey',15,5170000 ),
( 12,2008,1004,2014,'Silver',14,4366000 ),
( 13,2009,1006,2012,'Brown',18,1200000 ),
( 14,2010,1009,2016,'Black',12,570000 ),
( 15,2011,1025,2017,'White with black roof',13,1500000 ),
( 16,2012,1030,2022,'Blue',16,24500000 ),
( 17,2012,1029,2021,'Red with black roof',18,3000000 ),
( 18,2013,1019,2007,'Red',20,5070000 ),
( 19,2015,1012,2009,'Grey',22,3070000 ),
( 20,2018,1017,2011,'Blue with White roof',23,576000 ),
( 21,2003,1004,2019,'Red',22,7500000 ),
( 22,2011,1006,2013,'Black',15,1200000 ),
( 23,2010,1009,2003,'Black',16,570000 ),
( 24,2015,1025,2003,'Silver',17,1500000 ),
( 25,2016,1030,2024,'Black',12,24500000 ),
( 26,2017,1029,2022,'Black',23,3000000 ),
( 27,2019,1019,2012,'Matt Red',13,5070000 ),
( 28,2018,1012,2002,'Mtt Black',23,3070000 ),
( 29,2020,1017,2001,'Green',21,576000 ),
( 30,2000,1030,2024,'Gold',20,24500000 )

select * from advertisement

select first_name,price,mileage,car_brand,car_model,built_year,car_type from users
inner join advertisement
on users.user_id = advertisement.user_id
inner join cars
on cars.car_id = advertisement.car_id
order by price desc

select * from advertisement
where price > 7500000

