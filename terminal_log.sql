AnaMacBookPro:actor_car_CRUD ailavinda$ rails db:create
Created database 'actor_car_CRUD_development'
Created database 'actor_car_CRUD_test'
AnaMacBookPro:actor_car_CRUD ailavinda$ rails generate model Actor name:string year_of_birth:integer car_id:integer
Running via Spring preloader in process 49584
      invoke  active_record
      create    db/migrate/20180309025815_create_actors.rb
      create    app/models/actor.rb
      invoke    test_unit
      create      test/models/actor_test.rb
      create      test/fixtures/actors.yml
AnaMacBookPro:actor_car_CRUD ailavinda$ rails generate model Car manufacturer:string model:string year:integer actor_id:integer
Running via Spring preloader in process 49611
      invoke  active_record
      create    db/migrate/20180309030121_create_cars.rb
      create    app/models/car.rb
      invoke    test_unit
      create      test/models/car_test.rb
      create      test/fixtures/cars.yml
AnaMacBookPro:actor_car_CRUD ailavinda$ 

AnaMacBookPro:actor_car_CRUD ailavinda$ rails db:migrate
== 20180309025815 CreateActors: migrating =====================================
-- create_table(:actors)
   -> 0.0281s
== 20180309025815 CreateActors: migrated (0.0281s) ============================

== 20180309030121 CreateCars: migrating =======================================
-- create_table(:cars)
   -> 0.0139s
== 20180309030121 CreateCars: migrated (0.0140s) ==============================

AnaMacBookPro:actor_car_CRUD ailavinda$



irb(main):003:0> Actor.create
   (0.2ms)  BEGIN
  SQL (0.8ms)  INSERT INTO "actors" ("created_at", "updated_at") VALUES ($1, $2) RETURNING "id"  [["created_at", "2018-03-09 03:11:51.731858"], ["updated_at", "2018-03-09 03:11:51.731858"]]
   (7.7ms)  COMMIT
=> #<Actor id: 1, name: nil, year_of_birth: nil, car_id: nil, created_at: "2018-03-09 03:11:51", updated_at: "2018-03-09 03:11:51">
irb(main):004:0> 
irb(main):005:0> Car.create
   (0.2ms)  BEGIN
  SQL (0.8ms)  INSERT INTO "cars" ("created_at", "updated_at") VALUES ($1, $2) RETURNING "id"  [["created_at", "2018-03-09 03:12:34.426201"], ["updated_at", "2018-03-09 03:12:34.426201"]]
   (10.5ms)  COMMIT
=> #<Car id: 1, manufacturer: nil, model: nil, year: nil, actor_id: nil, created_at: "2018-03-09 03:12:34", updated_at: "2018-03-09 03:12:34">
irb(main):006:0> 




AnaMacBookPro:actor_car_CRUD ailavinda$ rails db:drop
Dropped database 'actor_car_CRUD_development'
Dropped database 'actor_car_CRUD_test'
AnaMacBookPro:actor_car_CRUD ailavinda$ 
AnaMacBookPro:actor_car_CRUD ailavinda$ 
AnaMacBookPro:actor_car_CRUD ailavinda$ rails db:create
Created database 'actor_car_CRUD_development'
Created database 'actor_car_CRUD_test'
AnaMacBookPro:actor_car_CRUD ailavinda$


AnaMacBookPro:actor_car_CRUD ailavinda$ rails generate model Actor name:string year_of_birth:integer car_id:integer
Running via Spring preloader in process 50470
      invoke  active_record
   identical    db/migrate/20180309025815_create_actors.rb
   identical    app/models/actor.rb
      invoke    test_unit
   identical      test/models/actor_test.rb
   identical      test/fixtures/actors.yml
AnaMacBookPro:actor_car_CRUD ailavinda$ 
AnaMacBookPro:actor_car_CRUD ailavinda$ 
AnaMacBookPro:actor_car_CRUD ailavinda$ rails generate model Car manufacturer:string model:string year:integer actor_id:integer
Running via Spring preloader in process 50480
      invoke  active_record
   identical    db/migrate/20180309030121_create_cars.rb
   identical    app/models/car.rb
      invoke    test_unit
   identical      test/models/car_test.rb
   identical      test/fixtures/cars.yml
AnaMacBookPro:actor_car_CRUD ailavinda$


AnaMacBookPro:actor_car_CRUD ailavinda$ rails db:migrate
== 20180309025815 CreateActors: migrating =====================================
-- create_table(:actors)
   -> 0.0269s
== 20180309025815 CreateActors: migrated (0.0272s) ============================

== 20180309030121 CreateCars: migrating =======================================
-- create_table(:cars)
   -> 0.0030s
== 20180309030121 CreateCars: migrated (0.0031s) ==============================

AnaMacBookPro:actor_car_CRUD ailavinda$






