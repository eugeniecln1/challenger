class ParticipationsController < ApplicationController
  def index
    @participations = current_user.participations
  end

  # def create
  #   @user = current_user
  #   @challenge = Challenge.find(params[:challenge_id])
  #   @participation = Participation.new(participation_params)
  # end

  # private

  # def participation_params
  #   params.require(:participation).permit(:feedback, :difficulty, :appreciation)
  # end
end
