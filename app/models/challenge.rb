class Challenge < ApplicationRecord
  CATEGORIES = ["Daily activities", "Future me", "Interactions", "Curiosity"]
  belongs_to :role_model
  has_many :participations, dependent: :destroy
  validates :title, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }

  def show_category_logo
    if category == "Daily activities"
      @logo = "dragon_mauve.png"
    elsif category == "Future me"
      @logo = "logo_rocket.png"
    elsif category == "Interactions"
      @logo = "coffee-1s-383px.svg"
    elsif category == "Curiosity"
      @logo = "logo_world.png"
    end
  end

  def show_category_color
    if category == "Daily activities"
      @color = "$daily-activities"
    elsif category == "Future me"
      @color = "$future-me"
    elsif category == "Interactions"
      @color = "$interactions"
    elsif category == "Curiosity"
      @color = "$curiosity"
    end
  end
end
