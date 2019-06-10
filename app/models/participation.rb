class Participation < ApplicationRecord
  # RATINGS = [1, 2, 3, 4, 5]
  belongs_to :challenge
  belongs_to :user
  # validates :appreciation, :difficulty, inclusion: { in: RATINGS }

  scope :is_validated?, -> { where("difficulty IS NOT NULL AND appreciation IS NOT NULL AND feedback IS NOT NULL") }
  scope :is_not_validated?, -> { where("difficulty IS NULL OR appreciation IS NULL OR feedback IS NULL") }

  def validated?
    (!difficulty.nil? && !appreciation.nil? && !feedback.nil?)
  end
end
