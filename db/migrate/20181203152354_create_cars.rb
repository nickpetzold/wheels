class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.integer :passengers
      t.string :color
      t.integer :horsepower
      t.references :car_type, foreign_key: true
      t.decimal :price_per_day
      t.string :fuel_type
      t.string :city
      t.string :zipcode
      t.string :country
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
