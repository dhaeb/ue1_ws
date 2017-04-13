DROP DATABASE ID NOT EXISTS himmel;
CREATE DATABASE IF NOT EXISTS himmel;

use himmel;

CREATE TABLE IF NOT EXISTS himmelskoerper_typ(
	id int PRIMARY KEY,
	name varchar(255)
);

INSERT INTO himmelskoerper_typ VALUES 
(1, 'Stern'),
(2, 'Planet'),
(3, 'Mond'),
(4, 'Asteroid');

CREATE TABLE IF NOT EXISTS himmelskoerper(
	id int AUTO_INCREMENT PRIMARY KEY,
  typ int NOT NULL,
  name varchar(255),
  radius decimal,
  tagnachtzyklus decimal,
  lebenszeit decimal,
  FOREIGN KEY (typ) REFERENCES himmelskoerper_typ(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS satellit(
  basis int,
  trabant int,
  PRIMARY KEY (basis, trabant),
  FOREIGN KEY (basis) REFERENCES himmelskoerper(id) ON DELETE CASCADE,
  FOREIGN KEY (trabant) REFERENCES himmelskoerper(id) ON DELETE CASCADE
);

INSERT INTO himmelskoerper(id, typ, name, radius, tagnachtzyklus, lebenszeit) VALUES
(1, 1, 'Sonne', 6.957e5, NULL, 6),
(2, 2, 'Merkur', 2439.7, 1407.6, NULL),
(3, 2, 'Venus', 6051.8, 5832.45, NULL),
(4, 2, 'Erde', 6372.8, 24, NULL),
(5, 2, 'Mars', 3402.5, 24.616666666, NULL),
(6, 3, 'Mond', 1737.1, NULL, NULL),
(7, 3, 'Phobos', 11.1, NULL, NULL),
(8, 3, 'Deimos', 6.2, NULL, NULL)
;
