class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, required: true, index: true
      t.text :address
      t.text :description
      t.string :phone

      t.timestamps null: false
    end
  end
end
