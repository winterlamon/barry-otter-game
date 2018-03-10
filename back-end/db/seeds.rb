# ===== Characters =====

Character.create(name: 'Harry Potter', house: 'Gryffindor', health: 100, image_url: './assets/character_pics/harrypotter.jpg')

Character.create(name: 'Cedric Diggory', house: 'Hufflepuff', health: 100, image_url: './assets/character_pics/cedric.jpg')

Character.create(name: 'Luna Lovegood', house: 'Ravenclaw', health: 100, image_url: './assets/character_pics/Luna_lovegood.jpg')
Character.create(name: 'Hermione Granger', house: 'Gryffindor', health: 100, image_url: './assets/character_pics/Hermione-granger.jpg')
Character.create(name: 'Ron Weasley', house: 'Gryffindor', health: 100, image_url: './assets/character_pics/ron-weasley-fighting.jpg')
Character.create(name: 'Albus Dumbledore', house: 'Gryffindor', health: 100, image_url: './assets/character_pics/Albus_Dumbledore.jpg')
Character.create(name: 'Draco Malfoy', house: 'Slytherin', health: 100, image_url: './assets/character_pics/malfoy.jpg')
Character.create(name: 'Lord Voldemort', house: 'Slytherin', health: 100, image_url: './assets/character_pics/voldermort.jpg')
Character.create(name: 'Severus Snape', house: 'Slytherin', health: 100, image_url: './assets/character_pics/snape.jpg')
Character.create(name: 'Dolores Umbridge', house: 'Slytherin', health: 100, image_url: './assets/character_pics/dolores.jpg')
Character.create(name: 'Barry Otter', house: 'Gryffindor', health: 100, image_url: './assets/character_pics/barry_otter.jpg')


# ===== Spells =====

Spell.create(name: "Aguamenti", category: "attack", effect: "shot water from wand", strength: 10, uses_left: 20)
Spell.create(name: "Avis", category: "attack", effect: "launched birds from wand", strength: 15, uses_left: 20)
Spell.create(name: "Avada Kedavra", category: "attack", effect: "murdered opponent", strength: 100, uses_left: 1)
Spell.create(name: "Confringo", category: "attack", effect: "exploded flames on opponent", strength: 20, uses_left: 20)
Spell.create(name: "Crucio", category: "attack", effect: "tortured opponent", strength: 30, uses_left: 2)
Spell.create(name: "Deprimo", category: "attack", effect: "shot damaging wind at opponent", strength: 10, uses_left: 20)
Spell.create(name: "Furnunculus", category: "attack", effect: "produced boils on opponent", strength: 20, uses_left: 20)
Spell.create(name: "Rictusempra", category: "attack", effect: "tickled opponent", strength: 40, uses_left: 2)
# Spell.create(name: "Sectumsempra", category: "attack", effect: "caused wounds as if slashed by a sword", strength: 25, uses_left: 4)
Spell.create(name: "Stupefy", category: "attack", effect: "knocked out opponent", strength: 25, uses_left: 5)
# Spell.create(name: "Conjunctivitis", category: "attack", effect: "damaged opponent's eyesight", strength: 15, uses_left: 20)
Spell.create(name: "Expecto Patronum", category: "defend", effect: "created a Patronus", strength: 25, uses_left: 3)
Spell.create(name: "Cave Inimicum", category: "defend", effect: "strengthened an enclosure from enemies", strength: 15, uses_left: 2)
Spell.create(name: "Confundus", category: "defend", effect: "confused opponent", strength: 10, uses_left: 3)
# Spell.create(name: "Expelliarmus", category: "defend", effect: "disarmed opponent", strength: 100, uses_left: 1)
Spell.create(name: "Finite Incantatum", category: "defend", effect: "stopped opponent's current spell", strength: 100, uses_left: 1)
Spell.create(name: "Protego Horribilis", category: "defend", effect: "was protected from Dark Magic", strength: 100, uses_left: 1)
Spell.create(name: "Episkey", category: "heal", effect: "healed minor injuries", strength: 15, uses_left: 3)
Spell.create(name: "Ferula", category: "heal", effect: "created bandages", strength: 10, uses_left: 2)
Spell.create(name: "Rennervate", category: "heal", effect: "cured unconsciousness", strength: 20, uses_left: 2)

