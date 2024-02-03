use portfolio_projectss ;
create table album2(
album_id int,
title varchar(255),
artist_id int );
SELECT * FROM album2 ;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/album2.csv'  INTO TABLE album2
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES;


create table artist(
artist_id int ,
name_name varchar(255)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/artist.csv'  INTO TABLE artist
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES;

create table customer (
customer_id int,
first_name varchar(255),
last_name varchar(255),
gender varchar(255),
company varchar(255) );
select  * from customer;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Customersnew.csv'  INTO TABLE customer
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES;

create table employee (
employee_id int ,
last_name varchar(255),
first_name varchar(255),
title varchar(255),
reports_to int, 
levels int,
birthdate varchar(255),
hire_date varchar(255),
city varchar(255),
state varchar(255),
country varchar(255),
email varchar(255) );
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/employee.csv'  INTO TABLE employee
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES;

create table genre (
genre_id int ,
name_name varchar(255)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/genre.csv'  INTO TABLE genre
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES;

create table invoice (
invoice_id int ,
customer_id int ,
invoice_date varchar(255),
billing_city varchar(255),
billing_state varchar(255),
billing_country varchar(255),
total int );
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/invoice.csv'  INTO TABLE invoice 
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES;

create table invoice_line (
invoice_line_id int ,
invoice_id int ,
track_id int ,
unit_price int ,
quantity int 
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/invoice_line.csv'  INTO TABLE invoice_line
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES;

create table media_type (
media_type int,
name_name varchar(255)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/media_type.csv'  INTO TABLE media_type 
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES;

create table playlist (
playlist_id int ,
name_name varchar(255)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/playlist.csv'  INTO TABLE playlist 
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES;

create table playlist_track (
playlist_id int, 
track_id int );
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/playlist_track.csv'  INTO TABLE playlist_track 
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES;

create table track (
track_id int ,
name_name varchar(255),
album_id int ,
media_type_id int,
genre_id int,
composer varchar(255),
milliseconds bigint,
bytes bigint ,
unit_price int );
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/track.csv'  INTO TABLE track 
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES;











