class Restaurant < ActiveRecord::Base
  validates_presence_of :name

  has_many :reservations
  belongs_to :owner, class_name: "User"
end
