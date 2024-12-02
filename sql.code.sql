CREATE DATABASE alumni_portal;

USE alumni_portal;

CREATE TABLE alumni (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    graduation_year INT NOT NULL,
    UNIQUE(name) 
);

CREATE TABLE event_registrations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    alumni_name VARCHAR(100) NOT NULL,
    event_name VARCHAR(100) NOT NULL,
    FOREIGN KEY (alumni_name) REFERENCES alumni(name)
    );
drop table alumni;
SELECT * FROM alumni;	
SELECT * FROM event_registrations;

DELETE from alumni
where id = 5;

insert into alumni(name, graduation_year)
values
("Abhish", 2000);