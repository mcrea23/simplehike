# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Park.create(name: 'Rocky Mountian National Park', location: 'Colorado') 
Park.create(name: 'Grand Canyon National Park', location: 'Arizona') 
Park.create(name: 'Great Smoky Mountians National Park', location: 'Tennessee') 
Park.create(name: 'Zion National Park', location: 'Utah') 
Park.create(name: 'Yosemite National Park', location: 'California') 

#Rocky Moutian National Park
Trail.create(name: 'Deer Mountian Trail', length: 6.0, difficulty: 'moderate', park_id: 1)
Trail.create(name: 'Gem Lake Trail', length: 3.4, difficulty: 'moderate', park_id: 1)
Trail.create(name: 'Sky Pond via Glacier Gorge Trail', length: 8.5, difficulty: 'hard', park_id: 1)
Trail.create(name: 'Lawn Lake Trail', length: 13.0, difficulty: 'hard', park_id: 1)
Trail.create(name: 'Lake Estes Trail', length: 3.8, difficulty: 'easy', park_id: 1)

#Grand Canyon National Park
Trail.create(name: 'Grand Canyon Rim Trail', length: 12.7, difficulty: 'easy', park_id: 2)
Trail.create(name: 'South Kaibab Trail to Phantom Ranch', length: 13.3, difficulty: 'hard', park_id: 2)
Trail.create(name: 'Shoshone Point Trail', length: 2.1, difficulty: 'easy', park_id: 2)
Trail.create(name: 'Hermit Trail', length: 15.4, difficulty: 'hard', park_id: 2)
Trail.create(name: 'Clear Creek Trail', length: 30.6, difficulty: 'hard', park_id: 2)

#Great Smoky Mountians National Park
Trail.create(name: 'Chimney Tops Trail', length: 4.5, difficulty: 'hard', park_id: 3)
Trail.create(name: 'Rainbow Falls Trail', length: 5.5, difficulty: 'hard', park_id: 3)
Trail.create(name: 'Grotto Falls Trail', length: 2.6, difficulty: 'moderate', park_id: 3)
Trail.create(name: 'Gatliburg Trail', length: 3.8, difficulty: 'easy', park_id: 3)
Trail.create(name: 'Courthouse Rock Trail', length: 2.3, difficulty: 'moderate', park_id: 3)

#Zion National Park
Trail.create(name: 'Angels Landing Trail', length: 5.0, difficulty: 'hard', park_id: 4)
Trail.create(name: 'The Subway Trail', length: 9.1, difficulty: 'hard', park_id: 4)
Trail.create(name: 'Emerald Pools Trail', length: 3.0, difficulty: 'moderate', park_id: 4)
Trail.create(name: 'Lower Emerald Pool Trail', length: 1.4, difficulty: 'easy', park_id: 4)
Trail.create(name: 'The Watchman Trail', length: 3.1, difficulty: 'easy', park_id: 4)

#Yosemite National Park
Trail.create(name: 'Tenaya Lake Trail', length: 3.4, difficulty: 'easy', park_id: 5)
Trail.create(name: 'Sunrise Lakes Trail', length: 9.4, difficulty: 'hard', park_id: 5)
Trail.create(name: 'Clouds Rest Loop', length: 18.8, difficulty: 'hard', park_id: 5)
Trail.create(name: 'Vernal Falls', length: 4.0, difficulty: 'moderate', park_id: 5)
Trail.create(name: 'Lower Yosemite Falls', length: 1.2, difficulty: 'easy', park_id: 5)