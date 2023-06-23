show databases;
use belajar_nodejs_prisma;

show tables;


CREATE TABLE customers
(
    id VARCHAR(100) NOT NULL ,
    name VARCHAR(100) NOT NULL ,
    email VARCHAR(100) NOT NULL ,
    phone VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT customers_email_unique UNIQUE (email),
    CONSTRAINT customers_phone_unique UNIQUE (phone)
) engine=InnoDB;




select * from customers;

use belajar_nodejs_prisma;

CREATE TABLE products
(
    id VARCHAR(100) PRIMARY KEY NOT NULL ,
    name VARCHAR(100) NOT NULL ,
    price VARCHAR(100) NOT NULL,
    stock VARCHAR(100) NOT NULL,
    category VARCHAR(100) NOT NULL

) ENGINE INNODB;

select *
from products;

insert into products(id, name, price, stock, category)
    values
    ('P0001', 'A', 1000, 100, 'K1'),
    ('P0002', 'B', 2000, 200, 'K1'),
    ('P0003', 'C', 3000, 300, 'K1'),
    ('P0004', 'D', 4000, 400, 'K1'),
    ('P0005', 'E', 5000, 500, 'K1');


insert into products(id, name, price, stock, category)
    value ('P0006', 'A', 1000, 100, 'K2'),
    ('P0007', 'B', 2000, 200, 'K2'),
    ('P0008', 'C', 3000, 300, 'K2'),
    ('P0009', 'D', 4000, 400, 'K2'),
    ('P0010', 'E', 5000, 500, 'K2');
select *
from products;


