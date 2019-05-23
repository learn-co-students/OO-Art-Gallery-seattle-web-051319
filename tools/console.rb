require_relative '../config/environment.rb'

gen = Artist.new("Gen", 5)
hirohiko = Artist.new("hirohiko", 35)
masuda = Artist.new("Masuda", 20)
winry = Artist.new("Winry", 8)
yin = Artist.new("Yin", 2)
vaire = Artist.new("Vaire", 13)

anime = Gallery.new("Anime Gallery", "Tokyo")
sculpt = Gallery.new("Ice Sculptures Center", "Ice Place")
ceramic = Gallery.new("Ceramics Deck", "San Diego")
sandart = Gallery.new("Beaches Cove", "Honolulu")
comic = Gallery.new("Historical Comics", "LA")

fire = Painting.new("Fire", 2500,  masuda, anime)
waterfall = Painting.new("Waterfall falling", 5000, hirohiko, anime)
trees = Painting.new("Forests Trees", 10000, vaire, comic)
dolphins = Painting.new("Moar Dolphins", 240, winry, sculpt)
doodles = Painting.new("Doodles for fun", 23, yin, comic)
icepenguin = Painting.new("Ice Penguin", 432300, winry, sculpt)
sandfortress = Painting.new("Sand Fortress Battlegrounds", 10, vaire, sandart)
pottery = Painting.new("Extreme Pottery", 9000, gen, ceramic)

binding.pry

puts "Bob Ross rules."
