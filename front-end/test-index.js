const store = {characters: []}
let player1
let player2

class Character {
  constructor(id, name, house, health, spells, imageUrl) {
    this.id = id;
    this.name = name;
    this.house = house;
    this.health = health;
    this.spells = spells;
    this.imageUrl = imageUrl;
    this.moves = [];
  }

  static all(){
    return store.characters;
  }

  makeMove(spell){
    this.moves.push(spell)
  }

  getMove(){
    return this.moves[this.moves.length - 1];
  }

}

// class Game {
//   constructor(player1, player2) {
//     this.player1 = player1;
//     this.player2 = player2;
//     this.winner;
//     this.rounds = 1;
//     this.start();
//   }
//
//   start(){
//     // console.log(`${player1.name} and ${player2.name} are in the game.`);
//     while (player1.health > 0 && player2.health > 0) {
//       this.prompt()
//     }
//   }
//
//   prompt(){
//     if (player1.moves.length === this.rounds && player2.moves.length === this.rounds) {
//       this.execute(player1.getMove(), player2.getMove())
//     }
//   }
//
//   execute(){
//     this.rounds++;
//     let p1m = player1.getMove()
//     let p2m = player2.getMove()
//     if (p1m.category === ) {
//
//     }
//
//   }
//
//   save(){
//
//   }
// }
// const p2Container = document.getElementsById('p2-contain')


document.addEventListener('DOMContentLoaded', startup)

function startup() {
  console.log('hi')

  fetch('http://localhost:3000/characters').then(res => res.json()).then(json => createCharacters(json))
}

  // window.setTimeout(function barryOtter() {
  //   let specialisRevelio = document.createElement('h4')
  //   specialisRevelio.setAttribute("id", "barry-otter-text")
  //   specialisRevelio.innerText = "Specialis Revelio"
  //   specialisRevelio.addEventListener('click', startup)
  //   fetch('http://localhost:3000/characters', {
  //     method: 'post',
  //     headers: {"Content-Type": "application/json"},
  //     body: JSON.stringify({name: 'Barry Otter', house: "Mom's Favorite Cohort", health: 100, image_url: 'http://i.imgur.com/SwXoL.jpg'
  //   })
  // })
  //   .then(res => res.json())
  //   .then(json => createCharacters(json))}, 10000);



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
          document.getElementById('p1-game-details-title').innerText = "Ready Player 1"
          characterProfile(player1)
        } else {
          player2 = Object.assign({}, c, {div: document.querySelector('#p2-container')})
          console.log(`player2: ${player2.name}`)
          document.getElementById('p2-game-details-title').innerText = "Ready Player 2"
          characterProfile(player2)
        }

        // event.target.disabled = true;
      })
        charButton.addEventListener('mouseover', event => {
          charList.parentElement.parentElement.querySelector('.character-image').src = c.imageUrl
        })



      let charRow = document.createElement('tr')
      charRow.appendChild(charButton)
      charList.appendChild(charRow)
      }
    })
}

function characterProfile(player) {
  // if ((typeof player1 === 'object') && (typeof player2 === 'object')) {
  //   let game = new Game(player1, player2)
  // }
  player.div.querySelector('.card-header').innerText = player.name
  player.div.querySelector('.character-image').src = player.imageUrl
  let cardBody = player.div.querySelector('.card-body')
  cardBody.innerHTML = ''
  let spellTypeDiv = document.createElement('div')
  // spellTypeDiv.class = 'characterProfile spell-type col'
  spellTypeDiv.setAttribute('class', 'characterProfile spell-type col')
  let actionUL = document.createElement('ul')
  spellTypeDiv.appendChild(actionUL)

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
      let existingSpell = player.div.querySelector('.spell')
        if (existingSpell) {
          existingSpell.remove()
        }
        let spellDiv = document.createElement('div')
        // spellDiv.class = 'characterProfile spell col'
        spellDiv.setAttribute('class', "characterProfile col spell")
        let spellUL = document.createElement('ul');
        spellUL.setAttribute('class', "spell-ul")
      spellDiv.appendChild(spellUL)
      cardBody.appendChild(spellDiv)
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

  cardBody.appendChild(spellTypeDiv)

  let imageDiv = document.createElement('div')
  imageDiv.innerHTML +=
    `<img class="character-image" src="${player.imageUrl}" alt=""></img>
      <div class="hc 1">
        <div class="hb 1">
          <center>${player.health} HP</center>
        </div>
      </div>`

    // charProfileDiv.appendChild(imageDiv)
}

// "id": 1,
//         "name": "Harry Potter",
//         "house": "Gryffindor",
//         "health": 100,
//         "spells":
