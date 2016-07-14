DROP DATABASE IF EXISTS hotels_tp2;
CREATE DATABASE IF NOT EXISTS hotels_tp2;
USE hotels_tp2;

CREATE TABLE countries(
  id_country INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(45) NOT NULL,
  code VARCHAR(3) NOT NULL
);

CREATE TABLE cities(
  id_city INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  code VARCHAR(3) NOT NULL,
  country INT UNSIGNED,

  FOREIGN KEY(country) REFERENCES countries(id_country) ON DELETE CASCADE
);

CREATE TABLE hotels(
  id_hotel INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  price INT UNSIGNED NOT NULL,
  star TINYINT UNSIGNED NOT NULL,
  rating DOUBLE UNSIGNED NOT NULL,
  main_picture VARCHAR(200),
  city INT UNSIGNED,

  FOREIGN KEY(city) REFERENCES cities(id_city) ON DELETE CASCADE
);

CREATE TABLE services(
  id_service INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20) NOT NULL
);

CREATE TABLE hotels_service(
  id_hotel_service INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  hotel INT UNSIGNED,
  service INT UNSIGNED,

  FOREIGN KEY(hotel) REFERENCES hotels(id_hotel) ON DELETE CASCADE,
  FOREIGN KEY(service) REFERENCES services(id_service) ON DELETE CASCADE
);

INSERT INTO countries
  (name, code)
VALUES
  ('Estados Unidos', 'US'),
  ('Argentina', 'AR'),
  ('Chile', 'CL'),
  ('Mexico', 'MX'),
  ('Peru', 'PER'),
  ('España', 'ES'),
  ('Brasil', 'BR');

INSERT INTO cities
  (name,code,country)
VALUES
  ('Miami', 'MIA', 1),
  ('Rio de janeiro', 'RIO', 7),
  ('Sao Pablo', 'SAO', 7),
  ('Madrid', 'MAD', 6),
  ('Bariloche', 'BRC', 2),
  ('Buenos Aires', 'BUE', 2);

INSERT INTO hotels
  (name,price,star,rating,main_picture,city)
VALUES
  ('DoubleTree by Hilton Ocean Pnt Rsrt & Spa North Miami Beach',2999,4,7.5,'/',1),
  ('Grand Beach Hotel Surfside',4620,4,9.5,'/',3),
  ('Hyatt house Miami Airport',2186,3,8.5,'/',6),
  ('Hampton Inn Miami Airport West',1453,3,8,'/',4),
  ('Homewood Suites Miami Airport Blue Lagoon',1995,2,5.6,'/',5),
  ('Residence Inn by Marriott Miami Aventura Mall',2677,4,7,'/',2),
  ('Best Western Plus Miami Airport West Inn & Suites',1909,5,10,'/',6),
  ('Extended Stay America - Miami - Airport - Doral - 25th St',1332,3,7.5,'/',4),
  ('Sheraton Miami Airport Hotel & Executive Meeting Center',3563,5,9.9,'/',3);

INSERT INTO services
  (name)
VALUES
  ('Desayuno'),
  ('WIFI Gratis'),
  ('Estacionamiento Gratis'),
  ('Piscina');

INSERT INTO hotels_service
  (hotel,service)
VALUES
  (1, 2),
  (1, 4),
  (2, 2),
  (2, 4),
  (3, 1),
  (3, 2),
  (3, 3),
  (3, 4),
  (4, 2),
  (4, 3),
  (4, 4),
  (5, 1),
  (5, 3),
  (6, 3),
  (7, 3),
  (7, 1),
  (7, 2),
  (7, 4),
  (8, 1),
  (9, 1),
  (9, 2),
  (9, 3),
  (9, 4);