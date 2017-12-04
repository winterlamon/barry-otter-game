# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Spell.create(name: "Aguamenti", category: "attack", effect: "Shoots water from wand", strength: 100)
Spell.create(name: "Episkey", category: "heal", effect: "Heals minor injuries", strength: 100)
Spell.create(name: "Ferula", category: "heal", effect: "Creates bandages", strength: 100)
Spell.create(name: "Rennervate", category: "heal", effect: "Cures unconsciousness", strength: 100)


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

Character.all.each do |c|
  c.spells = Spell.all
end
