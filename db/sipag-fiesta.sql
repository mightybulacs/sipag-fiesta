/*
  DB Schema for Sipag Fiesta

  cd /sipag-fiesta/db
  in mysql:
  source sipag-fiesta.sql

  truncate all tables:

  SELECT Concat('TRUNCATE TABLE ',table_schema,'.',TABLE_NAME, ';') FROM INFORMATION_SCHEMA.TABLES where table_schema in (db1_name,db2_name);
*/

/*
CATEGORY (
  name varchar(64) NOT NULL,
  thumbnail tinytext,
  PRIMARY KEY (name)
);
*/



/*COMMODITY (
  name varchar(64) NOT NULL,
  category varchar(64) NOT NULL,
  PRIMARY KEY (name),
  FOREIGN KEY (category) REFERENCES CATEGORY(name) ON DELETE CASCADE
);*/


/*TECHNOLOGY (
  technology_id int(4) NOT NULL AUTO_INCREMENT,
  title varchar(255) NOT NULL,
  description text NOT NULL,
  objective_intro text,
  PRIMARY KEY (technology_id)
);*/

/*OBJECTIVE (
  technology_id int(4) NOT NULL,
  objective text,
  FOREIGN KEY (technology_id) REFERENCES TECHNOLOGY(technology_id) ON DELETE CASCADE
);*/

/*BENEFIT (
  technology_id int(4) NOT NULL,
  benefit text NOT NULL,
  FOREIGN KEY (technology_id) REFERENCES TECHNOLOGY(technology_id) ON DELETE CASCADE
);*/


/*BENEFICIARY (
  technology_id int(4) NOT NULL,
  beneficiary text NOT NULL,
  FOREIGN KEY (technology_id) REFERENCES TECHNOLOGY(technology_id) ON DELETE CASCADE
);*/

/*CREATE TABLE IF NOT EXISTS LOCATION (
  technology_id int(4) NOT NULL,
  location varchar(64) NOT NULL,
  FOREIGN KEY (technology_id) REFERENCES TECHNOLOGY(technology_id) ON DELETE CASCADE
);
*/

/*CREATE TABLE IF NOT EXISTS PARTNER (
  technology_id int(4) NOT NULL,
  partner varchar(128) NOT NULL,
  FOREIGN KEY (technology_id) REFERENCES TECHNOLOGY(technology_id) ON DELETE CASCADE
);*/




/*-------------------------------------------------------------------------------------------------------------------------------------*/


/*-------------------------------------------------------------------------------------------------------------------------------------*/



/*--------------------------------------------------------------------------------------------------------------------------------------*/
