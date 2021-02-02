class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews
  has_many :trails, through: :reviews

  before_save :downcase_email

  private
  def downcase_email
    self.email = self.email.downcase
  end
end