# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

athletes = Athlete.create([{ id: 1, first_name: 'Jim', last_name: 'Robinson', email: 'jimrobinson@gmail.com', password_digest: 'password' },
                             { id: 2, first_name: 'Scott', last_name: 'Johnson', email: 'scottjohnson@gmail.com', password_digest: 'password' },
                             { id: 3, first_name: 'Katie', last_name: 'Robinson', email: 'katierobs@gmail.com', password_digest: 'password' },
                             { id: 4, first_name: 'Peter', last_name: 'Franconi', email: 'peterfranconi@gmail.com', password_digest: 'password' },
                             { id: 5, first_name: 'Genna', last_name: 'Franconi', email: 'gennafranconi@gmail.com', password_digest: 'password' }])

sports = Sport.create([{id: 1, name: 'Basketball'}])


positions = Position.create([{id:1, name: 'Point Guard', sport: sports.first},
                             {id:2, name: 'Center', sport: sports.first},
                             {id:3, name: 'Shooting Guard', sport: sports.first},
                             {id:4, name: 'Small Forward', sport: sports.first},
                             {id:5, name: 'Power Forward', sport: sports.first}])

high_schools = HighSchool.create ([{ id:1, name: 'Alan C Pope High School', city: 'Marietta', state: 'GA'},
                                   { id:2, name: 'Jupiter High School', city: 'Los Angeles', state: 'CA'},
                                   { id:3, name: 'Upper East High School', city: 'New York City', state: 'NY'},
                                   { id:4, name: 'Skateboard High School', city: 'Portland', state: 'OR'}])


stats = Stat.create ([{ id: 1, athlete_id: 1, sport_id: 1, position_id: 1, points: 24, rebounds: 3, assists: 4, steals: 1, blocks: 0, turnovers: 0, minutes_played: 24},
                      {  id: 2, athlete_id: 2, sport_id: 1, position_id: 2, points: 21, rebounds: 4, assists: 4, steals: 1, blocks: 0, turnovers: 0, minutes_played: 24 },
                      {  id: 3, athlete_id: 3, sport_id: 1, position_id: 3, points: 3, rebounds: 5, assists: 4, steals: 1, blocks: 0, turnovers: 0, minutes_played: 24 },
                      {  id: 4, athlete_id: 4, sport_id: 1, position_id: 4, points: 12, rebounds: 10, assists: 4, steals: 1, blocks: 0, turnovers: 0, minutes_played: 24 },
                      {  id: 5, athlete_id: 5, sport_id: 1, position_id: 5, points: 65, rebounds: 1, assists: 4, steals: 1, blocks: 0, turnovers: 0, minutes_played: 24 }])

