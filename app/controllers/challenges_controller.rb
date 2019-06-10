class ChallengesController < ApplicationController
  def home
  end

  def daily_activities
    @challenges = Challenge.where(category: "Daily activities")
    @undone_challenges = @challenges.reject do |challenge|
      challenge.participations.where(user: current_user)[0]
    end
    # undone_participations = @participations.select do |participation|
    #   !participation.feedback.nil? && participation.challenge.category == "Daily activities"
    # end
    # @undone_challenges = undone_participations.map do |undone_participation|
    #   undone_participation.challenge
    # end
  end

  def future_me
    @challenges = Challenge.where(category: "Future me")
    @undone_challenges = @challenges.reject do |challenge|
      challenge.participations.where(user: current_user)[0]
    end
  end

  def interactions
    @challenges = Challenge.where(category: "Interactions")
    @undone_challenges = @challenges.reject do |challenge|
      challenge.participations.where(user: current_user)[0]
    end
  end

  def curiosity
    @challenges = Challenge.where(category: "Curiosity")
    @undone_challenges = @challenges.reject do |challenge|
      challenge.participations.where(user: current_user)[0]
    end
  end
end
