# This file should contain all the record creation needed to seed the database with its 
# default values.
# The data can then be loaded with the rails db:seed command (or created alongside the 
# database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

car1 = Car.create({manufacturer: "Porsche", model: "550 Spyder", year: 1955})
car2 = Car.create({manufacturer: "Porsche", model: "959", year: 1993})
car3 = Car.create({manufacturer: "Porsche", model: "Carrera GT", year: 2007})

Actor.create([
  {name: "James Byron Dean", year_of_birth: 1931, car_id: car1.id },
  {name: "Donald Wayne Johnson", year_of_birth: 1949, car_id: car2.id },
  {name: "Jerry Seinfeld", year_of_birth: 1954, car_id: car1.id},
  {name: "Paul William Walker IV", year_of_birth: 1973, car_id: car3.id}
  ])
  

# INSERT INTO "actors" ("name", "year_of_birth") VALUES 
# ("James Byron Dean", 1931),
# ("Donald Wayne Johnson", 1949),
# ("Jerry Seinfeld", 1954),
# ("Paul William Walker IV", 1973);

# INSERT INTO "cars" ("manufacturer", "model", "year") VALUES 
# ("Porsche", "550 Spyder", 1955),
# ("Porsche", "959", 1993),
# ("Porsche", "Carrera GT", 2007);


