class Challenge < ApplicationRecord
  CATEGORIES = ["Daily activities", "Future me", "Interactions", "Curiosity"]
  belongs_to :role_model
  has_many :participations, dependent: :destroy
  validates :title, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }

  def show_category_logo
    if category == "Daily activities"
      @logo = "illustrations/bermuda-done.png"
    elsif category == "Future me"
      @logo = "illustrations/bermuda-success.png"
    elsif category == "Interactions"
      @logo = "illustrations/bermuda-logged-out.png"
    elsif category == "Curiosity"
      @logo = "illustrations/bermuda-searching.png"
    end
  end

  def show_category_color_on_difficulty_icon
    if category == "Daily activities"
      @difficulty_logo = "dragon_daily_activities.png"
    elsif category == "Future me"
      @difficulty_logo = "dragon_future_me.png"
    elsif category == "Interactions"
      @difficulty_logo = "dragon_interactions.png"
    elsif category == "Curiosity"
      @difficulty_logo = "dragon_curiosity.png"
    end
  end
end
