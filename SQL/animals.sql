--Base de donnée MVP

INSERT INTO animal (name, age, breed_type_id, animal_type_id, city, zipcode, description, image) VALUES
('Charlie', '5 ans', '1', '1', 'Lille', '59000', 'Charlie est un petit chien calme et affectueux qui adore les balades tranquilles et les caresses sur le canapé.', 'images/charlesdeluvio-K4mSJ7kc0As-unsplash.jpg'),
('Mia', '2 ans', '2', '2', 'Strasbourg', '67000', 'Mia est une boule de tendresse curieuse et joueuse, toujours prête à ronronner près de vous.', 'images/manja-vitolic-gKXKBY-C-Dk-unsplash.jpg'),
('Coco', '1 an', '3', '3', 'Annecy', '74000', 'Coco est un petit lapin plein d’énergie, très doux et parfait pour un foyer aimant et paisible.', 'images/chan-swan-NKyl19P5IHg-unsplash.jpg'),
('Rex', '4 ans', '4', '1', 'Grenoble', '38000', 'Rex est un chien loyal et majestueux, idéal pour une personne douce et patiente qui aime les câlins silencieux.', 'images/alan-king-KZv7w34tluA-unsplash.jpg'),
('Luna', '3 ans', '5', '2', 'Bordeaux', '33000', 'Luna adore les coins ensoleillés et les siestes à vos côtés. Elle vous offrira tout l’amour d’un regard félin.', 'images/jae-park-7GX5aICb5i4-unsplash.jpg'),
('Biscuit', '3 mois', '6', '4', 'Tours', '37000', 'Biscuit est tout petit mais plein de vie ! Il aime les légumes croquants et les instants de douceur en famille.', 'images/yosei-g-OVgE3m4MHKM-unsplash.jpg'),
('Rio', '5 mois', '7', '3', 'Poitiers', '86000', 'Rio est discret, mignon comme tout, et adore explorer les petits coins de la maison avec délicatesse.', 'images/melanie-kreutz-IFnknR2Mv5o-unsplash.jpg'),
('Ruby', '2 ans', '8', '1', 'Chamonix', '74400', 'Ruby est une boule de neige pleine d’amour ! Elle adore les promenades et les câlins par temps frais.', 'images/peri-stojnic-5Vr_RVPfbMI-unsplash.jpg');


INSERT INTO animal_type (name) VALUES
('Chien'),
('Chat'),
('Lapin'),
('Rongeur');

INSERT INTO breed(name,animal_type_id) VALUES
('Pug','1'),
('Chat noir et blanc', '2'),
('Lapin', '3'),
('Chow-chow', '1'),
('Chat Roux', '2'),
('Cochon d''Inde', '4'),
('Lapin nain brun', '3'),
('Chien Samoyed', '1');


--Ajout Groot

INSERT INTO breed(name,animal_type_id) VALUES
('Chat du Bengal', '2');

INSERT INTO animal (name, age, breed_type_id, animal_type_id, city, zipcode, description, image) VALUES
('Groot', '12 ans', '9','2','Nantes', '44800','Groot adore gueuler dans sa gamelle mais Groot est une petite (grosse) boule d''amour. Il adore manger, ronfler et crier.', 'images/Groot.jpg');


--Ajout Petoche

INSERT INTO animal_type(name) VALUES
('Singe');

INSERT INTO breed(name,animal_type_id) VALUES
('Gibbon', '5');

INSERT INTO animal (name, age, breed_type_id, animal_type_id, city, zipcode, description, image) VALUES
('Petoche', '36 ans', '10','5','Nantes', '44300','Petoche se sert de ses bras pour enlacer ses amis, à défaut de lancer son caca.', 'images/Petoche.jpg');

-- Ajout Touklakos

INSERT INTO animal_type(name) VALUES
('Cheval');

INSERT INTO breed(name, animal_type_id) VALUES
('Falabella', '6');

INSERT INTO animal(name, age, breed_type_id, animal_type_id, city, zipcode, description, image) VALUES
('Touklakos', '12 ans', '11','6','Nantes', '44100','Touklakos adore galoper dans les hautes herbes.', 'images/Touklakos.jpg');

-- Ajout Patapouf

INSERT INTO animal_type(name) VALUES
('Panda');

INSERT INTO breed(name, animal_type_id) VALUES
('Panda Roux', '7');

INSERT INTO animal(name, age, breed_type_id, animal_type_id, city, zipcode, description, image) VALUES
('Patapouf', '2 ans', '12','7','Nantes', '44200','Patapouf est chou comme tout mais il a une tête à connaître le goût des feutres.', 'images/Patapouf.jpg');

-- Ajout PLEIN DANIMAUX

