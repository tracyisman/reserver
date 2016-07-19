class User < ActiveRecord::Base
  USER_ROLES = %w(patron owner)
  private_constant :USER_ROLES

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_inclusion_of :role, in: USER_ROLES

  has_many :restaurants, foreign_key: :owner_id

  def owner?
    role == "owner"
  end
end
