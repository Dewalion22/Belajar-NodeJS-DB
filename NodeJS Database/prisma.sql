show databases
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




