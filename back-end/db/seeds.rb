# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# SPELLS SEED DATA

Spell.create(name: "Aguamenti", category: "attack", effect: "Shoots water from wand", strength: 10)
Spell.create(name: "Avis", category: "attack", effect: "Launches birds from your wand", strength: 15)
Spell.create(name: "Avada Kedavra", category: "attack", effect: "Murders opponent", strength: 100)
Spell.create(name: "Confringo", category: "attack", effect: "Explode flames on target", strength: 20)
Spell.create(name: "Crucio", category: "attack", effect: "Tortures opponent", strength: 30)
Spell.create(name: "Deprimo", category: "attack", effect: "Wind damaging spell", strength: 10)
Spell.create(name: "Furnunculus", category: "attack", effect: "Produces boils on opponent", strength: 20)
Spell.create(name: "Rictusempra", category: "attack", effect: "Tickles opponent", strength: 40)
Spell.create(name: "Sectumsempra", category: "attack", effect: "Causes wounds as if slashed by a sword", strength: 25)
Spell.create(name: "Stupefy", category: "attack", effect: "Knocks out opponent", strength: 20)
Spell.create(name: "Conjunctivitis", category: "attack", effect: "Damages opponents eyesight", strength: 15)
Spell.create(name: "Expecto Patronum", category: "defend", effect: "Creates a Patronus", strength: 25)
Spell.create(name: "Cave Inimicum", category: "defend", effect: "Strengthen an enclosure from enemies", strength: 15)
Spell.create(name: "Confundus", category: "defend", effect: "Used to confuse opponent", strength: 5)
Spell.create(name: "Expelliarmus", category: "defend", effect: "Disarms your opponent", strength: 100)
Spell.create(name: "Finite Incantatum", category: "defend", effect: "Stops any current spells", strength: 100)
Spell.create(name: "Protego Horribilis", category: "defend", effect: "Protects one from Dark Magic", strength: 100)
Spell.create(name: "Episkey", category: "heal", effect: "Heals minor injuries", strength: 15)
Spell.create(name: "Ferula", category: "heal", effect: "Creates bandages", strength: 10)
Spell.create(name: "Rennervate", category: "heal", effect: "Cures unconsciousness", strength: 20)




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
