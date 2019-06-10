class BookmarkedsController < ApplicationController
  def create
    @role_model = RoleModel.find(params[:role_model_id])
    @bookmarked = Bookmarked.new
    @bookmarked.role_model = @role_model
    @bookmarked.user = current_user
    if @bookmarked.save
      flash[:notice] = "You have successfully bookmarked this role model 🥳 ! Check out all your bookmarked items in your journal"
    else
      flash[:alert] = "Oops! 😱 a problem has occurred"
    end
    redirect_to role_model_path(@role_model)
  end

  def destroy
    @bookmarked = Bookmarked.find(params[:id])
    @bookmarked.destroy
    flash[:notice] = "This role model has been unbookmarked"
    redirect_to request.referer
  end
end
