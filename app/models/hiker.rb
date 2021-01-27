class Hiker < ApplicationRecord
  has_secure_password
  validates_presence_of :username, :password_digest
  validates :username, uniqueness: true
  has_many :reviews
  has_many :trails, through: :reviews
end
