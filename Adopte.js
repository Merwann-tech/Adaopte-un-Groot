const searchButton = document.getElementById("searchButton");
const animalType = document.getElementById("animal_type");
const resultSearch = document.getElementById("resultSearch");
let locationInput = document.getElementById("location");

let db = null;

async function getOrInitDB() {
    if (db === null) {
        const SQL = await initSqlJs({
            locateFile: (file) =>
                `https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.13.0/${file}`,
        });

        const response = await fetch("SQL/adaopte.db");
        const buffer = await response.arrayBuffer();
        db = new SQL.Database(new Uint8Array(buffer));
        return db;
    } else {
        return db;
    }
}

async function getAnimals(id) {
    const db = await getOrInitDB();
    const res = db.exec(`SELECT * FROM animal WHERE animal_id = ${id};`);
    return res[0].values[0];
}

async function idToAnimalsType(idAnimalType) {
    const db = await getOrInitDB();
    const res = db.exec(
        `SELECT name FROM animal_type WHERE animal_type_id = ${idAnimalType};`
    );
    return res[0].values[0];
}

async function animalsTypeToId(animalType) {
    const db = await getOrInitDB();
    const res = db.exec(
        `SELECT animal_type_id FROM animal_type WHERE name = "${animalType}";`
    );
    return res[0].values[0];
}

async function idToAnimalsBreed(idAnimalBreed) {
    const db = await getOrInitDB();
    const res = db.exec(
        `SELECT name FROM breed WHERE breed_id = ${idAnimalBreed};`
    );
    return res[0].values[0];
}

async function getAnimalsType() {
    const db = await getOrInitDB();
    const res = db.exec(`SELECT name FROM animal_type;`);
    return res[0].values;
}

async function displayAnimalsType() {
    let animalTypeList = await getAnimalsType();
    for (let i = 0; i < animalTypeList.length; i++) {
        const option = document.createElement("option");
        option.innerText = animalTypeList[i][0];
        animalType.appendChild(option);
    }
}
displayAnimalsType();

async function displayCardAnimals(id) {
    let animalInfo = await getAnimals(id);
    let animalType = await idToAnimalsType(animalInfo[3]);
    let animalBreed = await idToAnimalsBreed(animalInfo[4]);

    const div = document.createElement("div");
    div.className = "basis-sm shadow-[0_0_20px_rgba(0,0,0,0.1)] rounded-lg";
    div.innerHTML = `<img class="h-70 w-full object-cover object-[50%_50%]" src=${animalInfo[8]} alt="">
      <div class="p-10">
      <p class="mb-3 text-lg">
        ${animalType}
      </p>
      <h1 class="font-bold text-[#8482FF] text-xl mb-3">${animalInfo[1]}</h1>
      <p class="mb-1">${animalBreed} • ${animalInfo[2]}</p>
      <p class="mb-6">${animalInfo[5]}</p>
      <p class="mb-6">${animalInfo[7]}</p>
      <button class="mb-3 bg-[#333333] text-white font-semibold px-6 py-4 rounded-full shadow active:bg-[#4d4c4b] transition">Rencontrer</button>
    `;
    resultSearch.appendChild(div);
}

async function search() {
    resultSearch.innerHTML = null;
    if (locationInput.value == "") {
        if (animalType.value === "Tous les animaux") {
            for (let i = 1; i <= 10; i++) displayCardAnimals(i);
        } else {
            let id = await animalsTypeToId(animalType.value);
            let resultSearchId = await searchByAnimalTypeId(id);
            for (let i = 0; i < resultSearchId.length; i++) {
                displayCardAnimals(resultSearchId[i]);
            }
        }
    } else {
        if (animalType.value == "Tous les animaux") {
            let resultSearchByCity = await searchByCity(locationInput.value);
            for (let i = 0; i < resultSearchByCity.length; i++) {
                displayCardAnimals(resultSearchByCity[i]);
            }
        } else {
            let id = await animalsTypeToId(animalType.value);
            let resultSearchIdAndCity = await searchByAnimalTypeIdAndCity(id, locationInput.value);
            for (let i = 0; i < resultSearchIdAndCity.length; i++) {
                displayCardAnimals(resultSearchIdAndCity[i]);
            }
        }
    }
}

async function searchByAnimalTypeId(id) {
    const db = await getOrInitDB();
    const res = db.exec(
        `SELECT animal_id FROM animal WHERE animal_type_id = ${id};`
    );
    return res[0].values;
}

async function searchByCity(city) {
    const db = await getOrInitDB();
    const res = db.exec(`SELECT animal_id FROM animal WHERE city = "${city}";`);
    return res[0].values;
}

async function searchByAnimalTypeIdAndCity(id, city) {
    const db = await getOrInitDB();
    const res = db.exec(
        `SELECT animal_id FROM animal WHERE city = "${city}" AND animal_type_id = ${id};`
    );
    return res[0].values;
}

searchButton.addEventListener("click", search);

