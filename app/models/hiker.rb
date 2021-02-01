class Hiker < ApplicationRecord
  has_secure_password
  validates_presence_of :username, :password_digest
  validates :username, uniqueness: true
  has_many :reviews
  has_many :trails, through: :reviews

  before_save :downcase_username

  private
  def downcase_username
    self.username = self.username.downcase
  end
end