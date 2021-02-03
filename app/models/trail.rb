class Trail < ApplicationRecord
  belongs_to :park
  has_many :reviews
  has_many :users through: :reviews

end