AnaMacBookPro:actor_car_CRUD ailavinda$ rails db:drop
Dropped database 'actor_car_CRUD_development'
Dropped database 'actor_car_CRUD_test'
AnaMacBookPro:actor_car_CRUD ailavinda$ 
AnaMacBookPro:actor_car_CRUD ailavinda$ 
AnaMacBookPro:actor_car_CRUD ailavinda$ rails db:create
Created database 'actor_car_CRUD_development'
Created database 'actor_car_CRUD_test'
AnaMacBookPro:actor_car_CRUD ailavinda$ rails generate model Actor name:string year_of_birth:integer car_id:integer
Running via Spring preloader in process 50826
      invoke  active_record
      create    db/migrate/20180309045627_create_actors.rb
      create    app/models/actor.rb
      invoke    test_unit
   identical      test/models/actor_test.rb
   identical      test/fixtures/actors.yml
AnaMacBookPro:actor_car_CRUD ailavinda$ 
AnaMacBookPro:actor_car_CRUD ailavinda$ 
AnaMacBookPro:actor_car_CRUD ailavinda$ rails generate model Car manufacturer:string model:string year:integer
Running via Spring preloader in process 50833
      invoke  active_record
      create    db/migrate/20180309045656_create_cars.rb
      create    app/models/car.rb
      invoke    test_unit
   identical      test/models/car_test.rb
    conflict      test/fixtures/cars.yml
    Overwrite /Users/ailavinda/GitHub/actor_car_CRUD/test/fixtures/cars.yml? (enter "h" for help) [Ynaqdh] Y
       force      test/fixtures/cars.yml
AnaMacBookPro:actor_car_CRUD ailavinda$ 


AnaMacBookPro:actor_car_CRUD ailavinda$ rails db:migrate
== 20180309045627 CreateActors: migrating =====================================
-- create_table(:actors)
   -> 0.0235s
== 20180309045627 CreateActors: migrated (0.0236s) ============================

== 20180309045656 CreateCars: migrating =======================================
-- create_table(:cars)
   -> 0.0148s
== 20180309045656 CreateCars: migrated (0.0149s) ==============================

AnaMacBookPro:actor_car_CRUD ailavinda$



AnaMacBookPro:actor_car_CRUD ailavinda$ rails c
Running via Spring preloader in process 50938
Loading development environment (Rails 5.1.5)
irb(main):001:0> car1 = Car.create({manufacturer: "Porsche", model: "550 Spyder", year: 1955})
   (0.1ms)  BEGIN
  SQL (2.7ms)  INSERT INTO "cars" ("manufacturer", "model", "year", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["manufacturer", "Porsche"], ["model", "550 Spyder"], ["year", 1955], ["created_at", "2018-03-09 05:08:38.249733"], ["updated_at", "2018-03-09 05:08:38.249733"]]
   (6.6ms)  COMMIT
=> #<Car id: 1, manufacturer: "Porsche", model: "550 Spyder", year: 1955, created_at: "2018-03-09 05:08:38", updated_at: "2018-03-09 05:08:38">
irb(main):002:0>


irb(main):010:0> Actor.create({name: "James Byron Dean", year_of_birth: 1931, car_id: car1})
   (0.3ms)  BEGIN
  SQL (2.1ms)  INSERT INTO "actors" ("name", "year_of_birth", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "James Byron Dean"], ["year_of_birth", 1931], ["created_at", "2018-03-09 05:17:02.629770"], ["updated_at", "2018-03-09 05:17:02.629770"]]
   (12.8ms)  COMMIT
=> #<Actor id: 1, name: "James Byron Dean", year_of_birth: 1931, car_id: nil, created_at: "2018-03-09 05:17:02", updated_at: "2018-03-09 05:17:02">
irb(main):011:0> 



AnaMacBookPro:actor_car_CRUD ailavinda$ 
AnaMacBookPro:actor_car_CRUD ailavinda$ rails db:drop
Dropped database 'actor_car_CRUD_development'
Dropped database 'actor_car_CRUD_test'
AnaMacBookPro:actor_car_CRUD ailavinda$ rails db:create
Created database 'actor_car_CRUD_development'
Created database 'actor_car_CRUD_test'
AnaMacBookPro:actor_car_CRUD ailavinda$ rails generate model Actor name:string year_of_birth:integer car_id:integer
Running via Spring preloader in process 51110
      invoke  active_record
   identical    db/migrate/20180309045627_create_actors.rb
    conflict    app/models/actor.rb
  Overwrite /Users/ailavinda/GitHub/actor_car_CRUD/app/models/actor.rb? (enter "h" for help) [Ynaqdh] Y
       force    app/models/actor.rb
      invoke    test_unit
   identical      test/models/actor_test.rb
   identical      test/fixtures/actors.yml
