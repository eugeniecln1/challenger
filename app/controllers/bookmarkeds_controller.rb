class BookmarkedsController < ApplicationController
  def create
    @role_model = RoleModel.find(params[:role_model_id])
    @bookmarked = Bookmarked.new
    @bookmarked.role_model = @role_model
    @bookmarked.user = current_user
    if @bookmarked.save
      respond_to do |format|
        format.html { redirect_to role_model_path(@role_model) }
        format.js
      end
      flash[:notice] = "You have successfully bookmarked this role model 🥳 ! Check out all your bookmarked items in your journal"
    else
      respond_to do |format|
        format.html { render 'role_models/show' }
        format.js
      end
      flash[:alert] = "Oops! 😱 a problem has occurred"
    end
  end

  def destroy
    @bookmarked = Bookmarked.find(params[:id])
    @role_model = @bookmarked.role_model
    @bookmarked.destroy
    respond_to do |format|
      format.html { redirect_to request.referer }
      format.js
    end
    flash[:notice] = "This role model has been unbookmarked"
  end
end
