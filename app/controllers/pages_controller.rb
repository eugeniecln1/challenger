class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    # @undone_participations = Participation.is_not_validated?.where(user: current_user)
    @participations = current_user.participations
    @counter = {
      dailyactivities: 0,
      futureme: 0,
      interactions: 0,
      curiosity: 0
    }
    @participations.where.not(difficulty: nil, appreciation: nil, feedback: nil).map { |participation| participation.challenge.category }.each do |variable|
      if variable == "Daily activities"
        @counter[:dailyactivities] += 1
      elsif variable == "Future me"
        @counter[:futureme] += 1
      elsif variable == "Interactions"
        @counter[:interactions] += 1
      elsif variable == "Curiosity"
        @counter[:curiosity] += 1
      end
    end
  end
end
