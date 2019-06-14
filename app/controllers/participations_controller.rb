class ParticipationsController < ApplicationController
  def index
    @participations = current_user.participations.order(updated_at: :desc)
    @bookmarkeds = current_user.bookmarkeds
  end

  def create
    @challenge = Challenge.find(params[:challenge_id])
    @participation = Participation.new(challenge: @challenge, user: current_user)
    if @participation.save
      flash[:notice] = "YAASS Let's get challenged ! 🎉"
      redirect_to dashboard_path(participation_id: @participation.id)
    else
      flash[:alert] = "Oops! 😱 a problem has occurred"
      redirect_to dashboard_path
    end
  end

  def update
    @participation = Participation.find(params[:id])
    @participation.assign_attributes(participation_params)
    if @participation.save
      flash[:notice] = "Well done for completing this challenge ! 🥳 Go check your journal to see your feedback"
      respond_to do |format|
        format.html { redirect_to dashboard_path }
        format.js
      end
    end
  end

  private

  def participation_params
    params.require(:participation).permit(:feedback, :difficulty, :appreciation)
  end
end
