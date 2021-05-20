class CreateBottles < ActiveRecord::Migration[6.1]
  def change
    create_table :bottles do |t|
      t.integer :restaurant_id
      t.integer :user_id
      t.string :status

      t.timestamps
    end
  end
end
