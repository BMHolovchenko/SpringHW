create table if not exists products(
id serial primary key not null,
name varchar(100) not null,
price decimal not null);

create table if not exists manufacturers(
id serial primary key not null,
name varchar(100) not null);

create table if not exists roles(
id serial primary key not null,
name varchar(100) not null);

create table if not exists users(
id serial primary key not null,
email varchar(50) not null,
firstName varchar(50) not null,
lastName varchar(50) not null,
password varchar(50) not null);

create table if not exists users_roles(
user_id integer not null,
role_id integer not null,
foreign key (user_id) references users(id) on delete cascade,
foreign key (role_id) references roles(id) on delete cascade
);

insert into manufacturers (name) values ('CleverMind');
insert into manufacturers (name) values ('ILovePDF');
insert into manufacturers (name) values ('Biomedical something');

insert into products (name, price) values ('All4U', 777);
insert into products (name, price) values ('IT-Pedia', 797);
insert into products (name, price) values ('WorkBook', 99);
insert into products (name, price) values ('Musical Album', 121);
insert into products (name, price) values ('K.M.D.', 1943);
insert into products (name, price) values ('Candle In The Wind', 2020);

insert into roles (name) values ('Admin');
insert into roles (name) values ('User');

insert into users (email, firstname, lastname, password) values
('bmholovchenko@gmail.com', 'Bohdan', 'Holovchenko', 123);

insert into users (email, firstname, lastname, password)
values ('somebody@ukr.net', 'Mykola', 'Molodets', 123);

insert into users_roles (user_id, role_id) values (1, 1);
insert into users_roles (user_id, role_id) values (2, 2);