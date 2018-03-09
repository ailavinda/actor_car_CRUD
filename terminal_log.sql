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

