class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.belongs_to :restaurant, foreign_key: true, index: true, null: false
      t.belongs_to :user, foreign_key: true, index: true, null: false
    end
  end
end
