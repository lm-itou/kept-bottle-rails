class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :geo
      t.integer :user_id

      t.timestamps
    end
  end
end
