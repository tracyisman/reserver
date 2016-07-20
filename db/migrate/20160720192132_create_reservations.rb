class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :email, null: false
      t.datetime :eta, null: false
      t.integer :party_size, null: false
      t.references :restaurant, index: true, foreign_key: true, null: false
      t.string :name

      t.timestamps null: false
    end
  end
end
