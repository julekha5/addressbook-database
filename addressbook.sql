CREATE DATABASE addressbook;

USE addressbook;

CREATE TABLE addressBook (
		firstname varchar(20) NOT NULL, 
        lastname varchar(20) NOT NULL,
        address varchar(100),
        city varchar(20) NOT NULL,
        state varchar(20) NOT NULL,
        zipcode integer(6),
        phonenumber varchar(10) NOT NULL UNIQUE,
        email varchar(20) NOT NULL UNIQUE,
        UNIQUE KEY name (firstname,lastname)
);

INSERT INTO addressbook VALUES
('Julekha','Mulani','Kothrud','Pune','Maharashtra','424112','1234567890', 'jul.m@gmail.com'),
('Rohini','Patil','Deccan','Pune','Maharashtra','420166','9191919291', 'rohini.p@gmail.com'),
('Divya','K','Andhra','Andhra Pradesh','AP','487879','4567890125', 'divya.k@yahoo.com'),
('Neeta','M','Madhya Pradesh','Gwalior','MP','43342','6577567890', 'neeta.m@gmail.com');

