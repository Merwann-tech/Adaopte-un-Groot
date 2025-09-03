let db = null

async function getOrInitDB() {
    if (db === null) {
        const SQL = await initSqlJs({
            locateFile: file => `https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.13.0/${file}`
        });

        const response = await fetch("SQL/adaopte.db");
        const buffer = await response.arrayBuffer();
        db = new SQL.Database(new Uint8Array(buffer));
        return db;
    }else{
        return db;        
    }
}

async function getAnimals(info) {
    const db = await getOrInitDB();
    const res = db.exec(`SELECT ${info} FROM animal;`);
    return res[0].values[6];
}

async function idToAnimalsType(idAnimalType) {
    const db = await getOrInitDB();
    const res = db.exec(`SELECT name FROM animal_type WHERE animal_type_id = ${idAnimalType};`);
    return res[0].values[0]; 
}

async function idToAnimalsBreed(idAnimalBreed) {
    const db = await getOrInitDB();
    const res = db.exec(`SELECT name FROM breed WHERE breed_id = ${idAnimalBreed};`);
    return res[0].values[0]; 
}

async function displayCardAnimals() {
    let animalInfo = await getAnimals("*")
    let animalType = await idToAnimalsType(animalInfo[3])
    let animalBreed = await idToAnimalsBreed(animalInfo[4])
    const resultSearch = document.getElementById("resultSearch")
    const div = document.createElement("div")
    div.innerHTML =
        `<div class="flex flex-wrap flex-row justify-center gap-4">
    <div class="basis-sm shadow-[0_0_20px_rgba(0,0,0,0.1)] rounded-lg">
      <img class="h-70 w-full object-cover object-[50%_50%]" src=${animalInfo[8]} alt="">
      <div class="p-10">
      <p class="mb-3 text-lg">
        ${animalType}
      </p>
      <h1 class="font-bold text-[#8482FF] text-xl mb-3">${animalInfo[1]}</h1>
      <p class="mb-1">${animalBreed} • ${animalInfo[2]}</p>
      <p class="mb-6">${animalInfo[5]}</p>
      <p class="mb-6">${animalInfo[7]}</p>
      <button class="mb-3 bg-[#333333] text-white font-semibold px-6 py-4 rounded-full shadow active:bg-[#4d4c4b] transition">Rencontrer</button>
      </div>
    </div>`
    console.log(animalInfo)
    resultSearch.appendChild(div)
}

displayCardAnimals()



async function getAnimalsType() {
    const db = await getOrInitDB();
    const res = db.exec(`SELECT * FROM animal_type;`);
    console.log(res[0].values);
    return res.values;
}
