class ParticipationsController < ApplicationController
  def index
    @participations = current_user.participations
  end

  def create
    @challenge = Challenge.find(params[:challenge_id])
    @participation = Participation.new(challenge: @challenge, user: current_user)
    if @participation.save
      # alert
      redirect_to participations_path
    else
      # alert
      redirect_to participations_path
    end
  end

  def update
    @participation = Participation.find(params[:id])
    @participation.assign_attributes(participation_params)
  end

  private

  def participation_params
    params.require(:participation).permit(:feedback, :difficulty, :appreciation)
  end
end