Character.all.each do |c|
  c.spells = Spell.all
end

# ===== Spells by Category =====

    # ATTACK Spells
#     [
#
#       {
#         "name": "Aguamenti",
#         "type": "charm",
#         "effect": "Shoots water from wand"
#       },
#       {
#         "name": "Avada Kedavra",
#         "type": "curse",
#         "effect": "Murders opponent"
#       },
#       {
#         "name": "Avis",
#         "type": "spell",
#         "effect": "Launches birds from your wand"
#       },
#       {
#         "name": "Confringo",
#         "type": "curse",
#         "effect": "Explode flames on target"
#       },
#       {
#         "name": "Conjunctivitis",
#         "type": "curse",
#         "effect": "Damages opponents eyesight"
#       },
#       {
#         "name": "Crucio",
#         "type": "curse",
#         "effect": "Tortures opponent"
#       },
#       {
#         "name": "Deprimo",
#         "type": "spell",
#         "effect": "Wind damaging spell"
#       },
#       {
#         "name": "Expulso",
#         "type": "spell",
#         "effect": "Makes objects explode"
#       },
#
#       {
#         "name": "Flipendo",
#         "type": "jinx",
#         "effect": "Knocks an object backwards"
#       },
#       {
#         "name": "Furnunculus",
#         "type": "curse",
#         "effect": "Produces boils on opponent"
#       },
#
#       {
#         "name": "Rictusempra",
#         "type": "charm",
#         "effect": "Tickles opponent"
#       },
#       {
#         "name": "Sectumsempra",
#         "type": "spell",
#         "effect": "Causes wounds as if slashed by a sword"
#       },
#       {
#         "name": "Stupefy",
#         "type": "spell",
#         "effect": "Knocks out opponent"
#       }
#     ]
#
#
#
#     # DEFEND Spells
# [
#   {
#     "name": "Expecto Patronum",
#     "type": "charm",
#     "effect": "Creates a Patronus"
#   },
#   {
#     "name": "Cave Inimicum",
#     "type": "spell",
#     "effect": "Strengthen an enclosure from enemies"
#   },
#   {
#     "name": "Confundus",
#     "type": "charm",
#     "effect": "Used to confuse opponent"
#   },
#   {
#     "name": "Expelliarmus",
#     "type": "charm",
#     "effect": "Disarms your opponent"
#   },
#   {
#     "name": "Finite Incantatum",
#     "type": "spell",
#     "effect": "Stops any current spells"
#   },
#   {
#     "name": "Immobulus",
#     "type": "charm",
#     "effect": "Renders target immobile."
#   },
#   {
#     "name": "Liberacorpus",
#     "type": "spell",
#     "effect": "Counterspell"
#   },
#   {
#     "name": "Obscuro",
#     "type": "spell",
#     "effect": "Blindfolds the victim"
#   },
#   {
#     "name": "Salvio Hexia",
#     "type": "spell",
#     "effect": "Protection against hexes"
#   },
#   {
#     "name": "Protego",
#     "type": "charm",
#     "effect": "Cause spells to reflect back to the sender."
#   },
#   {
#     "name": "Protego Horribilis",
#     "type": "spell",
#     "effect": "Protects one from Dark Magic"
#   }
# ]


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
# [
#   {
#     "name": "Specialis Revelio",
#     "type": "spell",
#     "effect": "Reveals Hidden secrets or magical properties"
#   },
#   {
#     "name": "Homenum Revelio",
#     "type": "spell",
#     "effect": "Reveals humans nearby"
#   },
#   {
#       "name": "Aparecium",
#       "type": "spell",
#       "effect": "Reveals invisible ink"
#   },
# ]
