# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Level.create!([
  { name: "Bob-omb Battlefield", category: "stage", official_course_number: 1 },
  { name: "Whomp's Fortress", category: "stage", official_course_number: 2 },
  { name: "Jolly Roger Bay", category: "stage", official_course_number: 3 },
  { name: "Cool, Cool Mountain", category: "stage", official_course_number: 4 },
  { name: "Big Boo's Haunt", category: "stage", official_course_number: 5 },
  { name: "Hazy Maze Cave", category: "stage", official_course_number: 6 },
  { name: "Lethal Lava Land", category: "stage", official_course_number: 7 },
  { name: "Shifting Sand Land", category: "stage", official_course_number: 8 },
  { name: "Dire Dire Docks", category: "stage", official_course_number: 9 },
  { name: "Snowman's Land", category: "stage", official_course_number: 10 },
  { name: "Wet Dry World", category: "stage", official_course_number: 11 },
  { name: "Tall, Tall Mountain", category: "stage", official_course_number: 12 },
  { name: "Tiny Huge Island", category: "stage", official_course_number: 13 },
  { name: "Tick Tock Clock", category: "stage", official_course_number: 14 },
  { name: "Rainbow Ride", category: "stage", official_course_number: 15 },
  { name: "Princess Peach's Secret Slide", category: "secret", official_course_number: 16 },
  { name: "Aquarium", category: "secret", official_course_number: 17 },
  { name: "Wing Cap", category: "secret", official_course_number: 18 },
  { name: "Metal Cap", category: "secret", official_course_number: 19 },
  { name: "Vanish Cap", category: "secret", official_course_number: 20 },
  { name: "Bowser in the Dark World", category: "secret", official_course_number: 21 },
  { name: "Bowser in the Fire Sea", category: "secret", official_course_number: 22 },
  { name: "Bowser in the Sky", category: "secret", official_course_number: 23 },
  { name: "Wing Mario over the Rainbow", category: "secret", official_course_number: 24 }
])

