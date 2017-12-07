const store = {characters: []}
let player1
let player2
let game

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

  lastSpell(){
    return this.moves[this.moves.length - 1]
  }

  prevMove(){
    // let move = this.moves[this.moves.length - 1];
    let move = this.lastSpell();
    let moveObj = {}
    moveObj[move['category']] = move['strength']
    return  moveObj;
  }

  getMove(){
    let generic = {'attack': 0, 'defend':0, 'heal':0}
    let newMove = this.prevMove()
    let move = Object.assign(generic, newMove)
    return move;
  }

  isAlive(){
    return this.health > 0;
  }

  heal(strength){
    this.health += strength
    if (this.health > 100) {
      this.health = 100
    }
  }

  damage(strength){
    this.health -= strength
    if (this.health < 0) {
      this.health = 0
    }
    let pb = this.div.querySelector('.progress-bar')
    pb.innerText = `${this.health} HP`
    pb.style.width = `${this.health}%`
  }

  print(thing){
    this.gameDiv.innerText = thing;
  }

  printText(thing){
    this.gameDiv.nextElementSibling.innerText = thing;
  }
}

class Game {
  constructor(player1, player2) {
    this.player1 = player1;
    this.player2 = player2;
    this.winner;
    this.rounds = 1;
    this.div = document.querySelector('#game-details-card')
    // this.start();
  }

  // start(){
  //   // console.log(`${player1.name} and ${player2.name} are in the game.`);
  //   if (player1.isAlive() && player2.isAlive()) {
  //     this.prompt()
  //   }
  //   else{
  //     this.end()
  //   }
  // }

  // prompt(){
  //   if (player1.moves.length === this.rounds && player2.moves.length === this.rounds) {
  //     this.execute(player1.getMove(), player2.getMove())
  //   }
  //   // else{
  //   //   this.prompt()
  //   // }
  // }

  print(thing){
    this.div.querySelector('.card-header').innerText = thing;
  }

  execute(){

    this.rounds++;
    let p1m = player1.getMove()
    let p2m = player2.getMove()
    // if (p1m.category === 'defense') {
    //   if (p2m.category === 'attack') {
    //
    //   }
    // }

    debugger;
    p1m['attack'] -= p2m['defend'];
    p2m['attack'] -= p1m['defend'];

    if (p1m['attack'] < 0) {
      p1m['attack'] = 0
    }
    if (p2m['attack'] < 0) {
      p2m['attack'] = 0
    }


    player1.heal(p1m['heal'])
    player2.heal(p2m['heal'])

    player1.damage(p2m['attack'])
    player2.damage(p1m['attack'])

    player1.print(`${player1.lastSpell().name}!`)
    player1.printText(`${player1.name} ${player1.lastSpell().effect}.\n${player2.name} took ${p1m['attack']} damage!`)
    player2.print(`${player2.lastSpell().name}!`)
    player2.printText(`${player2.name} ${player2.lastSpell().effect}.\n${player1.name} took ${p2m['attack']} damage!`)
    this.checkOver()
  }

  refresh(){
    setTimeout(() => {
      this.print(`Round ${this.rounds}`)
      player1.print(`Select A Spell!`)
      player1.printText(``)
      player2.print(`Select A Spell!`)
      player2.printText(``)
      // this.refresh()
    }, 5000)
  }

  checkOver(){
    if (player1.isAlive() && player2.isAlive()) {
        this.refresh()
      }else{
        this.end()
      }
  }

  end(){
    this.print('Game Over!')
    if (player1.isAlive()) {
      player1.print(`You Win!`)
      player1.printText(`${player1.name} Has Emerged Victorious!\nLong Live ${player1.house}!`)
      player2.print(`You Lose!`)
      player2.printText(`${player2.name} Has Perished!\nA Dark Day Indeed For ${player2.house}!`)
    }else{
      player2.print(`You Win!`)
      player2.printText(`${player2.name} Has Emerged Victorious!\nLong Live ${player2.house}!`)
      player1.print(`You Lose!`)
      player1.printText(`${player1.name} Has Perished!\nA Dark Day Indeed For ${player1.house}!`)
    }
  }

  save(){

  }
}



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
