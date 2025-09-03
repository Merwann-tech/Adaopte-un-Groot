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
