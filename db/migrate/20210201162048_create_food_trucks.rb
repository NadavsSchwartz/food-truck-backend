class CreateFoodTrucks < ActiveRecord::Migration[6.0]
  def change
    create_table :food_trucks do |t|
      t.string :name
      t.string :location
      t.string :category
      t.string :hours
      t.string :score
      t.string :description
      t.integer :account_id
      t.belongs_to
      t.timestamps
    end
  end
end
