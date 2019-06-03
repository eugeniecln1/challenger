class Challenge < ApplicationRecord
  CATEGORIES = ["Daily activities", "Future me", "Interactions", "Curiosity"]
  belongs_to :role_models
  has_many :participations, dependen: :destroy
  validates :title, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
