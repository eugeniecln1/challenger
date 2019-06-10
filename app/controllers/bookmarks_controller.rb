class BookmarkedsController < ApplicationController
  def create
    @role_model = RoleModel.find(params[:id])
    @bookmarked = Bookmarked.new(role_model: @role_model, user: current_user)
    if @bookmarked.save
      flash[:notice] = "This role model has been unbookmarked"
    else
      flash[:alert] = "Oops! 😱 a problem has occurred"
    end
    redirect_to role_model_path(@role_model)
  end

  # def destroy
  #   @bookmarked = Bookmarked.find(params[:id])
  #   @participation.assign_attributes(participation_params)
  #   @participation.save
  #   flash[:notice] = "Well done for completing this challenge ! 🥳 Go check your journal to see your feedback"
  #   redirect_to participations_path
  # end
end