Star.create!([
  # Bob-omb Battlefield (level_id: 1)
  { name: "Big Bob-omb on the Summit", level_id: 1, star_number: 1, star_type: "boss", is_unique: "true" },
  { name: "Footrace with Koopa the Quick", level_id: 1, star_number: 2, star_type: "spawn", is_unique: "true" },
  { name: "Shoot to the Island in the Sky", level_id: 1, star_number: 3, star_type: "box", is_unique: "true" },
  { name: "Find the 8 Red Coins", level_id: 1, star_number: 4, star_type: "reds", is_unique: "true" },
  { name: "Mario Wings to the Sky", level_id: 1, star_number: 5, star_type: "secrets", is_unique: "true" },
  { name: "Behind Chain Chomp’s Gate", level_id: 1, star_number: 6, star_type: "naked", is_unique: "true" },
  { name: "Bob-omb Battlefield 100 Coins", level_id: 1, star_number: 7, star_type: "100c", is_unique: "true" },

  # Whomp's Fortress (level_id: 2)
  { name: "Chip off Whomp’s Block", level_id: 2, star_number: 1, star_type: "boss", is_unique: "true" },
  { name: "To the Top of the Fortress", level_id: 2, star_number: 2, star_type: "naked", is_unique: "false" },
  { name: "Shoot into the Wild Blue", level_id: 2, star_number: 3, star_type: "naked", is_unique: "false" },
  { name: "Red Coins on the Floating Isle", level_id: 2, star_number: 4, star_type: "reds", is_unique: "true" },
  { name: "Fall onto the Caged Island", level_id: 2, star_number: 5, star_type: "naked", is_unique: "false" },
  { name: "Blast Away the Wall", level_id: 2, star_number: 6, star_type: "naked", is_unique: "false" },
  { name: "Whomp's Fortress 100 Coins", level_id: 2, star_number: 7, star_type: "100c", is_unique: "true" },

  # Jolly Roger Bay (level_id: 3)
  { name: "Plunder in the Sunken Ship", level_id: 3, star_number: 1, star_type: "spawn", is_unique: "true" },
  { name: "Can the Eel Come out and Play?", level_id: 3, star_number: 2, star_type: "spawn", is_unique: "true" },
  { name: "Treasure of the Ocean Cave", level_id: 3, star_number: 3, star_type: "spawn", is_unique: "true" },
  { name: "Red Coins on the Ship Afloat", level_id: 3, star_number: 4, star_type: "reds", is_unique: "true" },
  { name: "Blast to the Stone Pillar", level_id: 3, star_number: 5, star_type: "box", is_unique: "true" },
  { name: "Through the Jet Stream", level_id: 3, star_number: 6, star_type: "naked", is_unique: "true" },
  { name: "Jolly Roger Bay 100 Coins", level_id: 3, star_number: 7, star_type: "100c", is_unique: "true" },

  # Cool, Cool Mountain (level_id: 4)
  { name: "Slip Slidin’ Away", level_id: 4, star_number: 1, star_type: "spawn", is_unique: "true" },
  { name: "Li’l Penguin Lost", level_id: 4, star_number: 2, star_type: "spawn", is_unique: "true" },
  { name: "Big Penguin Race", level_id: 4, star_number: 3, star_type: "spawn", is_unique: "true" },
  { name: "Frosty Slide for 8 Red Coins", level_id: 4, star_number: 4, star_type: "reds", is_unique: "true" },
  { name: "Snowman’s Lost his Head", level_id: 4, star_number: 5, star_type: "spawn", is_unique: "true" },
  { name: "Wall Kicks will Work", level_id: 4, star_number: 6, star_type: "naked", is_unique: "true" },
  { name: "Cool, Cool Mountain 100 Coins", level_id: 4, star_number: 7, star_type: "100c", is_unique: "true" },

  # Big Boo's Haunt (level_id: 5)
  { name: "Go on a Ghost Hunt", level_id: 5, star_number: 1, star_type: "spawn", is_unique: "true" },
  { name: "Ride Big Boo’s Merry-Go-Round", level_id: 5, star_number: 2, star_type: "spawn", is_unique: "true" },
  { name: "Secret of the Haunted Books", level_id: 5, star_number: 3, star_type: "naked", is_unique: "true" },
  { name: "Seek the 8 Red Coins", level_id: 5, star_number: 4, star_type: "reds", is_unique: "true" },
  { name: "Big Boo’s Balcony", level_id: 5, star_number: 5, star_type: "spawn", is_unique: "true" },
  { name: "Eye to Eye in the Secret Room", level_id: 5, star_number: 6, star_type: "spawn", is_unique: "true" },
  { name: "Big Boo’s Haunt 100 Coins", level_id: 5, star_number: 7, star_type: "100c", is_unique: "true" },

  # Hazy Maze Cave (level_id: 6)
  { name: "Swimming Beast in the Cavern", level_id: 6, star_number: 1, star_type: "naked", is_unique: "false" },
  { name: "Elevate for 8 Red Coins", level_id: 6, star_number: 2, star_type: "reds", is_unique: "true" },
  { name: "Metal-Head Mario Can Move!", level_id: 6, star_number: 3, star_type: "naked", is_unique: "false" },
  { name: "Navigating the Toxic Maze", level_id: 6, star_number: 4, star_type: "naked", is_unique: "false" },
  { name: "A-Maze-ing Emergency Exit", level_id: 6, star_number: 5, star_type: "naked", is_unique: "false" },
  { name: "Watch for the Rolling Rocks", level_id: 6, star_number: 6, star_type: "naked", is_unique: "false" },
  { name: "Hazy Maze Cave 100 Coins", level_id: 6, star_number: 7, star_type: "100c", is_unique: "true" },

  # Lethal Lava Land (level_id: 7)
  { name: "Boil the Big Bully", level_id: 7, star_number: 1, star_type: "boss", is_unique: "true" },
  { name: "Bully the Bullies", level_id: 7, star_number: 2, star_type: "boss", is_unique: "true" },
  { name: "8-Coin Puzzle with 15 Pieces", level_id: 7, star_number: 3, star_type: "reds", is_unique: "true" },
  { name: "Red-Hot Log Rolling", level_id: 7, star_number: 4, star_type: "naked", is_unique: "true" },
  { name: "Hot-Foot-It into the Volcano", level_id: 7, star_number: 5, star_type: "naked", is_unique: "false" },
  { name: "Elevator Tour in the Volcano", level_id: 7, star_number: 6, star_type: "naked", is_unique: "false" },
  { name: "Lethal Lava Land 100 Coins", level_id: 7, star_number: 7, star_type: "100c", is_unique: "100c" },

  # Shifting Sand Land (level_id: 8)
  { name: "In the Talons of the Big Bird", level_id: 8, star_number: 1, star_type: "spawn", is_unique: "true" },
  { name: "Shining Atop the Pyramid", level_id: 8, star_number: 2, star_type: "naked", is_unique: "true" },
  { name: "Inside the Ancient Pyramid", level_id: 8, star_number: 3, star_type: "naked", is_unique: "true" },
  { name: "Stand Tall on the Four Pillars", level_id: 8, star_number: 4, star_type: "boss", is_unique: "true" },
  { name: "Free Flying for 8 Red Coins", level_id: 8, star_number: 5, star_type: "reds", is_unique: "true" },
  { name: "Pyramid Puzzle", level_id: 8, star_number: 6, star_type: "secrets", is_unique: "true" },
  { name: "Shifting Sand Land 100 Coins", level_id: 8, star_number: 7, star_type: "100c", is_unique: "true" },

  # Dire, Dire Docks (level_id: 9)
  { name: "Board Bowser’s Sub", level_id: 9, star_number: 1, star_type: "naked", is_unique: "false" },
  { name: "Chests in the Current", level_id: 9, star_number: 2, star_type: "spawn", is_unique: "true" },
  { name: "Pole-Jumping for Red Coins", level_id: 9, star_number: 3, star_type: "reds", is_unique: "true" },
  { name: "Through the Jet Stream", level_id: 9, star_number: 4, star_type: "naked", is_unique: "true" },
  { name: "The Manta Ray’s Reward", level_id: 9, star_number: 5, star_type: "spawn", is_unique: "true" },
  { name: "Collect the Caps", level_id: 9, star_number: 6, star_type: "naked", is_unique: "false" },
  { name: "Dire, Dire Docks 100 Coins", level_id: 9, star_number: 7, star_type: "100c", is_unique: "true" },

  # Snowman's Land (level_id: 10)
  { name: "Snowman's Big Head", level_id: 10, star_number: 1, star_type: "naked", is_unique: "false" },
  { name: "Chill with the Bully", level_id: 10, star_number: 2, star_type: "spawn", is_unique: "true" },
  { name: "In the Deep Freeze", level_id: 10, star_number: 3, star_type: "naked", is_unique: "false" },
  { name: "Whirl from the Freezing Pond", level_id: 10, star_number: 4, star_type: "box", is_unique: "true" },
  { name: "Shell Shreddin' for 8 Red Coins", level_id: 10, star_number: 5, star_type: "reds", is_unique: "true" },
  { name: "Into the Igloo", level_id: 10, star_number: 6, star_type: "naked", is_unique: "true" },
  { name: "Snowman's Land 100 Coins", level_id: 10, star_number: 7, star_type: "100c", is_unique: "true" },

  # Wet-Dry World (level_id: 11)
  { name: "Shocking Arrow Lifts!", level_id: 11, star_number: 1, star_type: "box", is_unique: "false" },
  { name: "Top o' the Town", level_id: 11, star_number: 2, star_type: "box", is_unique: "false" },
  { name: "Secrets in the Shallows and Sky", level_id: 11, star_number: 3, star_type: "secrets", is_unique: "true" },
  { name: "Express Elevator--Hurry Up!", level_id: 11, star_number: 4, star_type: "naked", is_unique: "true" },
  { name: "Go to Town for Red Coins", level_id: 11, star_number: 5, star_type: "reds", is_unique: "true" },
  { name: "Quick Race Through Downtown!", level_id: 11, star_number: 6, star_type: "naked", is_unique: "true" },
  { name: "Wet-Dry World 100 Coins", level_id: 11, star_number: 7, star_type: "100c", is_unique: "true" },

  # Tall, Tall Mountain (level_id: 12)
  { name: "Scale the Mountain", level_id: 12, star_number: 1, star_type: "naked", is_unique: "false" },
  { name: "Mystery of the Monkey Cage", level_id: 12, star_number: 2, star_type: "spawn", is_unique: "true" },
  { name: "Scary 'Shrooms, Red Coins", level_id: 12, star_number: 3, star_type: "reds", is_unique: "true" },
  { name: "Mysterious Mountainside", level_id: 12, star_number: 4, star_type: "naked", is_unique: "false" },
  { name: "Breathtaking View from Bridge", level_id: 12, star_number: 5, star_type: "naked", is_unique: "false" },
  { name: "Blast to the Lonely Mushroom", level_id: 12, star_number: 6, star_type: "naked", is_unique: "false" },
  { name: "Tall, Tall Mountain 100 Coins", level_id: 12, star_number: 7, star_type: "100c", is_unique: "true" },

  # Tiny-Huge Island (level_id: 13)
  { name: "Pluck the Piranha Flower", level_id: 13, star_number: 1, star_type: "spawn", is_unique: "true" },
  { name: "The Tip Top of the Huge Island", level_id: 13, star_number: 2, star_type: "box", is_unique: "true" },
  { name: "Rematch with Koopa the Quick", level_id: 13, star_number: 3, star_type: "false", is_unique: "true" },
  { name: "Five Itty Bitty Secrets", level_id: 13, star_number: 4, star_type: "secrets", is_unique: "true" },
  { name: "Wiggler's Red Coins", level_id: 13, star_number: 5, star_type: "reds", is_unique: "true" },
  { name: "Make Wiggler Squirm", level_id: 13, star_number: 6, star_type: "boss", is_unique: "true" },
  { name: "Tiny-Huge Island 100 Coins", level_id: 13, star_number: 7, star_type: "100c", is_unique: "true" },

  # Tick Tock Clock (level_id: 14)
  { name: "Roll into the Cage", level_id: 14, star_number: 1, star_type: "naked", is_unique: "false" },
  { name: "The Pit and the Pendulums", level_id: 14, star_number: 2, star_type: "naked", is_unique: "false" },
  { name: "Get a Hand", level_id: 14, star_number: 3, star_type: "naked", is_unique: "false" },
  { name: "Stomp on the Thwomp", level_id: 14, star_number: 4, star_type: "naked", is_unique: "false" },
  { name: "Timed Jumps on Moving Bars", level_id: 14, star_number: 5, star_type: "naked", is_unique: "false" },
  { name: "Stop Time for Red Coins", level_id: 14, star_number: 6, star_type: "reds", is_unique: "true" },
  { name: "Tick Tock Clock 100 Coins", level_id: 14, star_number: 7, star_type: "100c", is_unique: "true" },

  # Rainbow Ride (level_id: 15)
  { name: "Cruiser Crossing the Rainbow", level_id: 15, star_number: 1, star_type: "naked", is_unique: "false" },
  { name: "The Big House in the Sky", level_id: 15, star_number: 2, star_type: "naked", is_unique: "false" },
  { name: "Coins Amassed in a Maze", level_id: 15, star_number: 3, star_type: "reds", is_unique: "true" },
  { name: "Swingin' in the Breeze", level_id: 15, star_number: 4, star_type: "naked", is_unique: "false" },
  { name: "Tricky Triangles!", level_id: 15, star_number: 5, star_type: "naked", is_unique: "false" },
  { name: "Somewhere Over the Rainbow", level_id: 15, star_number: 6, star_type: "box", is_unique: "true" },
  { name: "Rainbow Ride 100 Coins", level_id: 15, star_number: 7, star_type: "100c", is_unique: "true" },

  # Princess Peach's Secret Slide (level_id: 16)
  { name: "The Princess's Secret Slide", level_id: 16, star_number: 1, star_type: "box", is_unique: true },
  { name: "The Princess's Secret Slide (Under 21 Seconds)", level_id: 16, star_number: 2, star_type: "spawn", is_unique: true },

  # Aquarium (level_id: 17)
  { name: "The Secret Aquarium", level_id: 17, star_number: 1, star_type: "reds", is_unique: true },

  # Wing Cap (level_id: 18)
  { name: "Tower of the Wing Cap", level_id: 18, star_number: 1, star_type: "reds", is_unique: true },

  # Metal Cap (level_id: 19)
  { name: "Cavern of the Metal Cap", level_id: 19, star_number: 1, star_type: "reds", is_unique: true },

  # Vanish Cap (level_id: 20)
  { name: "Vanish Cap Under the Moat", level_id: 20, star_number: 1, star_type: "reds", is_unique: true },

  # Bowser in the Dark World (level_id: 21)
  { name: "Bowser in the Dark World Red Coins", level_id: 21, star_number: 1, star_type: "reds", is_unique: true },

  # Bowser in the Fire Sea (level_id: 22)
  { name: "Bowser in the Fire Sea Red Coins", level_id: 22, star_number: 1, star_type: "reds", is_unique: true },

  # Bowser in the Sky (level_id: 23)
  { name: "Bowser in the Sky Red Coins", level_id: 23, star_number: 1, star_type: "reds", is_unique: true },

  # Wing Mario over the Rainbow (level_id: 24)
  { name: "Wing Mario Over the Rainbow", level_id: 24, star_number: 1, star_type: "reds", is_unique: true },

  # Toad Stars (no specific level_id)
  { name: "Toad's First Star", level_id: nil, star_number: nil, star_type: "toad", is_unique: true },
  { name: "Toad's Second Star", level_id: nil, star_number: nil, star_type: "toad", is_unique: false },
  { name: "Toad's Third Star", level_id: nil, star_number: nil, star_type: "toad", is_unique: false },

  # MIPS Stars (no specific level_id)
  { name: "MIPS the Rabbit (First Catch)", level_id: nil, star_number: nil, star_type: "mips", is_unique: true },
  { name: "MIPS the Rabbit (Second Catch)", level_id: nil, star_number: nil, star_type: "mips", is_unique: true }
])

