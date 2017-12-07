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
