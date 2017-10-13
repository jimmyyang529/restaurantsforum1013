class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :tel
      t.string :opening_hour
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
