# ===== Characters =====

Character.create(name: 'Harry Potter', house: 'Gryffindor', health: 100, image_url: 'https://roadtovrlive-5ea0.kxcdn.com/wp-content/uploads/2017/11/harrypotter.jpg')
Character.create(name: 'Cedric Diggory', house: 'Hufflepuff', health: 100, image_url: 'https://img.buzzfeed.com/buzzfeed-static/static/2016-11/13/20/asset/buzzfeed-prod-web08/sub-buzz-18048-1479086303-2.jpg?downsize=715:*&output-format=auto&output-quality=auto')
Character.create(name: 'Luna Lovegood', house: 'Ravenclaw', health: 100, image_url: 'http://vignette1.wikia.nocookie.net/harrypotter/images/4/46/Luna_lovegood.jpg/revision/latest?cb=20161217054733')
Character.create(name: 'Hermione Granger', house: 'Gryffindor', health: 100, image_url: 'http://vignette1.wikia.nocookie.net/p__/images/5/5e/Hermione-granger.jpg/revision/latest?cb=20160713085217&path-prefix=protagonist')
Character.create(name: 'Ron Weasley', house: 'Gryffindor', health: 100, image_url: 'https://www.hypable.com/wp-content/uploads/2014/02/ron-weasley-fighting.jpg')
Character.create(name: 'Albus Dumbledore', house: 'Gryffindor', health: 100, image_url: 'https://vignette.wikia.nocookie.net/harrypotter/images/4/40/Albus_Dumbledore_%28HBP_promo%29_3.jpg/revision/latest/scale-to-width-down/350?cb=20150822232849')
Character.create(name: 'Draco Malfoy', house: 'Slytherin', health: 100, image_url: 'http://download.gamezone.com/uploads/image/data/1205344/a43d7bbc014252f03b2ba79b9e12e0c48b563177a763f17a74cad8c7be6ccbb5.jpg')
Character.create(name: 'Lord Voldemort', house: 'Slytherin', health: 100, image_url: 'https://images.hellogiggles.com/uploads/2016/05/25115258/voldermort.jpg')
Character.create(name: 'Severus Snape', house: 'Slytherin', health: 100, image_url: 'https://vignette3.wikia.nocookie.net/villains/images/1/12/Snape-will-never-die-severus-snape-22970808-1600-2118.jpg/revision/latest?cb=20170304205903')
Character.create(name: 'Dolores Umbridge', house: 'Slytherin', health: 100, image_url: 'https://images.moviepilot.com/images/c_limit,q_auto:good,w_600/ket6zbluwttjko7f9ouw/3-reasons-why-we-love-to-hate-harry-potter-s-nemesis-dolores-umbridge.jpg')
Character.create(name: 'Barry Otter', house: 'Gryffindor', health: 100, image_url: 'https://pre00.deviantart.net/1695/th/pre/i/2010/304/0/e/harry_otter_by_rainyxskyz-d31xa04.jpg')



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
