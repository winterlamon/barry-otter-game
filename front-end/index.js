const store = {characters: []}
let player1
let player2

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
    let charLists = [...document.getElementsByClassName('.char-list')]
    charLists.forEach(charList => {
      debugger;
      for (let c of store.characters) {
        let charRow = document.createElement('button')
        charRow.id = c.id
        charRow.class = 'charButton'
        charRow.innerText = c.name
        //let button = document.createElement('button')
        //button.innerText = "Choose"
        charRow.addEventListener('click', event => {
          player1 = Object.assign({}, c)
          console.log(player1)
        })
        charList.appendChild(charRow)
      }
    })

  };

}
