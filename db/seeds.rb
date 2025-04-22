# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Level.create(name: "Bob-omb Battlefield", category: "stage")
Level.create(name: "Whomp's Fortress", category: "stage")
Level.create(name: "Cool, Cool Mountain", category: "stage")
Level.create(name: "Jolly Roger Bay", category: "stage")
Level.create(name: "Lethal Lava Land", category: "stage")
Level.create(name: "Shifting Sand Land", category: "stage")
Level.create(name: "Hazy Maze Cave", category: "stage")
Level.create(name: "Dire Dire Docks", category: "stage")
Level.create(name: "Tall, Tall Mountain", category: "stage")
Level.create(name: "Wet Dry World", category: "stage")
Level.create(name: "Snowman's Land", category: "stage")
Level.create(name: "Tiny Huge Island", category: "stage")
Level.create(name: "Big Boo's Haunt", category: "stage")
Level.create(name: "Tick Tock Clock", category: "stage")
Level.create(name: "Rainbow Ride", category: "stage")
Level.create(name: "Princess Peach's Secret Slide", category: "secret")
Level.create(name: "Aquarium", category: "secret")
Level.create(name: "Wing Cap", category: "secret")
Level.create(name: "Metal Cap", category: "secret")
Level.create(name: "Vanish Cap", category: "secret")
Level.create(name: "Wing Mario over the Rainbow", category: "secret")
Level.create(name: "Bowser in the Dark World", category: "secret")
Level.create(name: "Bowser in the Fire Sea", category: "secret")
Level.create(name: "Bowser in the Sky", category: "secret")
