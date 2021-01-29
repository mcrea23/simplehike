class Trail < ApplicationRecord
  belongs_to :park
  has_many :reviews
  REVIEW_DIFFICULTY = ["Easy", "Moderate", "Hard"]
  REVIEW_RATING = ["1", "2", "3", "4", "5"]
  validate :difficulty_is_valid?
  validate :rating_is_valid?

  def difficulty_is_valid?
    if !REVIEW_DIFFICULTY.include?(self.difficulty)
      self.errors.add(:difficulty, "must select difficulty to submit")
    end
  end
  
  def rating_is_valid?
    if !REVIEW_RATING.include?(self.rating)
      self.errors.add(:rating, "must select a rating to submit")
    end
  end
end