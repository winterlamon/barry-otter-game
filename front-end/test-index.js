const store = {characters: []}
let player1
let player2
let game

document.addEventListener('DOMContentLoaded', startup)

function startup() {
  console.log('hi')
  startMute()
  fetch('http://localhost:3000/characters').then(res => res.json()).then(json => createCharacters(json))
}

function startMute() {
  let mute = document.getElementById('mute')
  let audio = document.querySelector('audio')
  mute.addEventListener('click', () => {
    if (!audio.muted) {
      audio.muted = true;
      mute.innerHTML = '<i class="fa fa-volume-off"></i>'
    }else {
      audio.muted = false;
      mute.innerHTML = '<i class="fa fa-volume-up"></i>'
    }
  })
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

      charButton.class = 'charButton'
      charButton.innerText = c.name

      charButton.addEventListener('click', event => {
        if (charList.id == 'p1') {
          player1 = Object.assign(new Character(c.id, c.name, c.house, c.health, c.spells, c.imageUrl), {div: document.querySelector('#p1-container'), gameDiv: document.getElementById('p1-game-details-title')})
          console.log(`player1: ${player1.name}`)
          player1.print("Ready Player 1")
          // document.getElementById('p1-game-details-title').innerText = "Ready Player 1"
          characterProfile(player1)
        } else {
          player2 = Object.assign(new Character(c.id, c.name, c.house, c.health, c.spells, c.imageUrl), {div: document.querySelector('#p2-container'), gameDiv: document.getElementById('p2-game-details-title')})
          console.log(`player2: ${player2.name}`)
          // document.getElementById('p2-game-details-title').innerText = "Ready Player 2"
          player2.print("Ready Player 2")
          characterProfile(player2)
        }
      })
        charButton.addEventListener('mouseover', event => {
          charList.parentElement.parentElement.querySelector('.character-image').src = c.imageUrl
        })



      let charRow = document.createElement('tr')
      charRow.appendChild(charButton)
      charList.appendChild(charRow)
      }
    })

    let kn1 = new KeyNav(1)
    let kn2 = new KeyNav(2)

}


function characterProfile(player) {
  if ((typeof player1 === 'object') && (typeof player2 === 'object')) {
    game = new Game(player1, player2)
    player1.print('Select A Spell!')
    player2.print('Select A Spell!')
  }
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
      for (let spell of spellList) {
        let spellButtonLi = document.createElement('li');
        spellUL.appendChild(spellButtonLi);
        let spellButton = document.createElement('button');
        spellButtonLi.append(spellButton);
        spellButton.innerText = spell.name;
        spellButton.addEventListener('click', (event) => {
          player.print('Ready!')
          console.log(spell);
          player.makeMove(spell)
          if (player1.moves.length === game.rounds && player2.moves.length === game.rounds) {
            game.execute(player1.getMove(), player2.getMove())
          }

        })
      }
    })
  }

  cardBody.appendChild(spellTypeDiv)

}
