# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
sports = Sport.create([{id: 1, name: 'Basketball'}])


positions = Position.create([{id:1, name: 'Point Guard', sport: sports.first},
                             {id:2, name: 'Center', sport: sports.first},
                             {id:3, name: 'Shooting Guard', sport: sports.first},
                             {id:4, name: 'Small Forward', sport: sports.first},
                             {id:5, name: 'Power Forward', sport: sports.first}])
