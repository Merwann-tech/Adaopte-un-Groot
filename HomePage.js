const searchButton = document.getElementById("searchButton");
const allAnimals = document.getElementById("allAnimals");
const animalType = document.getElementById("animal_type");
const locationInput = document.getElementById("location");


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



searchButton.addEventListener("click", ()=>{
    sessionStorage.setItem("homePageSearch", true);
    sessionStorage.setItem("animalType", `${animalType.value}`);
    sessionStorage.setItem("locationInput", `${locationInput.value}`);
    window.location.href = "Adopte.html";
});

allAnimals.addEventListener("click", ()=>{
    window.location.href = "Adopte.html";
});