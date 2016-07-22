class Restaurant < ActiveRecord::Base
  validates_presence_of :name

  has_many :reservations
  has_many :stars
  has_many :fans, through: :stars, source: :user
  belongs_to :owner, class_name: "User"
end
