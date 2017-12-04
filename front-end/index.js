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
    let charLists = [...document.getElementsByClassName('char-list')]
    // debugger;
    charLists.forEach(charList => {
      // debugger;
      for (let c of store.characters) {
        let charButton = document.createElement('button')
        charButton.setAttribute('char-id', c.id)
        // charButton.id = c.id
        charButton.class = 'charButton'
        charButton.innerText = c.name
        //let button = document.createElement('button')
        //button.innerText = "Choose"
        charButton.addEventListener('click', event => {
          if (charList.id == 'p1') {
            player1 = Object.assign({}, c)
            console.log(`player1: ${player1.name}`)
          } else {
            player2 = Object.assign({}, c)
            console.log(`player2: ${player2.name}`)
          }
        })
        let charRow = document.createElement('tr')
        charRow.appendChild(charButton)
        charList.appendChild(charRow)
      }
    })

  };

}
