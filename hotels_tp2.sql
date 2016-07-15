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
  description TEXT,
  id_city INT UNSIGNED,

  FOREIGN KEY(id_city) REFERENCES cities(id_city) ON DELETE CASCADE
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
  (name,price,star,rating,main_picture,id_city,description)
VALUES
  ('DoubleTree by Hilton Ocean Pnt Rsrt & Spa North Miami Beach',2999,4,7.5,'/',1,'DoubleTree by Hilton Ocean Pnt Rsrt & Spa North Miami Beach se encuentra en la playa de Miami Sunny Isles Beach línea de playa, cerca de Intracoastal Mall, Aventura Mall y Oleta River State Park. Otros lugares de interés cerca de este hotel spa incluyen Haulover Park Marina y Claustros del monasterio de Saint Bernard de Clairvaux. Características del hotel. DoubleTree by Hilton Ocean Pnt Rsrt & Spa North Miami Beach cuenta con una cafetería / cafetería, un bar junto a la piscina y un bar / salón. Servicio de habitaciones disponible. Este hotel sirve desayuno bufé caliente y frío todas las mañanas en restaurante (de pago). Las comodidades recreativas incluyen una piscina al aire libre, sauna, gimnasio y baño turco. El establecimiento dispone de un spa que ofrece tratamientos corporales, masajes / salas de tratamiento, tratamientos faciales y servicios de belleza. Este establecimiento de 3.5 estrellas cuenta con centro de negocios abierto las 24 horas y ofrece salas de reuniones para grupos pequeños y equipo audiovisual. Conexión inalámbrica a Internet gratis está disponible en las zonas públicas y este hotel dispone de un puesto de PC. Este establecimiento situado en Sunny Isles Beach dispone de 325 metros cuadrados de espacio para eventos, sala de recepciones, salas de conferencias / reuniones y un salón de baile. Servicios de bodas, servicios de conserjería y asistencia turística. Entre los servicios adicionales incluyen una terraza, personal multilingüe, y tiendas de regalos / quiosco. El establecimiento dispone de zonas para fumar. Una renovación total de esta propiedad fue terminada en junio de 2011. 125 habitaciones con aire acondicionado de DoubleTree by Hilton Ocean Pnt Rsrt & Spa North Miami Beach cuentan con ordenador portátil compatible con caja fuerte y lavadora / secadora. Los alojamientos disponen de playa, al océano o vistas parciales al mar. Se ofrece frigorífico, horno microondas y cafetera / tetera. Los baños tienen maquillaje / arreglo de espejos, artículos de higiene personal de diseño y secador de pelo. Acceso a Internet alámbrico de alta velocidad e inalámbrico está disponible por un suplemento. Además de periódicos gratuitos, las habitaciones disponen de teléfono multilínea con correo de voz. 27-pulgadas Televisor de pantalla plana con canales por cable de suscripción. Las habitaciones también incluyen ventanas que se pueden abrir, cortinas blackout / cortinas de cabello, plancha / tabla de planchar y radio despertador. Los clientes pueden solicitar masajes en la habitación y llamadas de despertador. Servicio de limpieza está disponible todos los días. Notificaciones y cargos: Las reservas son necesarias para los servicios de masaje y los tratamientos de spa. Pueden realizar las reservas poniéndose en contacto con el hotel antes de su llegada, utilizando la información de contacto en la confirmación de la reserva. Spring Break mínima de check-in 21 años de edad. Los niños de 18 años o menos gratis al ocupar el padre o tutor habitación, utilizando las camas existentesLos los huéspedes que se alojen en las habitaciones deben estar registrados en el hotel. Los siguientes cargos y depósitos se pagan directamente en el hotel al recibir el servicio, el check-in o del check-out. Cargo por parking: USD 27 por día (privilegios de entrada /) Internet inalámbrico en las habitaciones: 9.95 USD por día (la tarifa puede variar) Hot and cuota frío desayuno bufé: 17.95 USD por persona (precio aproximado) Cama adicional están disponibles para un cargo adicional de FEEA se cobrará por el uso de ciertas instalaciones - Spa La lista anterior puede estar incompleta. Las tarifas y depósitos pueden no incluir impuestos y están sujetos a cambios.'),
  ('Grand Beach Hotel Surfside',4620,4,9.5,'/',3,'Esta popular propiedad goza de una ubicación privilegiada en Surfside. El Hotel fue construido en 2013. El Hotel tiene 1 anexos. La propiedad cuenta con un edificio principal con 12 plantas anexas. El edificio anexo tiene 3 plantas. Hay un total de 268 habitaciones. La propiedad consta de 250 habitaciones individuales y 18 habitaciones dobles. El Hotel está a pocos minutos en coche desde el aeropuerto. Hay un campo de golf en las inmediaciones del Hotel. La propiedad cuenta con acceso para minusválidos. Se admiten animales de menos de 5 kg en de las instalaciones, por un cargo adicional.' ),
  ('Hyatt house Miami Airport',2186,3,8.5,'/',6,'El Hyatt House se encuentra a 15 minutos en coche del aeropuerto internacional de Miami ya 45 minutos en coche del distrito Art Deco. El hotel ofrece conexión Wi-Fi en áreas sociales. Las habitaciones están equipadas con aire acondicionado y cafetera, además de microondas, refrigerador, secador de pelo y artículos de aseo. El Hyatt dispone de piscina descubierta, bañera de hidromasaje y un gimnasio. También hay un centro de negocios con salas de reuniones. Todas las mañanas se sirve un desayuno buffet caliente y frío. Servicios de aparcamiento y transporte al aeropuerto son gratuitos.'),
  ('Hampton Inn Miami Airport West',1453,3,8,'/',4,'El Hampton Inn Miami Airport West está ubicado en Doral, goza de una buena ubicación cerca del aeropuerto y cerca de lugares de interés como Doral Golf Resort, Miami Springs Golf Course y Mall of the Americas. En las cercanías también se encuentra Miami International Mall. El Hampton Inn Miami Airport West dispone de piscina descubierta y gimnasio. Las zonas públicas disponen de acceso a Internet por cable y Wi-Fi de alta velocidad gratuito. Este hotel cuenta con servicio de negocios que incluye centro de negocios abierto las 24 horas, una sala de conferencias o reuniones y equipo audiovisual. El personal brinda servicios de conserjería y servicios de oficina. Entre los servicios adicionales figuran atención multilingüe, área para parrillas y supermercado. A los huéspedes se les ofrece acceso gratuito a servicio de transporte al aeropuerto ida y vuelta disponible las 24 horas. Los menores de 18 años se pueden alojar gratis utilizando las camas existentes. No es posible agregar camas. Hasta 1 menor de 2 años se puede alojar gratis en una cuna. Hay estacionamiento gratuito para los huéspedes, el mismo puede ser utilizado luego del check out. No se admiten mascotas. Las 126 habitaciones disponen de vistas a la ciudad o a la piscina, cuentan con aire acondicionado e incluyen cafetera, tetera y secador de pelo. Las camas disponen de una capa de acolchado adicional, juegos de cama triples y ropa de cama de alta calidad. Se ofrece acceso a Internet alámbrico e inalámbrico de alta velocidad gratuito. El televisor plasma de 42 pulgadas ofrece canales por cable de suscripción, películas de pago y conexión a Internet por televisión de pago. Todos los alojamientos proporcionan escritorio, silla ergonómica y teléfono directo con contestador; se ofrecen llamadas locales gratuitas a las cuales se le pueden aplicar restricciones. Los baños disponen de ducha y bañera combinada, y artículos de higiene personal gratuitos. Las habitaciones también cuentan con tabla de planchar con plancha y radio despertador. Según sus necesidades, los huéspedes pueden solicitar frigorífico, horno microondas y servicio de descubierta. Se ofrece servicio de limpieza todos los días. Las habitaciones de este alojamiento fueron completamente renovadas en enero de 2011. OFERTA: Desde el 26 de abril al 30 de septiembre 2013, en estadias de 3 noches o mas, se le obsequiara una tarjeta telefonica de larga distancia por habitacion.'),
  ('Homewood Suites Miami Airport Blue Lagoon',1995,2,5.6,'/',5,'Este hotel se encuentra en Miami, Florida, y proporciona un servicio limitado de traslado gratuito al aeropuerto internacional de Miami. Ofrece vistas a la Laguna Azul y suites con conexión Wi-Fi gratuita. El Homewood Suites Miami Airport Blue Lagoon dispone de habitaciones con TV por cable. Cada suite cuenta con una zona de cocina con microondas, nevera pequeña y fogones. También cuentan con zona de estar independiente. Todos los días de la semana se sirve un desayuno bufé con platos calientes. De lunes a jueves por la noche se organiza una recepción de bienvenida con bebidas y platos ligeros. En el Miami Airport Homewood Suites encontrará una piscina al aire libre, una bañera de hidromasaje y una tienda de regalos. El Homewood Suites Blue Lagoon está a 4,8 km del campo de golf de Melreese, a 9,3 km de Miami Beach y a 11,2 km de Coconut Grove.'),
  ('Residence Inn by Marriott Miami Aventura Mall',2677,4,7,'/',2,'El Residence Inn by Marriott Miami Aventura Mall se encuentra en la ciudad suburbana de Aventura, a 10 minutos en coche del campo de golf Greynolds y 20 millas del Aeropuerto Internacional de Miami. La propiedad cuenta con una piscina exterior y gimnasio. Todas las habitaciones tienen aire acondicionado, TV por cable, caja fuerte y secador de pelo. Todas las unidades también ofrecen una cocina con microondas y nevera. El hotel cuenta con un centro de negocios con salas de reuniones y una sala de conferencias. Hay aparcamiento gratuito y conexión Wi-Fi gratuita en las habitaciones y zonas comunes.'),
  ('Best Western Plus Miami Airport West Inn & Suites',1909,5,10,'/',6,'Ubicado a 3 km del Dolphin Mall y a 17 km del Aeropuerto Internacional de Miami, el Best Western Plus Miami Airport West Inn & Suites ofrece una piscina al aire libre y traslados gratuitos al aeropuerto y a algunos centros comerciales de la zona. El hotel se encuentra a 5 minutos en auto del Miami International Mall y a 23 km del Downtown Bus Terminal. Todas las habitaciones incluyen conexión Wi-Fi gratis, TV LCD por cable, escritorio con teléfono de marcado directo y aire acondicionado. El baño es privado y posee ducha, amenidades y secador de cabello. Las suites disponen de mayor tamaño y una zona de estar con sofá. El Best Western Plus alberga un salón comedor donde todas las mañanas se sirve un desayuno americano incluido en la tarifa. Consiste en una variedad de platos calientes, huevos revueltos, cereales y frutas. Entre las comodidades, se ofrece estacionamiento gratuito, centro de negocios, gimnasio y un salón para reuniones. La recepción está disponible durante las 24h y hay servicio de lavandería por un cargo adicional. El Best Western Plus está situado a 40 minutos en auto de Miami Beach, donde podrá disfrutar de las playas de Miami o de las tiendas y restaurantes de Lincoln Road. El establecimiento queda a 22 km del American Airlines Arena y a 19 km del Marlins Park.'),
  ('Extended Stay America - Miami - Airport - Doral - 25th St',1332,3,7.5,'/',4,'En Doral, Extended Stay America - Miami - Airport - Doral - 25th St, cerca del aeropuerto y cerca de Doral Golf Resort, Mall de las Américas, y Miami Springs Golf Course. Cerca de lugares de interés como Miami International Mall. Características del hotel. Las comodidades recreativas incluyen un gimnasio. Conexión inalámbrica a Internet gratis está disponible en las zonas públicas. El hotel sirve un desayuno continental gratuito. El parking o estacionamiento es gratuito. Entre los servicios adicionales figuran área para parrillas, lavandería y café / té en el vestíbulo. 98 habitaciones con aire acondicionado de Extended Stay America - Miami - Airport - Doral - 25th St equipadas con cafetera / tetera y ventanas que se pueden abrir. Cocina se compone de quemador para cocinar, horno microondas, frigorífico y utensilios de cocina / platos / utensilios. Los baños disponen de ducha / bañera y secador de pelo. Acceso inalámbrico a Internet es gratuito. Las habitaciones cuentan con teléfono directo con buzón de voz, así como llamadas locales gratuitas (pueden existir restricciones). 32-pulgadas Televisor de pantalla plana con canales por cable, canales de películas gratuitos y reproductor de DVD. También se incluyen plancha / tabla de planchar y radio despertador. Servicio de limpieza está disponible todos los días. Notificaciones y cargos: Los niños de 17 años o menos gratis al ocupar el padre o tutor habitación no requieran cama adicional. Los siguientes cargos y depósitos se pagan directamente en el hotel al recibir el servicio, el check-in o del check-out. Mascotas: 25 USD por día (máx. 150 USD por estancia) Servicio de limpieza semanal; pago adicional por limpieza La lista anterior puede estar incompleta. Las tarifas y depósitos pueden no incluir impuestos y están sujetos a cambios.'),
  ('Sheraton Miami Airport Hotel & Executive Meeting Center',3563,5,9.9,'/',3,'Situado a 5 minutos en auto del Aeropuerto Internacional de Miami, el Sheraton Miami Airport Hotel & Executive Meeting Center cuenta con conexión Wi-Fi sin costo en toda la propiedad y un salón para eventos de 1600 m² que puede ser dividido. El hotel se encuentra a 13 km del Dolphin Mall y a 5.5 km del Marlins Park. Las habitaciones están insonorizadas y equipadas con TV LCD 32’ por cable, aire acondicionado y escritorio. Además, el baño cuenta con secador de cabello y amenidades. Algunas unidades tienen vista hacia el campo de golf y otras ofrecen acceso al club lounge del hotel. El Sheraton Miami Airport alberga el restaurante Rickenbacker, donde se sirve un desayuno buffet por un suplemento que consiste en una variedad de platos calientes. Para almuerzos y cenas hay un menú a la carta internacional. El Tiki Bar está junto a la piscina y también cuenta con servicio al cuarto. Entre las comodidades, se destaca el servicio de traslado gratuito al aeropuerto y a centros comerciales de sus alrededores. El huésped del Sheraton Miami Airport podrá disfrutar de una piscina al aire libre, centro de negocios, gimnasio y recepción disponible las 24h. El establecimiento está ubicado a 20 minutos en auto de South Beach, la zona de playas de Miami y donde se encuentra la Lincoln Road, paseo de compras de la ciudad. El Vizcaya Museum & Gardens queda a 12.5 km, mientras el Downtown Bus Terminal se halla a 9.5 km.');

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