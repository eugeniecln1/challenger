class Participation < ApplicationRecord
  RATINGS = [1, 2, 3, 4, 5]
  belongs_to :challenge
  belongs_to :user
  validates :feedback, presence: true
  validates :appreciation, :difficulty, presence: true, inclusion: { in: RATINGS }
end
