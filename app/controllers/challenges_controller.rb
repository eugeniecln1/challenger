class ChallengesController < ApplicationController
  def home
  end

  def daily_activities
    @challenges = Challenge.where(category: "Daily activities")
  end

  def future_me
    @challenges = Challenge.where(category: "Future me")
  end

  def interactions
    @challenges = Challenge.where(category: "Interactions")
  end

  def curiosity
    @challenges = Challenge.where(category: "Curiosity")
  end
end