INSERT INTO animal (name, age, breed_type_id, animal_type_id, city, zipcode, description, image) VALUES
('Ajax ', '1 an', '13', '11', 'Nantes', '44000', 'Ajax est un jeune lion curieux et plein d’énergie, toujours prêt à bondir dans de nouvelles aventures.', 'images/Ajax.jpg'),
('Balourd', '48 ans', '14', '8', 'Nantes', '44000', 'Balourd est un sage protecteur des glaces, calme et impressionnant, mais avec un grand cœur tendre.', 'images/Balourd.jpg'),
('Kumo', '3 ans', '15', '11', 'Nantes', '44000', 'Kumo est un tigre élégant et joueur, qui adore courir et montrer sa force avec douceur.', 'images/Kumo.jpg'),
('Boursemol', '4 ans', '16', '11', 'Nantes', '44000', 'Boursemol est un félin discret et agile, toujours en quête d’un coin tranquille pour se reposer.', 'images/Boursemol.jpg'),
('Malinx', '7 ans', '17', '11', 'Nantes', '44000', 'Malinx a l’œil vif et le pas léger, un compagnon mystérieux qui cache beaucoup d’affection derrière son allure sauvage.', 'images/Malinx.jpg'),
('Nemo', '3 mois', '18', '9', 'Nantes', '44000', 'Nemo est un petit nageur joyeux et coloré, toujours en train d’explorer son univers marin.', 'images/Nemo.jpg'),
('Sushi', '5 mois', '19', '9', 'Nantes', '44000', 'Sushi est vif et insouciant, il aime glisser dans les courants avec légèreté et malice.', 'images/Sushi.jpg'),
('Milktooth', '2 ans', '20', '9', 'Nantes', '44000', 'Milktooth est jeune mais déjà impressionnant, un explorateur des océans au regard curieux et joueur.', 'images/Milktooth.jpg'),
('Soap', '4 ans', '21', '9', 'Nantes', '44000', 'Soap est souple et discret, un véritable petit mystère des profondeurs, doux à observer.', 'images/Soap.jpg'),
('Balou', '7 ans', '22', '8', 'Nantes', '44000', 'Balou est affectueux et gourmand, il adore les siestes au soleil et les moments paisibles.', 'images/Balou.jpg'),
('Marin', '3 mois', '23', '9', 'Nantes', '44000', 'Marin est minuscule et éclatant, il nage avec insouciance et apporte une touche de joie à chaque regard.', 'images/Marin.jpg'),
('Eagly', '5 mois', '24', '10', 'Nantes', '44000', 'Eagly est jeune mais majestueux, toujours prêt à prendre son envol vers de nouveaux horizons.', 'images/Eagly.jpg'),
('Cormoch', '2 ans', '25', '10', 'Nantes', '44000', 'Ce corbeau est malin et observateur, avec un caractère curieux et une élégance discrète.', 'images/corbeau.jpg');


INSERT INTO animal_type (name) VALUES
('Ours'),
('Poisson'),
('Oiseau'),
('Felin');

INSERT INTO breed(name,animal_type_id) VALUES
('Lion','11'),
('Ours polaire', '8'),
('Tigre', '11'),
('Léopard', '11'),
('Lynx', '11'),
('Poisson-clown', '9'),
('Saumon', '9'),
('Requin blanc', '9'),
('Anguille','9'),
('Ours brun', '8'),
('Poisson rouge', '9'),
('Aigle royal', '10'),
('Corbeau', '10');


