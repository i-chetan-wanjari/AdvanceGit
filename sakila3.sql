/*
SQLyog Enterprise - MySQL GUI v8.2 
MySQL - 5.0.45-community-nt : Database - fms
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `fms`;

/*Table structure for table `actor` */

DROP TABLE IF EXISTS `actor`;

CREATE TABLE `actor` (
  `actor_id` smallint(5) unsigned NOT NULL auto_increment,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45)  NULL,
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `photo_url` varchar(255) NOT NULL ,
  `delete_update` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `actor` */
insert into actor(actor_id,first_name,photo_url) values(1,'Prabhas','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3jSD9ijF6NVMQG2PYQk31SLExUHcYXP62vKBoYIlQKAL-haVy'),(2,'Trisha','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSSE1RDCdB8IfoB0hLM8E8Gk1cQDSZDIZ7Ktva_vRpnYDTdPFHF'),(3,'Nithin','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTiuAPxmEpH5OJZ6zyJj6F5seZISCl5Q50FNSC8wtK4t5ow8mlc0A'),(4,'Genelia','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTu8gQx9x5Q2qcCiA7Z7aMHmu_I9dArhDDvfw8R6MZXeMM7JBxXlQ'),(5,'Ramcharan','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTNg3zQt8oQbdb0erdJ8hd5frtNU6H0FCLxGT35FP83Silw5_oXdA'),(6,'Kajal','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRv5yrKlUh6fjg9pWa2KeveRweQqxpv38rsTqlalVtaoD6pu1yrtg'),(7,'Chiranjeevi','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReCa0glQDvAzIzPxtnSDieC6UqnSw44ekhAxLFyTgjnyOTJlpq'),(8,'VijayaShanti','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQhfHPslPniQ1VU4Bxks2t9wBXDKbkGrPFxGJK_PMS5WuR-8Vyl'),(9,'Shreya','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSSzJGV3Zv1VOTRA6Iqk7n3fxhdxpXGGEV2cyWqOWZYkLg8sbE43A'),(10,'NagaChaitanya','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRG5aI9dsq_URA4QFEaNzC3bJ5imAR66oMzSaf9g5iyMeiTI6hf'),(11,'Nani','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTXkTBMfcUIK9ByoOqFtlePKshPd5xg0fC2nXVQYrZtJO64Vxu8'),(12,'Samantha','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ27tw5jWwvxuVGfW_LuJMW5kfvchnjO2dxynK4QNyamYzv7k29jQ'),(13,'RahulRoy','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTptwv-OlyepLhXJhXgVg6IYOsoSN2XYrCPuNlskyc9scuHdUZo'),(14,'AnuAgarwal','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRcPBHM9n0IdR3hElw7VvlmG9dER0BNCKudFG2oH3_ffa8KDTpY'),(15,'AamirKhan','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSzqCtdopsalKorLXHuBRx88JbiBeE8OyRFCWgZ7I24fJRITasgUA'),(16,'KareenaKapoor','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHUMTPUpjqxJ9SR7ngOvex0dVsZYhZk_ObSknMCBg7SqabbrfV');
insert into actor (actor_id,first_name,photo_url) values(17,'KristenStewart','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN7PUI2lwK8pYJ1lCwZkrGyYcTZbrVPJOBuzh41RJZPV2lbVmS'),(18,'Taylor Lautner','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRsN0HgXY8HNaml0SVET5rwwecZoDcBeQ1XoQUa1HMw5frlTFezUg');
/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `address_id` smallint(5) unsigned NOT NULL auto_increment,
  `address` varchar(50) NOT NULL,
  `address2` varchar(50) default NULL,
  `district` varchar(20) NOT NULL,
  `city_id` smallint(5) unsigned NOT NULL,
  `postal_code` varchar(10) default NULL,
  `phone` varchar(20) NOT NULL,
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`address_id`),
  KEY `idx_fk_city_id` (`city_id`),
  CONSTRAINT `fk_address_city` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=606 DEFAULT CHARSET=utf8;

