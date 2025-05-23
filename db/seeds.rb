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

Star.create(name: "Big Bob-omb on the Summit", star_number: 1, level_id: 1, star_type: "boss", is_unique: true)
Star.create(name: "Footrace with Koopa the Quick", level_id: 1, star_number: 2, star_type: "spawn")
Star.create(name: "Shoot to the Island in the Sky", level_id: 1, star_number: 3, star_type: "box")
Star.create(name: "Find the 8 Red Coins", level_id: 1, star_number: 4, star_type: "reds")
Star.create(name: "Mario Wings to the Sky", level_id: 1, star_number: 5, star_type: "secrets")
Star.create(name: "Behind Chain Chomp’s Gate", level_id: 1, star_number: 6, star_type: "naked")
Star.create(name: "Bob-omb Battlefield 100 Coins", level_id: 1, star_number: 7, star_type: "100c")
Star.create(name: "Chip off Whomp’s Block", level_id: 2, star_number: 1, star_type: "boss")
Star.create(name: "To the Top of the Fortress", level_id: 2, star_number: 2, star_type: "naked")
Star.create(name: "Shoot into the Wild Blue", level_id: 2, star_number: 3, star_type: "naked")
Star.create(name: "Red Coins on the Floating Isle", level_id: 2, star_number: 4, star_type: "reds")
Star.create(name: "Fall onto the Caged Island", level_id: 2, star_number: 5, star_type: "naked")
Star.create(name: "Blast Away the Wall", level_id: 2, star_number: 6, star_type: "naked")
Star.create(name: "Whomp's Fortress 100 Coins", level_id: 2, star_number: 7, star_type: "100c")