levels_by_course = Level.all.index_by(&:official_course_number)

Run.create!([
  # Bob-omb Battlefield runs
  { level: levels_by_course[1], minutes: 4, seconds: 48, milliseconds: 15, date_performed: Date.new(2024, 11, 23) },
  { level: levels_by_course[1], minutes: 4, seconds: 54, milliseconds: 30, date_performed: Date.new(2024, 11, 23) },
  { level: levels_by_course[1], minutes: 5, seconds: 6, milliseconds: 82, date_performed: Date.new(2024, 11, 26) },
  { level: levels_by_course[1], minutes: 4, seconds: 43, milliseconds: 18, date_performed: Date.new(2024, 11, 28) },
  { level: levels_by_course[1], minutes: 4, seconds: 52, milliseconds: 98, date_performed: Date.new(2024, 12, 1) },
  { level: levels_by_course[1], minutes: 4, seconds: 46, milliseconds: 0, date_performed: Date.new(2024, 12, 2) },
  { level: levels_by_course[1], minutes: 5, seconds: 2, milliseconds: 15, date_performed: Date.new(2024, 12, 24) },
  { level: levels_by_course[1], minutes: 5, seconds: 8, milliseconds: 73, date_performed: Date.new(2024, 12, 28) },
  { level: levels_by_course[1], minutes: 5, seconds: 29, milliseconds: 55, date_performed: Date.new(2024, 12, 28) },
  { level: levels_by_course[1], minutes: 4, seconds: 32, milliseconds: 78, date_performed: Date.new(2025, 1, 3) },

  # Whomp's Fortress runs
  { level: levels_by_course[2], minutes: 2, seconds: 35, milliseconds: 87, date_performed: Date.new(2024, 11, 23) },
  { level: levels_by_course[2], minutes: 2, seconds: 57, milliseconds: 87, date_performed: Date.new(2024, 11, 28) },
  { level: levels_by_course[2], minutes: 2, seconds: 43, milliseconds: 78, date_performed: Date.new(2024, 11, 29) },
  { level: levels_by_course[2], minutes: 2, seconds: 50, milliseconds: 6, date_performed: Date.new(2024, 11, 29) },
  { level: levels_by_course[2], minutes: 2, seconds: 17, milliseconds: 70, date_performed: Date.new(2024, 11, 29) },
  { level: levels_by_course[2], minutes: 2, seconds: 43, milliseconds: 8, date_performed: Date.new(2024, 12, 1) },
  { level: levels_by_course[2], minutes: 2, seconds: 18, milliseconds: 13, date_performed: Date.new(2024, 12, 2) },
  { level: levels_by_course[2], minutes: 2, seconds: 23, milliseconds: 57, date_performed: Date.new(2024, 12, 24) },
  { level: levels_by_course[2], minutes: 2, seconds: 39, milliseconds: 33, date_performed: Date.new(2024, 12, 26) },
  { level: levels_by_course[2], minutes: 2, seconds: 27, milliseconds: 2, date_performed: Date.new(2024, 12, 28) },
  { level: levels_by_course[2], minutes: 2, seconds: 37, milliseconds: 22, date_performed: Date.new(2024, 12, 28) },

  # Jolly Roger Bay runs
  { level: levels_by_course[3], minutes: 4, seconds: 47, milliseconds: 27, date_performed: Date.new(2024, 11, 20) },
  { level: levels_by_course[3], minutes: 4, seconds: 3, milliseconds: 52, date_performed: Date.new(2024, 11, 20) },
  { level: levels_by_course[3], minutes: 5, seconds: 15, milliseconds: 77, date_performed: Date.new(2024, 11, 23) },
  { level: levels_by_course[3], minutes: 4, seconds: 41, milliseconds: 95, date_performed: Date.new(2024, 11, 28) },
  { level: levels_by_course[3], minutes: 4, seconds: 47, milliseconds: 10, date_performed: Date.new(2024, 11, 29) },
  { level: levels_by_course[3], minutes: 6, seconds: 5, milliseconds: 47, date_performed: Date.new(2024, 12, 1) },
  { level: levels_by_course[3], minutes: 4, seconds: 32, milliseconds: 53, date_performed: Date.new(2024, 12, 10) },
  { level: levels_by_course[3], minutes: 5, seconds: 9, milliseconds: 13, date_performed: Date.new(2024, 12, 24) },
  { level: levels_by_course[3], minutes: 4, seconds: 56, milliseconds: 90, date_performed: Date.new(2024, 12, 28) },
  { level: levels_by_course[3], minutes: 4, seconds: 29, milliseconds: 73, date_performed: Date.new(2024, 12, 28) }
])
