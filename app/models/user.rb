class User < ActiveRecord::Base
  before_save { self.name = name.downcase }
  validates :name, presence: true, uniqueness: true
  has_secure_password

  has_many :reservations
  has_many :books, through: :reservations
end