/*Data for the table `address` */


/*Table structure for table `album` */

DROP TABLE IF EXISTS `album`;

CREATE TABLE `album` (
  `album_id` int(3) unsigned NOT NULL auto_increment,
  `album_name` varchar(20) default NULL,
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `delete_update` timestamp NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`album_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;

/*Data for the table `album` */

insert into album(album_id,album_name) values(1,'Varsham'),(2,'Sye'),(3,'Magadheera'),(5,'Tagore'),(4,'Pasivadi pranam'),(6,'Darling'),(7,'Dhada'),(8,'Eega'),(9,'Aashiqui'),(10,'3Idiots'),(11,'Twilight');
/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `category_id` tinyint(3) unsigned NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `category` */
insert into category(category_id,name) values(1,'RomanticAction'),(2,'ActionSports'),(3,'HistoricalFiction'),(4,'ActionDrama'),(5,'Action'),(6,'FamilyDrama'),(7,'RomanticFantasy'),(8,'MusicalDrama'),(9,'ComedyDrama');

/*Table structure for table `category_film` */

DROP TABLE IF EXISTS `category_film`;

CREATE TABLE `category_film` (
  `category_id` tinyint(3) unsigned default NULL,
  `film_id` smallint(5) unsigned default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `category_film` */


/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `city_id` smallint(5) unsigned NOT NULL auto_increment,
  `city` varchar(50) NOT NULL,
  `country_id` smallint(5) unsigned NOT NULL,
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`city_id`),
  KEY `idx_fk_country_id` (`country_id`),
  CONSTRAINT `fk_city_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8;

/*Data for the table `city` */


/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `country_id` smallint(5) unsigned NOT NULL auto_increment,
  `country` varchar(50) NOT NULL,
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

/*Data for the table `country` */


/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `customer_id` smallint(5) unsigned NOT NULL auto_increment,
  `store_id` tinyint(3) unsigned NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(50) default NULL,
  `address_id` smallint(5) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL default '1',
  `create_date` datetime NOT NULL,
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`customer_id`),
  KEY `idx_fk_store_id` (`store_id`),
  KEY `idx_fk_address_id` (`address_id`),
  KEY `idx_last_name` (`last_name`),
  CONSTRAINT `fk_customer_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_customer_store` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=600 DEFAULT CHARSET=utf8;

/*Data for the table `customer` */


/*Table structure for table `film` */

DROP TABLE IF EXISTS `film`;

CREATE TABLE `film` (
  `film_id` smallint(5) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `description` text,
  `release_year` year(4) default NULL,
  `language_id` tinyint(3) unsigned NOT NULL,
  `length` smallint(5) unsigned default NULL,
  `rating` enum('G','PG','PG_13','R','NC_17') default 'G',
  `special_features` set('Trailers','Commentaries','Deleted Scenes','Behind the Scenes') default NULL,
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `album_id` int(3) unsigned NOT NULL default '0',
  `category_id` tinyint(3) unsigned default NULL,
  `delete_update` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`film_id`),
  UNIQUE KEY `fk_film_album` (`album_id`),
  KEY `fk_film_language` (`language_id`),
  KEY `idx_title` (`title`),
  KEY `FK_film_123` (`category_id`),
  CONSTRAINT `FK_film` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  CONSTRAINT `FK_film_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  CONSTRAINT `FK_film_123` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Data for the table `film` */

insert into film(film_id,title,release_year,rating,length,language_id,category_id,album_id) values(1,'Varsham',2004,'PG_13',3,1,1,1),(2,'Sye',2004,'PG',3,1,2,2),(3,'Magadheera',2009,'NC_17',3,1,3,3),(4,'Pasivadi pranam',1987,'PG',2,1,4,4),(5,'Tagore',2003,'NC_17',3,1,5,5),(6,'Darling',2010,'NC_17',2,1,6,6),(7,'Dhada',2011,'PG_13',2,1,1,7),(8,'Eega',2012,'NC_17',2,1,7,8),(9,'Aashiqui',1990,'PG_13',2,2,8,9),(10,'3Idiots',2009,'NC_17',3,2,9,10),(11,'The Twilight Saga:Breaking Dawn–Part1',2011,'PG_13',2,3,7,11);
/*Table structure for table `film_actor` */

DROP TABLE IF EXISTS `film_actor`;

CREATE TABLE `film_actor` (
  `actor_id` smallint(5) unsigned NOT NULL,
  `film_id` smallint(5) unsigned NOT NULL,
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  KEY `idx_fk_film_id` (`film_id`),
  KEY `FK_film_actor` (`actor_id`),
  CONSTRAINT `FK_film_actor_1` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`),
  CONSTRAINT `FK_film_actor` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `film_actor` */

