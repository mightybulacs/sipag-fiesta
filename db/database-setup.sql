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
  PRIMARY KEY (technology_id)
);

/*
  COMMODITY
    name
    category
    technologies (ref:TECHNOLOGY)
*/

CREATE TABLE IF NOT EXISTS COMMODITY (
  name varchar(64) NOT NULL,
  category varchar(64) NOT NULL,
  PRIMARY KEY (name),
  FOREIGN KEY (category) REFERENCES CATEGORY(name) ON DELETE CASCADE
);

/*
  OBJECTIVE
    objective_id
    technology_id
    objective
*/

CREATE TABLE IF NOT EXISTS OBJECTIVE (
  technology_id int(4) NOT NULL,
  objective text,
  FOREIGN KEY (technology_id) REFERENCES TECHNOLOGY(technology_id) ON DELETE CASCADE
);

/*
  BENEFIT
    benefit_id
    technology_id
    benefit
*/

CREATE TABLE IF NOT EXISTS BENEFIT (
  technology_id int(4) NOT NULL,
  benefit text NOT NULL,
  FOREIGN KEY (technology_id) REFERENCES TECHNOLOGY(technology_id) ON DELETE CASCADE
);

/*
  BENEFICIARY
    beneficiary_id
    technology_id
    beneficiary
*/

CREATE TABLE IF NOT EXISTS BENEFICIARY (
  technology_id int(4) NOT NULL,
  beneficiary text NOT NULL,
  FOREIGN KEY (technology_id) REFERENCES TECHNOLOGY(technology_id) ON DELETE CASCADE
);

/*
  LOCATION
    location_id
    technology_id
    location
*/

CREATE TABLE IF NOT EXISTS LOCATION (
  technology_id int(4) NOT NULL,
  location varchar(64) NOT NULL,
  FOREIGN KEY (technology_id) REFERENCES TECHNOLOGY(technology_id) ON DELETE CASCADE
);

/*  
  PARTNER
    partner_id
    technology_id
    partner
*/

CREATE TABLE IF NOT EXISTS PARTNER (
  technology_id int(4) NOT NULL,
  partner varchar(128) NOT NULL,
  FOREIGN KEY (technology_id) REFERENCES TECHNOLOGY(technology_id) ON DELETE CASCADE
);



/*Populate tables*/
/*Insert initial categories*/
INSERT INTO CATEGORY ( name )
  VALUES
    ( 'Crops' ),
    ( 'Aquatic' ),
    ( 'Livestock' ),
    ( 'Forest and Environment' );

source sipag-fiesta-CROPS.sql;
source sipag-fiesta-AQUATIC.sql;  
source sipag-fiesta-LIVESTOCK.sql;
source sipag-fiesta-FOREST.sql;