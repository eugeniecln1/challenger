class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.all
  end

  def show
    @challenge = Challenge.find(params[:id])
    @role_model = @challenge.role_model
  end
end
