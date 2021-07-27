CREATE DATABASE google_db;
USE google_db;

CREATE TABLE google_data(
	App VARCHAR(200) NOT NULL,
    Category VARCHAR(200) NOT NULL,
    Rating FLOAT NOT NULL,
    NumReviews INT NOT NULL,
    Size VARCHAR(200) NOT NULL,
    Installs INT NOT NULL,
    Charge VARCHAR(200) NOT NULL,
    Price FLOAT NOT NULL,
    ContentRating VARCHAR(200) NOT NULL);
    
SELECT * FROM google_data;