# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# SPELLS SEED DATA

Spell.create(name: "Aguamenti", category: "attack", effect: "Shoots water from wand", strength: )
Spell.create(name: , category: "attack", effect: , strength: )
Spell.create(name: , category: "attack", effect: , strength: )
Spell.create(name: , category: "attack", effect: , strength: )
Spell.create(name: , category: "attack", effect: , strength: )
Spell.create(name: , category: "attack", effect: , strength: )
Spell.create(name: , category: "attack", effect: , strength: )
Spell.create(name: , category: "attack", effect: , strength: )
Spell.create(name: , category: "attack", effect: , strength: )
Spell.create(name: , category: "attack", effect: , strength: )
Spell.create(name: , category: "attack", effect: , strength: )
Spell.create(name: , category: "attack", effect: , strength: )
Spell.create(name: , category: "attack", effect: , strength: )
Spell.create(name: , category: "attack", effect: , strength: )
Spell.create(name: , category: "attack", effect: , strength: )
Spell.create(name: , category: "defend", effect: , strength: )
Spell.create(name: "Episkey", category: "heal", effect: "Heals minor injuries", strength: )
Spell.create(name: "Ferula", category: "heal", effect: "Creates bandages", strength: )
Spell.create(name: "Rennervate", category: "heal", effect: "Cures unconsciousness", strength: )


    # ATTACK Spells
    [

      {
        "name": "Aguamenti",
        "type": "charm",
        "effect": "Shoots water from wand"
      },
      {
        "name": "Avada Kedavra",
        "type": "curse",
        "effect": "Murders opponent"
      },
      {
        "name": "Avis",
        "type": "spell",
        "effect": "Launches birds from your wand"
      },
      {
        "name": "Confringo",
        "type": "curse",
        "effect": "Explode flames on target"
      },
      {
        "name": "Crucio",
        "type": "curse",
        "effect": "Tortures opponent"
      },
      {
        "name": "Deprimo",
        "type": "spell",
        "effect": "Wind damaging spell"
      },
      {
        "name": "Expulso",
        "type": "spell",
        "effect": "Makes objects explode"
      },

      {
        "name": "Flipendo",
        "type": "jinx",
        "effect": "Knocks an object backwards"
      },
      {
        "name": "Furnunculus",
        "type": "curse",
        "effect": "Produces boils on opponent"
      },

      {
        "name": "Rictusempra",
        "type": "charm",
        "effect": "Tickles opponent"
      },
      {
        "name": "Sectumsempra",
        "type": "spell",
        "effect": "Causes wounds as if slashed by a sword"
      },
      {
        "name": "Stupefy",
        "type": "spell",
        "effect": "Knocks out opponent"
      }
    ]



    # DEFEND Spells
[
  {
    "name": "Expecto Patronum",
    "type": "charm",
    "effect": "Creates a Patronus"
  },
  {
    "name": "Cave Inimicum",
    "type": "spell",
    "effect": "Strengthen an enclosure from enemies"
  },
  {
    "name": "Confundus",
    "type": "charm",
    "effect": "Used to confuse opponent"
  },
  {
    "name": "Expelliarmus",
    "type": "charm",
    "effect": "Disarms your opponent"
  },
  {
    "name": "Finite Incantatum",
    "type": "spell",
    "effect": "Stops any current spells"
  },
  {
    "name": "Immobulus",
    "type": "charm",
    "effect": "Renders target immobile."
  },
  {
    "name": "Liberacorpus",
    "type": "spell",
    "effect": "Counterspell"
  },
  {
    "name": "Obscuro",
    "type": "spell",
    "effect": "Blindfolds the victim"
  },
  {
    "name": "Salvio Hexia",
    "type": "spell",
    "effect": "Protection against hexes"
  },
  {
    "name": "Conjunctivitis",
    "type": "curse",
    "effect": "Damages opponents eyesight"
  },
  {
    "name": "Protego",
    "type": "charm",
    "effect": "Cause spells to reflect back to the sender."
  },
  {
    "name": "Protego Horribilis",
    "type": "spell",
    "effect": "Protects one from Dark Magic"
  }
]



    # HEAL Spells
    # [
    #   {
    #     "name": "Episkey",
    #     "type": "curse",
    #     "effect": "Heals minor injuries"
    #   },
    #   {
    #     "name": "Ferula",
    #     "type": "spell",
    #     "effect": "Creates bandages"
    #   },
    #   {
    #     "name": "Rennervate",
    #     "type": "spell",
    #     "effect": "Cures unconsciousness"
    #   },
    # ]




# Spells to use for easter eggs
[
  {
    "name": "Specialis Revelio",
    "type": "spell",
    "effect": "Reveals Hidden secrets or magical properties"
  },
  {
    "name": "Homenum Revelio",
    "type": "spell",
    "effect": "Reveals humans nearby"
  },
  {
      "name": "Aparecium",
      "type": "spell",
      "effect": "Reveals invisible ink"
  },
]
