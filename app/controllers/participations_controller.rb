class ParticipationsController < ApplicationController

  def index
    @participations = current_user.participations
  end

  # def show
  #   @participation = Participation.find(params[:id])
  # end

  # def new
  #   @participation = Participation.new
  #   @challenge = Challenge.find(params[:challenge_id])
  # end

  # def create
  #   @challenge = Challenge.find(params[:challenge_id])
  #   @participation = Participation.new(participation_params)
  #   @user = User.find(params[:user_id])

  # end

  # private

  # def participation_params
  #   params.require(:participation).permit(:feedback, :difficulty, :appreciation)
  # end
end
