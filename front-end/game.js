class Game {
  constructor(player1, player2) {
    this.player1 = player1;
    this.player2 = player2;
    this.winner;
    this.rounds = 1;
    this.div = document.querySelector('#game-details-card')
    // this.start();
  }

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
      player1.print(`Select a spell!`)
      player1.printText(``)
      player2.print(`Select a spell!`)
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
      player1.print(`Player 1 Wins!`)
      player1.printText(`${player1.name} has emerged victorious!\nLong live ${player1.house}!`)
      player2.print(`Player 2 Loses!`)
      player2.printText(`${player2.name} has perished!\nA dark day indeed for ${player2.house}!`)
      this.save(player1)
    }
    else{
      player2.print(`Player 2 Wins!`)
      player2.printText(`${player2.name} has emerged victorious!\nLong live ${player2.house}!`)
      player1.print(`Player 1 Loses!`)
      player1.printText(`${player1.name} has perished!\nA dark day indeed for ${player1.house}!`)
      this.save(player2)
    }
  }

  save(winner){
    let options =
    {
      headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
      },
      method: "POST",
      body: JSON.stringify({character_id: winner.id})
    }
    fetch("http://localhost:3000/games", options)
    .then(res => res.json())
    .then(json => console.log(json))
  }


}