insert into film_actor(film_id,actor_id) values(1,1),(1,2),(2,3),(2,4),(3,5),(3,6),(4,7),(4,8),(5,9),(5,7),(6,1),(6,6),(7,10),(7,6),(8,11),(8,12),(9,13),(9,14),(10,15),(10,16),(11,17),(11,18);
/*Table structure for table `film_category` */

DROP TABLE IF EXISTS `film_category`;

CREATE TABLE `film_category` (
  `film_id` smallint(5) unsigned NOT NULL,
  `category_id` tinyint(3) unsigned NOT NULL,
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`film_id`,`category_id`),
  KEY `fk_film_category_category` (`category_id`),
  CONSTRAINT `FK_film_category` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `film_category` */


/*Table structure for table `film_text` */

DROP TABLE IF EXISTS `film_text`;

CREATE TABLE `film_text` (
  `film_id` smallint(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY  (`film_id`),
  FULLTEXT KEY `idx_title_description` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `film_text` */


/*Table structure for table `inventory` */

DROP TABLE IF EXISTS `inventory`;

CREATE TABLE `inventory` (
  `inventory_id` mediumint(8) unsigned NOT NULL auto_increment,
  `film_id` smallint(5) unsigned NOT NULL,
  `store_id` tinyint(3) unsigned NOT NULL,
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`inventory_id`),
  KEY `idx_fk_film_id` (`film_id`),
  KEY `idx_store_id_film_id` (`store_id`,`film_id`),
  CONSTRAINT `fk_inventory_film` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_inventory_store` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4582 DEFAULT CHARSET=utf8;

/*Data for the table `inventory` */


/*Table structure for table `language` */

DROP TABLE IF EXISTS `language`;

CREATE TABLE `language` (
  `language_id` tinyint(3) unsigned NOT NULL auto_increment,
  `name` char(20) NOT NULL,
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `delete_update` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `language` */

insert into language(language_id,name) values(1,'Telugu'),(3,'English'),(2,'Hindi');
/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `payment_id` smallint(5) unsigned NOT NULL auto_increment,
  `customer_id` smallint(5) unsigned NOT NULL,
  `staff_id` tinyint(3) unsigned NOT NULL,
  `rental_id` int(11) default NULL,
  `amount` decimal(5,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`payment_id`),
  KEY `idx_fk_staff_id` (`staff_id`),
  KEY `idx_fk_customer_id` (`customer_id`),
  KEY `fk_payment_rental` (`rental_id`),
  CONSTRAINT `fk_payment_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_payment_rental` FOREIGN KEY (`rental_id`) REFERENCES `rental` (`rental_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_payment_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16050 DEFAULT CHARSET=utf8;

/*Data for the table `payment` */


/*Table structure for table `photo_collection` */

DROP TABLE IF EXISTS `photo_collection`;

CREATE TABLE `photo_collection` (
  `photo_id` int(3) unsigned NOT NULL auto_increment,
  `album_id` int(3) unsigned NOT NULL,
  `photo_url` varchar(255) NOT NULL default 'D:\\photo',
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `delete_update` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`photo_id`),
  KEY `FK_photo_collection` (`album_id`),
  CONSTRAINT `FK_photo_collection` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

/*Data for the table `photo_collection` */
insert into photo_collection(album_id,photo_url) values(1,'D:\Users\sadishai\Downloads\for fms project\1.jpg'),(2,'D:\Users\sadishai\Downloads\for fms project\2.jpg'),(3,'D:\Users\sadishai\Downloads\for fms project\3.jpg'),(4,'D:\Users\sadishai\Downloads\for fms project\4.jpg'),(5,'D:\Users\sadishai\Downloads\for fms project\5.jpg'),(6,'D:\Users\sadishai\Downloads\for fms project\6.jpg'),(7,'D:\Users\sadishai\Downloads\for fms project\7.jpg'),(8,'D:\Users\sadishai\Downloads\for fms project\8.jpg'),(9,'D:\Users\sadishai\Downloads\for fms project\12.jpg'),(10,'D:\Users\sadishai\Downloads\for fms project\14.jpg'),(11,'D:\Users\sadishai\Downloads\for fms project\19.jpg');

/*Table structure for table `rental` */

DROP TABLE IF EXISTS `rental`;

CREATE TABLE `rental` (
  `rental_id` int(11) NOT NULL auto_increment,
  `rental_date` datetime NOT NULL,
  `inventory_id` mediumint(8) unsigned NOT NULL,
  `customer_id` smallint(5) unsigned NOT NULL,
  `return_date` datetime default NULL,
  `staff_id` tinyint(3) unsigned NOT NULL,
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`rental_id`),
  UNIQUE KEY `rental_date` (`rental_date`,`inventory_id`,`customer_id`),
  KEY `idx_fk_inventory_id` (`inventory_id`),
  KEY `idx_fk_customer_id` (`customer_id`),
  KEY `idx_fk_staff_id` (`staff_id`),
  CONSTRAINT `fk_rental_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_rental_inventory` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`inventory_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_rental_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16050 DEFAULT CHARSET=utf8;

/*Data for the table `rental` */


/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `staff_id` tinyint(3) unsigned NOT NULL auto_increment,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `address_id` smallint(5) unsigned NOT NULL,
  `picture` blob,
  `email` varchar(50) default NULL,
  `store_id` tinyint(3) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL default '1',
  `username` varchar(16) NOT NULL,
  `password` varchar(40) character set utf8 collate utf8_bin default NULL,
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`staff_id`),
  KEY `idx_fk_store_id` (`store_id`),
  KEY `idx_fk_address_id` (`address_id`),
  CONSTRAINT `fk_staff_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_staff_store` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `staff` */


/*Table structure for table `store` */

DROP TABLE IF EXISTS `store`;

CREATE TABLE `store` (
  `store_id` tinyint(3) unsigned NOT NULL auto_increment,
  `manager_staff_id` tinyint(3) unsigned NOT NULL,
  `address_id` smallint(5) unsigned NOT NULL,
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`store_id`),
  UNIQUE KEY `idx_unique_manager` (`manager_staff_id`),
  KEY `idx_fk_address_id` (`address_id`),
  CONSTRAINT `fk_store_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_store_staff` FOREIGN KEY (`manager_staff_id`) REFERENCES `staff` (`staff_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `store` */


/* Trigger structure for table `customer` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `customer_create_date` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `customer_create_date` BEFORE INSERT ON `customer` FOR EACH ROW SET NEW.create_date = NOW() */$$


DELIMITER ;

/* Trigger structure for table `film` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `ins_film` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `ins_film` AFTER INSERT ON `film` FOR EACH ROW BEGIN
    INSERT INTO film_text (film_id, title, description)
        VALUES (new.film_id, new.title, new.description);
  END */$$


DELIMITER ;

/* Trigger structure for table `film` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `upd_film` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `upd_film` AFTER UPDATE ON `film` FOR EACH ROW BEGIN
    IF (old.title != new.title) or (old.description != new.description)
    THEN
        UPDATE film_text
            SET title=new.title,
                description=new.description,
                film_id=new.film_id
        WHERE film_id=old.film_id;
    END IF;
  END */$$


DELIMITER ;

/* Trigger structure for table `film` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `del_film` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `del_film` AFTER DELETE ON `film` FOR EACH ROW BEGIN
    DELETE FROM film_text WHERE film_id = old.film_id;
  END */$$


DELIMITER ;

/* Trigger structure for table `payment` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `payment_date` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `payment_date` BEFORE INSERT ON `payment` FOR EACH ROW SET NEW.payment_date = NOW() */$$


DELIMITER ;

/* Trigger structure for table `rental` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `rental_date` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `rental_date` BEFORE INSERT ON `rental` FOR EACH ROW SET NEW.rental_date = NOW() */$$


DELIMITER ;

/* Function  structure for function  `get_customer_balance` */

/*!50003 DROP FUNCTION IF EXISTS `get_customer_balance` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `get_customer_balance`(p_customer_id INT, p_effective_date DATETIME) RETURNS decimal(5,2)
    READS SQL DATA
    DETERMINISTIC
BEGIN
       #OK, WE NEED TO CALCULATE THE CURRENT BALANCE GIVEN A CUSTOMER_ID AND A DATE
       #THAT WE WANT THE BALANCE TO BE EFFECTIVE FOR. THE BALANCE IS:
       #   1) RENTAL FEES FOR ALL PREVIOUS RENTALS
       #   2) ONE DOLLAR FOR EVERY DAY THE PREVIOUS RENTALS ARE OVERDUE
       #   3) IF A FILM IS MORE THAN RENTAL_DURATION * 2 OVERDUE, CHARGE THE REPLACEMENT_COST
       #   4) SUBTRACT ALL PAYMENTS MADE BEFORE THE DATE SPECIFIED
  DECLARE v_rentfees DECIMAL(5,2); #FEES PAID TO RENT THE VIDEOS INITIALLY
  DECLARE v_overfees INTEGER;      #LATE FEES FOR PRIOR RENTALS
  DECLARE v_payments DECIMAL(5,2); #SUM OF PAYMENTS MADE PREVIOUSLY
  SELECT IFNULL(SUM(film.rental_rate),0) INTO v_rentfees
    FROM film, inventory, rental
    WHERE film.film_id = inventory.film_id
      AND inventory.inventory_id = rental.inventory_id
      AND rental.rental_date <= p_effective_date
      AND rental.customer_id = p_customer_id;
  SELECT IFNULL(SUM(IF((TO_DAYS(rental.return_date) - TO_DAYS(rental.rental_date)) > film.rental_duration,
        ((TO_DAYS(rental.return_date) - TO_DAYS(rental.rental_date)) - film.rental_duration),0)),0) INTO v_overfees
    FROM rental, inventory, film
    WHERE film.film_id = inventory.film_id
      AND inventory.inventory_id = rental.inventory_id
      AND rental.rental_date <= p_effective_date
      AND rental.customer_id = p_customer_id;
  SELECT IFNULL(SUM(payment.amount),0) INTO v_payments
    FROM payment
    WHERE payment.payment_date <= p_effective_date
    AND payment.customer_id = p_customer_id;
  RETURN v_rentfees + v_overfees - v_payments;
END */$$
DELIMITER ;

/* Function  structure for function  `inventory_held_by_customer` */

/*!50003 DROP FUNCTION IF EXISTS `inventory_held_by_customer` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `inventory_held_by_customer`(p_inventory_id INT) RETURNS int(11)
    READS SQL DATA
BEGIN
  DECLARE v_customer_id INT;
  DECLARE EXIT HANDLER FOR NOT FOUND RETURN NULL;
  SELECT customer_id INTO v_customer_id
  FROM rental
  WHERE return_date IS NULL
  AND inventory_id = p_inventory_id;
  RETURN v_customer_id;
END */$$
DELIMITER ;

/* Function  structure for function  `inventory_in_stock` */

/*!50003 DROP FUNCTION IF EXISTS `inventory_in_stock` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `inventory_in_stock`(p_inventory_id INT) RETURNS tinyint(1)
    READS SQL DATA
BEGIN
    DECLARE v_rentals INT;
    DECLARE v_out     INT;
    #AN ITEM IS IN-STOCK IF THERE ARE EITHER NO ROWS IN THE rental TABLE
    #FOR THE ITEM OR ALL ROWS HAVE return_date POPULATED
    SELECT COUNT(*) INTO v_rentals
    FROM rental
    WHERE inventory_id = p_inventory_id;
    IF v_rentals = 0 THEN
      RETURN TRUE;
    END IF;
    SELECT COUNT(rental_id) INTO v_out
    FROM inventory LEFT JOIN rental USING(inventory_id)
    WHERE inventory.inventory_id = p_inventory_id
    AND rental.return_date IS NULL;
    IF v_out > 0 THEN
      RETURN FALSE;
    ELSE
      RETURN TRUE;
    END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `film_in_stock` */

/*!50003 DROP PROCEDURE IF EXISTS  `film_in_stock` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `film_in_stock`(IN p_film_id INT, IN p_store_id INT, OUT p_film_count INT)
    READS SQL DATA
BEGIN
     SELECT inventory_id
     FROM inventory
     WHERE film_id = p_film_id
     AND store_id = p_store_id
     AND inventory_in_stock(inventory_id);
     SELECT FOUND_ROWS() INTO p_film_count;
END */$$
DELIMITER ;

/* Procedure structure for procedure `film_not_in_stock` */

/*!50003 DROP PROCEDURE IF EXISTS  `film_not_in_stock` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `film_not_in_stock`(IN p_film_id INT, IN p_store_id INT, OUT p_film_count INT)
    READS SQL DATA
BEGIN
     SELECT inventory_id
     FROM inventory
     WHERE film_id = p_film_id
     AND store_id = p_store_id
     AND NOT inventory_in_stock(inventory_id);
     SELECT FOUND_ROWS() INTO p_film_count;
END */$$
DELIMITER ;

/* Procedure structure for procedure `rewards_report` */

/*!50003 DROP PROCEDURE IF EXISTS  `rewards_report` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `rewards_report`(
    IN min_monthly_purchases TINYINT UNSIGNED
    , IN min_dollar_amount_purchased DECIMAL(10,2) UNSIGNED
    , OUT count_rewardees INT
)
    READS SQL DATA
    COMMENT 'Provides a customizable report on best customers'
proc: BEGIN
    DECLARE last_month_start DATE;
    DECLARE last_month_end DATE;
    /* Some sanity checks... */
    IF min_monthly_purchases = 0 THEN
        SELECT 'Minimum monthly purchases parameter must be > 0';
        LEAVE proc;
    END IF;
    IF min_dollar_amount_purchased = 0.00 THEN
        SELECT 'Minimum monthly dollar amount purchased parameter must be > $0.00';
        LEAVE proc;
    END IF;
    /* Determine start and end time periods */
    SET last_month_start = DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH);
    SET last_month_start = STR_TO_DATE(CONCAT(YEAR(last_month_start),'-',MONTH(last_month_start),'-01'),'%Y-%m-%d');
    SET last_month_end = LAST_DAY(last_month_start);
    /*
        Create a temporary storage area for
        Customer IDs.
    */
    CREATE TEMPORARY TABLE tmpCustomer (customer_id SMALLINT UNSIGNED NOT NULL PRIMARY KEY);
    /*
        Find all customers meeting the
        monthly purchase requirements
    */
    INSERT INTO tmpCustomer (customer_id)
    SELECT p.customer_id
    FROM payment AS p
    WHERE DATE(p.payment_date) BETWEEN last_month_start AND last_month_end
    GROUP BY customer_id
    HAVING SUM(p.amount) > min_dollar_amount_purchased
    AND COUNT(customer_id) > min_monthly_purchases;
    /* Populate OUT parameter with count of found customers */
    SELECT COUNT(*) FROM tmpCustomer INTO count_rewardees;
    /*
        Output ALL customer information of matching rewardees.
        Customize output as needed.
    */
    SELECT c.*
    FROM tmpCustomer AS t
    INNER JOIN customer AS c ON t.customer_id = c.customer_id;
    /* Clean up */
    DROP TABLE tmpCustomer;
END */$$
DELIMITER ;

/*Table structure for table `actor_info` */

DROP TABLE IF EXISTS `actor_info`;

/*!50001 DROP VIEW IF EXISTS `actor_info` */;
/*!50001 DROP TABLE IF EXISTS `actor_info` */;

/*!50001 CREATE TABLE  `actor_info`(
 `actor_id` smallint(5) unsigned ,
 `first_name` varchar(45) ,
 `last_name` varchar(45) ,
 `film_info` varchar(341) 
)*/;

/*Table structure for table `customer_list` */

DROP TABLE IF EXISTS `customer_list`;

/*!50001 DROP VIEW IF EXISTS `customer_list` */;
/*!50001 DROP TABLE IF EXISTS `customer_list` */;

/*!50001 CREATE TABLE  `customer_list`(
 `ID` smallint(5) unsigned ,
 `name` varchar(91) ,
 `address` varchar(50) ,
 `zip code` varchar(10) ,
 `phone` varchar(20) ,
 `city` varchar(50) ,
 `country` varchar(50) ,
 `notes` varchar(6) ,
 `SID` tinyint(3) unsigned 
)*/;

/*Table structure for table `sales_by_film_category` */

DROP TABLE IF EXISTS `sales_by_film_category`;

/*!50001 DROP VIEW IF EXISTS `sales_by_film_category` */;
/*!50001 DROP TABLE IF EXISTS `sales_by_film_category` */;

/*!50001 CREATE TABLE  `sales_by_film_category`(
 `category` varchar(25) ,
 `total_sales` decimal(27,2) 
)*/;

/*Table structure for table `sales_by_store` */

DROP TABLE IF EXISTS `sales_by_store`;

/*!50001 DROP VIEW IF EXISTS `sales_by_store` */;
/*!50001 DROP TABLE IF EXISTS `sales_by_store` */;

/*!50001 CREATE TABLE  `sales_by_store`(
 `store` varchar(101) ,
 `manager` varchar(91) ,
 `total_sales` decimal(27,2) 
)*/;

/*Table structure for table `staff_list` */

DROP TABLE IF EXISTS `staff_list`;

/*!50001 DROP VIEW IF EXISTS `staff_list` */;
/*!50001 DROP TABLE IF EXISTS `staff_list` */;

/*!50001 CREATE TABLE  `staff_list`(
 `ID` tinyint(3) unsigned ,
 `name` varchar(91) ,
 `address` varchar(50) ,
 `zip code` varchar(10) ,
 `phone` varchar(20) ,
 `city` varchar(50) ,
 `country` varchar(50) ,
 `SID` tinyint(3) unsigned 
)*/;

/*View structure for view actor_info */

/*!50001 DROP TABLE IF EXISTS `actor_info` */;
/*!50001 DROP VIEW IF EXISTS `actor_info` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY INVOKER VIEW `actor_info` AS select `a`.`actor_id` AS `actor_id`,`a`.`first_name` AS `first_name`,`a`.`last_name` AS `last_name`,group_concat(distinct concat(`c`.`name`,_utf8': ',(select group_concat(`f`.`title` order by `f`.`title` ASC separator ', ') AS `group_concat(``f``.``title`` order by ``f``.``title`` ASC separator ', ')` from ((`film` `f` join `film_category` `fc` on((`f`.`film_id` = `fc`.`film_id`))) join `film_actor` `fa` on((`f`.`film_id` = `fa`.`film_id`))) where ((`fc`.`category_id` = `c`.`category_id`) and (`fa`.`actor_id` = `a`.`actor_id`)))) order by `c`.`name` ASC separator '; ') AS `film_info` from (((`actor` `a` left join `film_actor` `fa` on((`a`.`actor_id` = `fa`.`actor_id`))) left join `film_category` `fc` on((`fa`.`film_id` = `fc`.`film_id`))) left join `category` `c` on((`fc`.`category_id` = `c`.`category_id`))) group by `a`.`actor_id`,`a`.`first_name`,`a`.`last_name` */;

/*View structure for view customer_list */

/*!50001 DROP TABLE IF EXISTS `customer_list` */;
/*!50001 DROP VIEW IF EXISTS `customer_list` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_list` AS select `cu`.`customer_id` AS `ID`,concat(`cu`.`first_name`,_utf8' ',`cu`.`last_name`) AS `name`,`a`.`address` AS `address`,`a`.`postal_code` AS `zip code`,`a`.`phone` AS `phone`,`city`.`city` AS `city`,`country`.`country` AS `country`,if(`cu`.`active`,_utf8'active',_utf8'') AS `notes`,`cu`.`store_id` AS `SID` from (((`customer` `cu` join `address` `a` on((`cu`.`address_id` = `a`.`address_id`))) join `city` on((`a`.`city_id` = `city`.`city_id`))) join `country` on((`city`.`country_id` = `country`.`country_id`))) */;

/*View structure for view sales_by_film_category */

/*!50001 DROP TABLE IF EXISTS `sales_by_film_category` */;
/*!50001 DROP VIEW IF EXISTS `sales_by_film_category` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sales_by_film_category` AS select `c`.`name` AS `category`,sum(`p`.`amount`) AS `total_sales` from (((((`payment` `p` join `rental` `r` on((`p`.`rental_id` = `r`.`rental_id`))) join `inventory` `i` on((`r`.`inventory_id` = `i`.`inventory_id`))) join `film` `f` on((`i`.`film_id` = `f`.`film_id`))) join `film_category` `fc` on((`f`.`film_id` = `fc`.`film_id`))) join `category` `c` on((`fc`.`category_id` = `c`.`category_id`))) group by `c`.`name` order by sum(`p`.`amount`) desc */;

/*View structure for view sales_by_store */

/*!50001 DROP TABLE IF EXISTS `sales_by_store` */;
/*!50001 DROP VIEW IF EXISTS `sales_by_store` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sales_by_store` AS select concat(`c`.`city`,_utf8',',`cy`.`country`) AS `store`,concat(`m`.`first_name`,_utf8' ',`m`.`last_name`) AS `manager`,sum(`p`.`amount`) AS `total_sales` from (((((((`payment` `p` join `rental` `r` on((`p`.`rental_id` = `r`.`rental_id`))) join `inventory` `i` on((`r`.`inventory_id` = `i`.`inventory_id`))) join `store` `s` on((`i`.`store_id` = `s`.`store_id`))) join `address` `a` on((`s`.`address_id` = `a`.`address_id`))) join `city` `c` on((`a`.`city_id` = `c`.`city_id`))) join `country` `cy` on((`c`.`country_id` = `cy`.`country_id`))) join `staff` `m` on((`s`.`manager_staff_id` = `m`.`staff_id`))) group by `s`.`store_id` order by `cy`.`country`,`c`.`city` */;

/*View structure for view staff_list */

/*!50001 DROP TABLE IF EXISTS `staff_list` */;
/*!50001 DROP VIEW IF EXISTS `staff_list` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `staff_list` AS select `s`.`staff_id` AS `ID`,concat(`s`.`first_name`,_utf8' ',`s`.`last_name`) AS `name`,`a`.`address` AS `address`,`a`.`postal_code` AS `zip code`,`a`.`phone` AS `phone`,`city`.`city` AS `city`,`country`.`country` AS `country`,`s`.`store_id` AS `SID` from (((`staff` `s` join `address` `a` on((`s`.`address_id` = `a`.`address_id`))) join `city` on((`a`.`city_id` = `city`.`city_id`))) join `country` on((`city`.`country_id` = `country`.`country_id`))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
