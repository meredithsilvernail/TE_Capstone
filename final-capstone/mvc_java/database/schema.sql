-- *************************************************************************************************
-- This script creates all of the database objects (tables, sequences, etc) for the database
-- *************************************************************************************************

BEGIN;

DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS beers;
DROP TABLE IF EXISTS breweries;
DROP TABLE IF EXISTS address;
DROP TABLE IF EXISTS app_user;



CREATE TABLE Address(
address_id SERIAL PRIMARY KEY,
street varchar(50),
city varchar(30),
state_code varchar(2),
zip_code int
);

CREATE TABLE app_user (
  id SERIAL PRIMARY KEY,
  user_name varchar(32) NOT NULL UNIQUE,
  password varchar(32) NOT NULL,
  first_name varchar(32) NOT NULL,
  last_name varchar(32) NOT NULL,
  role varchar(32) NOT NULL,
  salt varchar(255) NOT NULL
);



CREATE TABLE Breweries(
brewery_id SERIAL PRIMARY KEY,
brewery_name varchar(50),
phone_number varchar(15),
brewery_history varchar(800),
sunday_hrs varchar(20),
monday_hrs varchar(20),
tuesday_hrs varchar(20),
wednesday_hrs varchar(20),
thursday_hrs varchar(20),
friday_hrs varchar(20),
saturday_hrs varchar(20),
brewery_image_filename varchar(30),
active boolean DEFAULT TRUE,
brewery_address_id int,
brewer_id int
);


CREATE TABLE beers (
beer_id SERIAL PRIMARY KEY,
beer_name varchar(50),
beer_type varchar(20),
description varchar(500),
abv varchar(5),
beer_image varchar(30) DEFAULT null,
brewery_id int
);

CREATE TABLE reviews(
review_id SERIAL PRIMARY KEY,
user_id int,
beer_id int,
review_date timestamp,
review_title varchar(40),
review_post varchar(500),
rating int
);


ALTER TABLE Breweries ADD FOREIGN KEY (brewer_id) references app_user(id);
ALTER TABLE Breweries ADD FOREIGN KEY (brewery_address_id) references Address(address_id);
ALTER TABLE beers ADD FOREIGN KEY (brewery_id) references Breweries(brewery_id);
ALTER TABLE reviews ADD FOREIGN KEY (user_id) references app_user(id);
ALTER TABLE reviews ADD FOREIGN KEY (beer_id) references beers(beer_id);

COMMIT;