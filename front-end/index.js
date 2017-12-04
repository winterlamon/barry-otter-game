const store = {characters: []}

document.addEventListener('DOMContentLoaded', startup)

function startup() {
  console.log('hi')

  fetch('http://localhost:3000/characters').then(res => res.json()).then(json => createCharacters(json))
}

function createCharacters(json) {
  json.forEach(c => {
    store.characters.push(new Character(c.id, c.name, c.house, c.health, c.spells))
  })
  Character.render()
}

// "id": 1,
//         "name": "Harry Potter",
//         "house": "Gryffindor",
//         "health": 100,
//         "spells":


class Character {
  constructor(id, name, house, health, spells) {
    this.id = id;
    this.name = name;
    this.house = house;
    this.health = health;
    this.spells = spells;
  }
  static render(){
    let charList = document.querySelector('.char-list')
    for (let c of store.characters) {
      let fresh = document.createElement('li')
      fresh.id = c.id
      fresh.innerText = c.name
      charList.appendChild(fresh)
    }
  };
  
}
