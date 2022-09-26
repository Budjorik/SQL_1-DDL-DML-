-- 0) create schema
create schema netology;

-- 1) create table
create table persons
(
    name varchar(20) not null ,
    surname varchar(20) not null ,
    age int check ( 0 <= age <= 150 ),
    phone_number varchar(11),
    city_of_living varchar(255) not null,
    primary key(name, surname, age)
);

-- 2) insert data into table
insert into persons (name, surname, age, phone_number, city_of_living)
values ('Natalya', 'Danilova', 54, 79199589618, 'Moscow');
insert into persons (name, surname, age, phone_number, city_of_living)
values ('Olga', 'Petrova', 33, 79056785439, 'Kazan');
insert into persons (name, surname, age, phone_number, city_of_living)
values ('Sergey', 'Matrosov', 18, 79225645509, 'Novosibirsk');
insert into persons (name, surname, age, phone_number, city_of_living)
values ('Ivan', 'Ivanov', 27, 79056689436, 'Moscow');

-- 3) search living in Moscow
select name, surname from persons
where city_of_living = 'Moscow'
order by name, surname;

-- 4) search living in Moscow
select * from persons
where age > 27
order by age desc;