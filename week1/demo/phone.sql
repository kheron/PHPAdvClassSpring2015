CREATE DATABASE PHPadvClassSpring2015 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE PHPadvClassSpring2015;

CREATE TABLE IF NOT EXISTS phonetype (
	phonetypeid TINYINT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
	phonetype VARCHAR(50) NOT NULL UNIQUE KEY, 					 	 
	active TINYINT(1) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS phone (
	phoneid INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,	
	phone VARCHAR(12) NOT NULL UNIQUE KEY,
	phonetypeid TINYINT UNSIGNED DEFAULT NULL,
	FOREIGN KEY (phonetypeid) REFERENCES phonetype(phonetypeid),	
	logged DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',	 
	lastupdated DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	active tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;