AnaMacBookPro:actor_car_CRUD ailavinda$ 
AnaMacBookPro:actor_car_CRUD ailavinda$ rails generate model Car manufacturer:string model:string year:integer
Running via Spring preloader in process 51116
      invoke  active_record
   identical    db/migrate/20180309045656_create_cars.rb
   identical    app/models/car.rb
      invoke    test_unit
   identical      test/models/car_test.rb
   identical      test/fixtures/cars.yml
AnaMacBookPro:actor_car_CRUD ailavinda$ 
AnaMacBookPro:actor_car_CRUD ailavinda$ 
AnaMacBookPro:actor_car_CRUD ailavinda$ rails db:migrate
== 20180309045627 CreateActors: migrating =====================================
-- create_table(:actors)
   -> 0.0274s
== 20180309045627 CreateActors: migrated (0.0274s) ============================

== 20180309045656 CreateCars: migrating =======================================
-- create_table(:cars)
   -> 0.0232s
== 20180309045656 CreateCars: migrated (0.0233s) ==============================

AnaMacBookPro:actor_car_CRUD ailavinda$


irb(main):004:0> 
irb(main):005:0> car1 = Car.create({manufacturer: "Porsche", model: "550 Spyder", year: 1955})
   (0.2ms)  BEGIN
  SQL (0.9ms)  INSERT INTO "cars" ("manufacturer", "model", "year", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["manufacturer", "Porsche"], ["model", "550 Spyder"], ["year", 1955], ["created_at", "2018-03-09 05:27:26.412988"], ["updated_at", "2018-03-09 05:27:26.412988"]]
   (8.3ms)  COMMIT
=> #<Car id: 1, manufacturer: "Porsche", model: "550 Spyder", year: 1955, created_at: "2018-03-09 05:27:26", updated_at: "2018-03-09 05:27:26">
irb(main):006:0> 
irb(main):007:0> car1
=> #<Car id: 1, manufacturer: "Porsche", model: "550 Spyder", year: 1955, created_at: "2018-03-09 05:27:26", updated_at: "2018-03-09 05:27:26">
irb(main):008:0>



irb(main):008:0> 
irb(main):009:0> Actor.create({name: "James Byron Dean", year_of_birth: 1931, car: car1 })
Traceback (most recent call last):
        1: from (irb):9
ActiveModel::UnknownAttributeError (unknown attribute 'car' for Actor.)
irb(main):010:0> car1
=> #<Car id: 1, manufacturer: "Porsche", model: "550 Spyder", year: 1955, created_at: "2018-03-09 05:27:26", updated_at: "2018-03-09 05:27:26">
irb(main):011:0> 
irb(main):012:0> Actor.create({name: "James Byron Dean", year_of_birth: 1931, car_id: car1 })
   (0.2ms)  BEGIN
  SQL (0.8ms)  INSERT INTO "actors" ("name", "year_of_birth", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "James Byron Dean"], ["year_of_birth", 1931], ["created_at", "2018-03-09 05:29:39.700256"], ["updated_at", "2018-03-09 05:29:39.700256"]]
   (11.0ms)  COMMIT
=> #<Actor id: 1, name: "James Byron Dean", year_of_birth: 1931, car_id: nil, created_at: "2018-03-09 05:29:39", updated_at: "2018-03-09 05:29:39">
irb(main):013:0> 


!!!

irb(main):014:0> Actor.create({name: "James Byron Dean", year_of_birth: 1931, car_id: car1.id })
   (0.2ms)  BEGIN
  SQL (0.4ms)  INSERT INTO "actors" ("name", "year_of_birth", "car_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["name", "James Byron Dean"], ["year_of_birth", 1931], ["car_id", 1], ["created_at", "2018-03-09 05:33:14.269666"], ["updated_at", "2018-03-09 05:33:14.269666"]]
   (5.9ms)  COMMIT
=> #<Actor id: 2, name: "James Byron Dean", year_of_birth: 1931, car_id: 1, created_at: "2018-03-09 05:33:14", updated_at: "2018-03-09 05:33:14">
irb(main):015:0>


!!!

AnaMacBookPro:actor_car_CRUD ailavinda$ rails db:seed
AnaMacBookPro:actor_car_CRUD ailavinda$

irb(main):002:0> 
irb(main):003:0> Car.all
  Car Load (6.2ms)  SELECT  "cars".* FROM "cars" LIMIT $1  [["LIMIT", 11]]
=> #<ActiveRecord::Relation [
#<Car id: 1, manufacturer: "Porsche", model: "550 Spyder", year: 1955, created_at: "2018-03-09 05:27:26", updated_at: "2018-03-09 05:27:26">, 
#<Car id: 2, manufacturer: "Porsche", model: "550 Spyder", year: 1955, created_at: "2018-03-09 05:35:30", updated_at: "2018-03-09 05:35:30">, 
#<Car id: 3, manufacturer: "Porsche", model: "959", year: 1993, created_at: "2018-03-09 05:35:30", updated_at: "2018-03-09 05:35:30">, 
#<Car id: 4, manufacturer: "Porsche", model: "Carrera GT", year: 2007, created_at: "2018-03-09 05:35:30", updated_at: "2018-03-09 05:35:30">, 
#<Car id: 5, manufacturer: "Porsche", model: "550 Spyder", year: 1955, created_at: "2018-03-09 05:36:47", updated_at: "2018-03-09 05:36:47">, 
#<Car id: 6, manufacturer: "Porsche", model: "959", year: 1993, created_at: "2018-03-09 05:36:47", updated_at: "2018-03-09 05:36:47">, 
#<Car id: 7, manufacturer: "Porsche", model: "Carrera GT", year: 2007, created_at: "2018-03-09 05:36:47", updated_at: "2018-03-09 05:36:47">
]>
irb(main):004:0> 
irb(main):005:0> 
irb(main):006:0> Actor.all
  Actor Load (0.4ms)  SELECT  "actors".* FROM "actors" LIMIT $1  [["LIMIT", 11]]
