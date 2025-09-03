async function initDB() {
  const SQL = await initSqlJs({
    locateFile: file => `https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.13.0/${file}`
  });

  const response = await fetch("SQL/adaopte.db");
  const buffer = await response.arrayBuffer();
  db = new SQL.Database(new Uint8Array(buffer));
  return db;
}

async function getAnimals(info) {
  const db = await initDB();
  const res = db.exec(`SELECT ${info} FROM animal;`);
  console.log(res[0].values[0]);
  return res;
}
async function getAnimalsType() {
  const db = await initDB();
  const res = db.exec(`SELECT * FROM animal_type;`);
  console.log(res[0].values);
  return res.values;
}

getAnimalsType()
getAnimals("name")
