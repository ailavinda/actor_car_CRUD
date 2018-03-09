class CreateActors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|
      t.string :name
      t.integer :year_of_birth
      t.integer :car_id

      t.timestamps
    end
  end
end