=> #<ActiveRecord::Relation [
#<Actor id: 1, name: "James Byron Dean", year_of_birth: 1931, car_id: nil, created_at: "2018-03-09 05:29:39", updated_at: "2018-03-09 05:29:39">, 
#<Actor id: 2, name: "James Byron Dean", year_of_birth: 1931, car_id: 1, created_at: "2018-03-09 05:33:14", updated_at: "2018-03-09 05:33:14">, 
#<Actor id: 3, name: "James Byron Dean", year_of_birth: 1931, car_id: 5, created_at: "2018-03-09 05:36:47", updated_at: "2018-03-09 05:36:47">, 
#<Actor id: 4, name: "Donald Wayne Johnson", year_of_birth: 1949, car_id: 6, created_at: "2018-03-09 05:36:47", updated_at: "2018-03-09 05:36:47">, 
#<Actor id: 5, name: "Jerry Seinfeld", year_of_birth: 1954, car_id: 5, created_at: "2018-03-09 05:36:47", updated_at: "2018-03-09 05:36:47">, 
#<Actor id: 6, name: "Paul William Walker IV", year_of_birth: 1973, car_id: 7, created_at: "2018-03-09 05:36:47", updated_at: "2018-03-09 05:36:47">
]>
irb(main):007:0> 



AnaMacBookPro:actor_car_CRUD ailavinda$ 
AnaMacBookPro:actor_car_CRUD ailavinda$ rails routes
    Prefix Verb   URI Pattern                Controller#Action
    actors GET    /actors(.:format)          actors#index
           POST   /actors(.:format)          actors#create
 new_actor GET    /actors/new(.:format)      actors#new
edit_actor GET    /actors/:id/edit(.:format) actors#edit
     actor GET    /actors/:id(.:format)      actors#show
           PATCH  /actors/:id(.:format)      actors#update
           PUT    /actors/:id(.:format)      actors#update
           DELETE /actors/:id(.:format)      actors#destroy
      cars GET    /cars(.:format)            cars#index
           POST   /cars(.:format)            cars#create
   new_car GET    /cars/new(.:format)        cars#new
  edit_car GET    /cars/:id/edit(.:format)   cars#edit
       car GET    /cars/:id(.:format)        cars#show
           PATCH  /cars/:id(.:format)        cars#update
           PUT    /cars/:id(.:format)        cars#update
           DELETE /cars/:id(.:format)        cars#destroy
AnaMacBookPro:actor_car_CRUD ailavinda$ 


AnaMacBookPro:actor_car_CRUD ailavinda$ 
AnaMacBookPro:actor_car_CRUD ailavinda$ rails g controller actors
Running via Spring preloader in process 51454
      create  app/controllers/actors_controller.rb
      invoke  erb
      create    app/views/actors
      invoke  test_unit
      create    test/controllers/actors_controller_test.rb
      invoke  helper
      create    app/helpers/actors_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/actors.coffee
      invoke    scss
      create      app/assets/stylesheets/actors.scss
AnaMacBookPro:actor_car_CRUD ailavinda$ 
AnaMacBookPro:actor_car_CRUD ailavinda$ rails g controller cars
Running via Spring preloader in process 51459
      create  app/controllers/cars_controller.rb
      invoke  erb
      create    app/views/cars
      invoke  test_unit
      create    test/controllers/cars_controller_test.rb
      invoke  helper
      create    app/helpers/cars_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/cars.coffee
      invoke    scss
      create      app/assets/stylesheets/cars.scss
AnaMacBookPro:actor_car_CRUD ailavinda$ 