INSERT INTO animal (name, age, breed_type_id, animal_type_id, city, zipcode, description, image) VALUES
('Charlie', '5 ans', '1', '1', 'Lille', '59000', 'Charlie est un petit chien calme et affectueux qui adore les balades tranquilles et les caresses sur le canapé.', 'images/charlesdeluvio-K4mSJ7kc0As-unsplash.jpg'),
('Charlie', '5 ans', '1', '1', 'Lille', '59000', 'Charlie est un petit chien calme et affectueux qui adore les balades tranquilles et les caresses sur le canapé.', 'images/charlesdeluvio-K4mSJ7kc0As-unsplash.jpg'),
('Charlie', '5 ans', '1', '1', 'Lille', '59000', 'Charlie est un petit chien calme et affectueux qui adore les balades tranquilles et les caresses sur le canapé.', 'images/charlesdeluvio-K4mSJ7kc0As-unsplash.jpg'),
('Charlie', '5 ans', '1', '1', 'Lille', '59000', 'Charlie est un petit chien calme et affectueux qui adore les balades tranquilles et les caresses sur le canapé.', 'images/charlesdeluvio-K4mSJ7kc0As-unsplash.jpg'),
('Charlie', '5 ans', '1', '1', 'Lille', '59000', 'Charlie est un petit chien calme et affectueux qui adore les balades tranquilles et les caresses sur le canapé.', 'images/charlesdeluvio-K4mSJ7kc0As-unsplash.jpg'),
('Charlie', '5 ans', '1', '1', 'Lille', '59000', 'Charlie est un petit chien calme et affectueux qui adore les balades tranquilles et les caresses sur le canapé.', 'images/charlesdeluvio-K4mSJ7kc0As-unsplash.jpg'),
('Charlie', '5 ans', '1', '1', 'Lille', '59000', 'Charlie est un petit chien calme et affectueux qui adore les balades tranquilles et les caresses sur le canapé.', 'images/charlesdeluvio-K4mSJ7kc0As-unsplash.jpg'),
('Charlie', '5 ans', '1', '1', 'Lille', '59000', 'Charlie est un petit chien calme et affectueux qui adore les balades tranquilles et les caresses sur le canapé.', 'images/charlesdeluvio-K4mSJ7kc0As-unsplash.jpg'),
('Charlie', '5 ans', '1', '1', 'Lille', '59000', 'Charlie est un petit chien calme et affectueux qui adore les balades tranquilles et les caresses sur le canapé.', 'images/charlesdeluvio-K4mSJ7kc0As-unsplash.jpg'),
('Charlie', '5 ans', '1', '1', 'Lille', '59000', 'Charlie est un petit chien calme et affectueux qui adore les balades tranquilles et les caresses sur le canapé.', 'images/charlesdeluvio-K4mSJ7kc0As-unsplash.jpg'),
('Charlie', '5 ans', '1', '1', 'Lille', '59000', 'Charlie est un petit chien calme et affectueux qui adore les balades tranquilles et les caresses sur le canapé.', 'images/charlesdeluvio-K4mSJ7kc0As-unsplash.jpg'),
('Charlie', '5 ans', '1', '1', 'Lille', '59000', 'Charlie est un petit chien calme et affectueux qui adore les balades tranquilles et les caresses sur le canapé.', 'images/charlesdeluvio-K4mSJ7kc0As-unsplash.jpg'),
('Charlie', '5 ans', '1', '1', 'Lille', '59000', 'Charlie est un petit chien calme et affectueux qui adore les balades tranquilles et les caresses sur le canapé.', 'images/charlesdeluvio-K4mSJ7kc0As-unsplash.jpg'),
('Charlie', '5 ans', '1', '1', 'Lille', '59000', 'Charlie est un petit chien calme et affectueux qui adore les balades tranquilles et les caresses sur le canapé.', 'images/charlesdeluvio-K4mSJ7kc0As-unsplash.jpg');


INSERT INTO animal (name, age, breed_type_id, animal_type_id, city, zipcode, description, image) VALUES
('Mia', '2 ans', '2', '2', 'Strasbourg', '67000', 'Mia est une boule de tendresse curieuse et joueuse, toujours prête à ronronner près de vous.', 'images/manja-vitolic-gKXKBY-C-Dk-unsplash.jpg'),
('Mia', '2 ans', '2', '2', 'Strasbourg', '67000', 'Mia est une boule de tendresse curieuse et joueuse, toujours prête à ronronner près de vous.', 'images/manja-vitolic-gKXKBY-C-Dk-unsplash.jpg'),
('Mia', '2 ans', '2', '2', 'Strasbourg', '67000', 'Mia est une boule de tendresse curieuse et joueuse, toujours prête à ronronner près de vous.', 'images/manja-vitolic-gKXKBY-C-Dk-unsplash.jpg'),
('Mia', '2 ans', '2', '2', 'Strasbourg', '67000', 'Mia est une boule de tendresse curieuse et joueuse, toujours prête à ronronner près de vous.', 'images/manja-vitolic-gKXKBY-C-Dk-unsplash.jpg'),
('Mia', '2 ans', '2', '2', 'Strasbourg', '67000', 'Mia est une boule de tendresse curieuse et joueuse, toujours prête à ronronner près de vous.', 'images/manja-vitolic-gKXKBY-C-Dk-unsplash.jpg'),
('Mia', '2 ans', '2', '2', 'Strasbourg', '67000', 'Mia est une boule de tendresse curieuse et joueuse, toujours prête à ronronner près de vous.', 'images/manja-vitolic-gKXKBY-C-Dk-unsplash.jpg'),
('Mia', '2 ans', '2', '2', 'Strasbourg', '67000', 'Mia est une boule de tendresse curieuse et joueuse, toujours prête à ronronner près de vous.', 'images/manja-vitolic-gKXKBY-C-Dk-unsplash.jpg');