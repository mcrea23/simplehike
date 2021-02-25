class Review < ApplicationRecord
  belongs_to :user
  belongs_to :trail

  validates :content, presence: true

end

