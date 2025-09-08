const searchButton = document.getElementById("searchButton");
const animalType = document.getElementById("animal_type");
const resultSearch = document.getElementById("resultSearch");
const locationInput = document.getElementById("location");
const nextButton = document.getElementById("nextButton");
const PreviousButton = document.getElementById("PreviousButton");
const Button1 = document.getElementById("Button1");
const Button2 = document.getElementById("Button2");
const Button3 = document.getElementById("Button3");

let homePageSearch = sessionStorage.getItem("homePageSearch");


const nbAnimalsPerPage = 8
let currentPage = 1
let maxPage = null

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

async function getAllAnimals() {
    const db = await getOrInitDB();
    const res = db.exec(`SELECT animal_id FROM animal`);
    return res[0].values;
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
    homePage()
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
    let endPage = nbAnimalsPerPage * currentPage
    let startPage = 0 + nbAnimalsPerPage * (currentPage - 1)
    resultSearch.innerHTML = null;
    if (locationInput.value == "") {
        if (animalType.value === "Tous les animaux") {
            let allAnimals = await getAllAnimals()
            maxPage = Math.ceil(allAnimals.length/nbAnimalsPerPage)
            for (let i = startPage + 1; i <= endPage; i++) displayCardAnimals(i);
        } else {
            let id = await animalsTypeToId(animalType.value);
            let resultSearchId = await searchByAnimalTypeId(id);
            maxPage = Math.ceil(resultSearchId.length/nbAnimalsPerPage)
            for (let i = startPage; i < endPage; i++) {
                displayCardAnimals(resultSearchId[i]);
            }
        }
    } else {
        if (animalType.value === "Tous les animaux") {
            let resultSearchByCity = await searchByCity(locationInput.value);
            maxPage = Math.ceil(resultSearchByCity.length/nbAnimalsPerPage)
            for (let i = startPage; i < endPage; i++) {
                displayCardAnimals(resultSearchByCity[i]);
            }
        } else {
            let id = await animalsTypeToId(animalType.value);
            let resultSearchIdAndCity = await searchByAnimalTypeIdAndCity(id, locationInput.value);
            maxPage = Math.ceil(resultSearchIdAndCity.length/nbAnimalsPerPage)
            for (let i = startPage; i < endPage; i++) {
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



function homePage() {
    if (homePageSearch == "true") {
        sessionStorage.setItem("homePageSearch", "false");
        animalType.value = sessionStorage.getItem("animalType");
        locationInput.value = sessionStorage.getItem("locationInput");
        searchButton.click()
    }else{
        searchButton.click()
    }
}


searchButton.addEventListener("click", async () => {
    currentPage = 1
    await search()
    displayButton()
});


nextButton.addEventListener("click", () => {
    currentPage++
    search()
    displayButton()
});

PreviousButton.addEventListener("click", () => {
    currentPage--
    search()
    displayButton()
});

Button1.addEventListener("click", () => {});
Button2.addEventListener("click", () => {});
Button3.addEventListener("click", () => {});

function displayButton(){
    nextButton.style.display =''
    PreviousButton.style.display =''
    Button1.innerText = currentPage-1
    Button2.innerText = currentPage
    Button3.innerText = currentPage+1
    Button1.style.display =''
    Button2.style.display =''
    Button3.style.display =''
    Button1.className = 'px-3 py-2 leading-tight rounded-sm text-[#fe6e39] bg-white '
    Button2.className = 'px-3 py-2 leading-tight rounded-sm text-[#fe6e39] bg-white '
    Button3.className = 'px-3 py-2 leading-tight rounded-sm text-[#fe6e39] bg-white '
    if (currentPage == maxPage){
        Button1.innerText = currentPage-2
        Button2.innerText = currentPage-1
        Button3.innerText = currentPage
        nextButton.style.display ='none'
        Button3.className = 'bg-[#fe6e39] px-3 py-2 rounded-sm text-white '
    }
    if (currentPage == 1){
        Button1.innerText = currentPage
        Button2.innerText = currentPage+1
        Button3.innerText = currentPage+2
        PreviousButton.style.display ='none'
        Button1.className = 'bg-[#fe6e39] px-3 py-2 rounded-sm text-white '
    }
    if ( 1<currentPage && currentPage<maxPage) {
        Button2.className = 'bg-[#fe6e39] px-3 py-2 rounded-sm text-white '
    }
    if(maxPage == 1){
        Button2.style.display ='none'
        Button3.style.display ='none'
    }
    if(maxPage == 2){
        if (currentPage == 1){
            Button3.style.display ='none'
        }else{
            Button1.style.display ='none'
        }
    }
}


getAllAnimals()