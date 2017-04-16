CREATE
  (Sonne:STERN {name: "Sonne", radius:6.957e5, lebenszeit:6})-[:SATELLIT]->(Erde:PLANET {radius:6372.8, tagnachtzyklus:24, name: "Erde"}),
  (Erde)-[:SATELLIT]->(Mond:TRABANT {radius:1737.1, name: "Mond"}),
  (Sonne)-[:SATELLIT ]->(Venus:PLANET {radius:6051.8, tagnachtzyklus:5832.45, name: "Venus"}),
  (Sonne)-[:SATELLIT ]->(Merkur:PLANET {radius:2439.7, tagnachtzyklus:1407.6, name: "Merkur"}),
(Sonne)-[:SATELLIT ]->(Mars:PLANET {name: "Mars", radius:3402.5, tagnachtzyklus:24.616666666}),
(Mars)-[:SATELLIT]->(Deimos:TRABANT {radius:11.1, name: "Deimos"}),
(Mars)-[:SATELLIT]->(Phobos:TRABANT {radius:6.2, name: "Phobos"})
  
