class Challenge < ApplicationRecord
  CATEGORIES = ["Daily activities", "Future me", "Interactions", "Curiosity"]
  belongs_to :role_model
  has_many :participations, dependent: :destroy
  validates :title, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
