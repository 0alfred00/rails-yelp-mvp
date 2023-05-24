class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :category
      add_foreign_key :articles, :authors


      t.timestamps
    end
  end
end
