/*
	DB Schema for Sipag Fiesta

  cd /sipag-fiesta/db
  in terminal:
    mysql -u root < database-setup.sql
  or
    mysql -u root -p < database-setup.sql	
*/

/*	Create user for Sipag*/
DROP USER IF EXISTS 'sipag'@'localhost';
CREATE USER 'sipag'@'localhost' IDENTIFIED BY 'pwds1p4g';

/*	Create database sipag */
DROP DATABASE IF EXISTS sipagdb;
CREATE DATABASE sipagdb;
USE sipagdb;

/*  Grant privileges to user */
GRANT ALL PRIVILEGES ON sipagdb.* TO 'sipag'@'localhost';


/*  
  CATEGORY
    name
    thumbnail
*/

CREATE TABLE IF NOT EXISTS CATEGORY (
  name varchar(64) NOT NULL,
  thumbnail tinytext,
  PRIMARY KEY (name)
);

/*
  COMMODITY
    name
    category
    technologies (ref:TECHNOLOGY)
*/

CREATE TABLE IF NOT EXISTS COMMODITY (
  commodity_id int(4) NOT NULL AUTO_INCREMENT,
  name varchar(64) NOT NULL,
  category varchar(64) NOT NULL,
  thumbnail tinytext,
  PRIMARY KEY (commodity_id),
  FOREIGN KEY (category) REFERENCES CATEGORY(name) ON DELETE CASCADE ON UPDATE CASCADE
);

/*
  TECHNOLOGY
    title
    description
    objective intro
    objectives (ref:OBJECTIVE)
    benefits
    target beneficiaries
    locations
    partner institutions

*/

CREATE TABLE IF NOT EXISTS TECHNOLOGY (
  technology_id int(4) NOT NULL AUTO_INCREMENT,
  title varchar(255) NOT NULL UNIQUE,
  description text NOT NULL,
  objective_intro text,
  commodity_id int(4),
  PRIMARY KEY (technology_id),
  FOREIGN KEY (commodity_id) REFERENCES COMMODITY(commodity_id) ON DELETE CASCADE ON UPDATE CASCADE
);



/*
  OBJECTIVE
    objective_id
    technology_id
    objective
*/

CREATE TABLE IF NOT EXISTS OBJECTIVE (
  objective_id int(4) NOT NULL AUTO_INCREMENT,
  technology_id int(4) NOT NULL,
  objective text,
  PRIMARY KEY (objective_id),
  FOREIGN KEY (technology_id) REFERENCES TECHNOLOGY(technology_id) ON DELETE CASCADE ON UPDATE CASCADE
);

/*
  BENEFIT
    benefit_id
    technology_id
    benefit
*/

CREATE TABLE IF NOT EXISTS BENEFIT (
  benefit_id int(4) NOT NULL AUTO_INCREMENT,
  technology_id int(4) NOT NULL,
  benefit text NOT NULL,
  PRIMARY KEY (benefit_id),
  FOREIGN KEY (technology_id) REFERENCES TECHNOLOGY(technology_id) ON DELETE CASCADE ON UPDATE CASCADE
);

/*
  BENEFICIARY
    beneficiary_id
    technology_id
    beneficiary
*/

CREATE TABLE IF NOT EXISTS BENEFICIARY (
  beneficiary_id int(4) NOT NULL AUTO_INCREMENT,
  technology_id int(4) NOT NULL,
  beneficiary text NOT NULL,
  PRIMARY KEY (beneficiary_id),
  FOREIGN KEY (technology_id) REFERENCES TECHNOLOGY(technology_id) ON DELETE CASCADE ON UPDATE CASCADE
);

/*
  LOCATION
    location_id
    technology_id
    location
*/

CREATE TABLE IF NOT EXISTS LOCATION (
  location_id int(4) NOT NULL AUTO_INCREMENT,
  technology_id int(4) NOT NULL,
  location varchar(64) NOT NULL,
  PRIMARY KEY (location_id),
  FOREIGN KEY (technology_id) REFERENCES TECHNOLOGY(technology_id) ON DELETE CASCADE ON UPDATE CASCADE
);

/*  
  PARTNER
    partner_id
    technology_id
    partner
*/

CREATE TABLE IF NOT EXISTS PARTNER (
  partner_id int(4) NOT NULL AUTO_INCREMENT,
  technology_id int(4) NOT NULL,
  partner varchar(128) NOT NULL,
  PRIMARY KEY (partner_id),
  FOREIGN KEY (technology_id) REFERENCES TECHNOLOGY(technology_id) ON DELETE CASCADE ON UPDATE CASCADE
);

/*
  IMAGES
    image_id
    technology_id
    image
*/

CREATE TABLE IF NOT EXISTS IMAGE (
  image_id int(4) NOT NULL AUTO_INCREMENT,
  technology_id int(4) NOT NULL,
  image tinytext NOT NULL,
  PRIMARY KEY (image_id),
  FOREIGN KEY (technology_id) REFERENCES TECHNOLOGY(technology_id) ON DELETE CASCADE ON UPDATE CASCADE
);


/*Populate tables*/
/*Insert initial categories*/
INSERT INTO CATEGORY ( name )
  VALUES
    ( 'Crops' ),
    ( 'Aquatic' ),
    ( 'Livestock' ),
    ( 'Forest and Environment' );

/*
source sipag-fiesta-AQUATIC.sql;  
source sipag-fiesta-CROPS.sql;
source sipag-fiesta-LIVESTOCK.sql;
source sipag-fiesta-FOREST.sql;
*/
source db-save.sql;