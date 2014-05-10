# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

athletes = Athlete.create([{ first_name: 'Jim', last_name: 'Robinson', email: 'jimrobinson@gmail.com', password_digest: 'password' },
                             { first_name: 'Scott', last_name: 'Johnson', email: 'scottjohnson@gmail.com', password_digest: 'password' },
                             { first_name: 'Katie', last_name: 'Robinson', email: 'katierobs@gmail.com', password_digest: 'password' },
                             { first_name: 'Peter', last_name: 'Franconi', email: 'peterfranconi@gmail.com', password_digest: 'password' },
                             { first_name: 'Genna', last_name: 'Franconi', email: 'gennafranconi@gmail.com', password_digest: 'password' }])

sports = Sport.create([{id: 1, sport_name: 'Basketball'},
                       {id:2, sport_name: 'Football'},
                       {id:3, sport_name: 'Soccer'}])


positions = Position.create([{id:1, position_name: 'Point Guard', sport: sports.first},
                             {id:2, position_name: 'Center', sport: sports.first},
                             {id:3, position_name: 'Quarter Back', sport: sports.second},
                             {id:4, position_name: 'Wide Receiver', sport: sports.second},
                             {id:5, position_name: 'Striker', sport: sports.last}])

stats = Stat.create([{id:1, stat_name: 'Points', athlete: athletes.first, value: 23},
                     {id:2, stat_name: 'Blocks', athlete: athletes.second, value: 4},
                     {id:3, stat_name: 'Yards Thrown', athlete: athletes.third, value: 234},
                     {id:4, stat_name: 'Receptions', athlete: athletes.fourth, value: 93},
                     {id:5, stat_name: 'Goals', athlete: athletes.last, value: 1}])
