PRAGMA foreign_keys = ON;

CREATE TABLE animal_type (
    animal_type_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

CREATE TABLE breed (
    breed_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    animal_type_id INTEGER NOT NULL,
    FOREIGN KEY (animal_type_id) REFERENCES animal_type(animal_type_id)
);

CREATE TABLE animal (
    animal_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    age TEXT NOT NULL,
    type_id INTEGER NOT NULL, -- <- pas clair à quoi il sert car il y a déjà animal_type_id
    animal_type_id INTEGER NOT NULL,
    breed_type_id INTEGER NOT NULL,
    city TEXT NOT NULL,
    zipcode INTEGER NOT NULL,
    description TEXT NOT NULL,
    image TEXT NOT NULL,
    FOREIGN KEY (animal_type_id) REFERENCES animal_type(animal_type_id),
    FOREIGN KEY (breed_type_id) REFERENCES breed(breed_id)
);

CREATE TABLE adopter (
    adopter_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    city TEXT NOT NULL,
    adress TEXT NOT NULL,
    zipcode INTEGER NOT NULL,
    mail_adress TEXT NOT NULL UNIQUE,
    number_of_adoption INTEGER NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME
);

CREATE TABLE shelter (
    shelter_id INTEGER PRIMARY KEY AUTOINCREMENT,
    phone_number TEXT NOT NULL,
    mail_adress TEXT NOT NULL UNIQUE,
    adress TEXT NOT NULL,
    zipcode INTEGER NOT NULL,
    city TEXT NOT NULL
);

CREATE TABLE volunteer (
    volunteer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    mail_adress TEXT NOT NULL UNIQUE,
    city TEXT NOT NULL,
    zipcode INTEGER NOT NULL,
    availablity DATE NOT NULL,
    motivation TEXT NOT NULL,
    shelter_id INTEGER NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME,
    FOREIGN KEY (shelter_id) REFERENCES shelter(shelter_id)
);

CREATE TABLE FAQs (
    FAQs_id INTEGER PRIMARY KEY AUTOINCREMENT,
    question TEXT NOT NULL,
    response TEXT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME
);

CREATE TABLE adoption_file (
    adoption_file_id INTEGER PRIMARY KEY AUTOINCREMENT,
    animal_id INTEGER NOT NULL,
    volunteer_id INTEGER NOT NULL,
    adopter_id INTEGER NOT NULL,
    shelter_id INTEGER NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME,
    FOREIGN KEY (animal_id) REFERENCES animal(animal_id),
    FOREIGN KEY (volunteer_id) REFERENCES volunteer(volunteer_id),
    FOREIGN KEY (adopter_id) REFERENCES adopter(adopter_id),
    FOREIGN KEY (shelter_id) REFERENCES shelter(shelter_id)
);
