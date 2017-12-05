const store = {characters: []}
let player1
let player2

// const p2Container = document.getElementsById('p2-contain')


document.addEventListener('DOMContentLoaded', startup)

function startup() {
  console.log('hi')

  fetch('http://localhost:3000/characters').then(res => res.json()).then(json => createCharacters(json))
}

function createCharacters(json) {
  json.forEach(c => {
    store.characters.push(new Character(c.id, c.name, c.house, c.health, c.spells, c.image_url))
  });
    characterSelect()
}

function characterSelect() {
  let charLists = [...document.getElementsByClassName('char-list')]
  // debugger;
  charLists.forEach(charList => {
    // debugger;
    for (let c of Character.all()) {
      let charButton = document.createElement('button')
      charButton.setAttribute('char-id', c.id)
      // charButton.id = c.id
      charButton.class = 'charButton'
      charButton.innerText = c.name
      //let button = document.createElement('button')
      //button.innerText = "Choose"
      charButton.addEventListener('click', event => {
        if (charList.id == 'p1') {
          player1 = Object.assign({}, c, {div: document.querySelector('#p1-container')})
          console.log(`player1: ${player1.name}`)
          characterProfile(player1)
        } else {
          player2 = Object.assign({}, c, {div: document.querySelector('#p2-container')})
          console.log(`player2: ${player2.name}`)
          characterProfile(player2)
        }

        // event.target.disabled = true;
      })
      let charRow = document.createElement('tr')
      charRow.appendChild(charButton)
      charList.appendChild(charRow)
      }
    })
}

function characterProfile(player) {
  player.div.innerHTML = ''
  let charProfileDiv = document.createElement('div')
  charProfileDiv.class = 'characterProfile'
  let actionUL = document.createElement('ul')
  charProfileDiv.appendChild(actionUL)

  let spellTypes = ["Attack", "Defend", "Heal"]
  for (let type of spellTypes) {
    let buttonLi = document.createElement('li');
    actionUL.appendChild(buttonLi);
    let typeButton = document.createElement('button');
    buttonLi.append(typeButton);
    typeButton.innerText = type;

    typeButton.addEventListener('click', (event) => {
      let spellList = player.spells.filter(spell => (spell.category === type.toLowerCase()));
      // debugger
      let existingSpell = player.div.querySelector('.spell-ul')
        if (existingSpell) {
          existingSpell.remove()
        }
        let spellUL = document.createElement('ul');
        spellUL.setAttribute('class', "spell-ul")
      buttonLi.appendChild(spellUL)
      console.log(spellUL)
      for (let spell of spellList) {
        let spellButtonLi = document.createElement('li');
        spellUL.appendChild(spellButtonLi);
        let spellButton = document.createElement('button');
        spellButtonLi.append(spellButton);
        spellButton.innerText = spell.name;
        spellButton.addEventListener('click', (event) => {
          console.log(spell);

        })
      }
    })
  }

  player.div.appendChild(charProfileDiv)

  let imageDiv = document.createElement('div')
  imageDiv.innerHTML +=
    `<img class="character-image" src="${player.imageUrl}" alt=""></img>
      <div class="hc 1">
        <div class="hb 1">
          <center>${player.health} HP</center>
        </div>
      </div>`

    charProfileDiv.appendChild(imageDiv)
}

// "id": 1,
//         "name": "Harry Potter",
//         "house": "Gryffindor",
//         "health": 100,
//         "spells":


class Character {
  constructor(id, name, house, health, spells, imageUrl) {
    this.id = id;
    this.name = name;
    this.house = house;
    this.health = health;
    this.spells = spells;
    this.imageUrl = imageUrl;
  }

  static all(){
    return store.characters;
  }

}
