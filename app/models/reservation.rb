class Reservation < ActiveRecord::Base
  validates_presence_of :email, :eta, :party_size, :restaurant

  belongs_to :restaurant
end
