# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

athletes = Athlete.create([{ first_name: 'Jim', last_name: 'Robinson', email: 'jimrobinson@gmail.com' },
                             { first_name: 'Scott', last_name: 'Johnson', email: 'scottjohnson@gmail.com' },
                             { first_name: 'Katie', last_name: 'Robinson', email: 'katierobs@gmail.com' },
                             { first_name: 'Peter', last_name: 'Franconi', email: 'peterfranconi@gmail.com' },
                             { first_name: 'Genna', last_name: 'Franconi', email: 'gennafranconi@gmail.com' }])
