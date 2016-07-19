class AddOwnerToRestaurants < ActiveRecord::Migration
  def change
    add_belongs_to :restaurants, :owner, references: :users, index: true
    add_foreign_key :restaurants, :users, column: :owner_id
  end
end
