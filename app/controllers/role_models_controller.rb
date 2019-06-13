class RoleModelsController < ApplicationController
  def index
    @role_models_search = RoleModel.pluck(:first_name, :last_name).flatten
    if params[:query].present?
      sql_query = " \
        first_name ILIKE :query \
        OR last_name ILIKE :query \
      "
      @role_models = RoleModel.where(sql_query, query: "%#{params[:query]}%")
    elsif params[:sector].present? && params[:sector] != 'Sector'
      @role_models = RoleModel.where(sector: params[:sector])
    elsif params[:gender].present? && params[:gender] != 'Gender'
      @role_models = RoleModel.where(gender: params[:gender])
    elsif params[:query].present? && params[:sector].present? && params[:sector] != 'Sector'
      @role_models = RoleModel.where([sql_query, query: "%#{params[:query]}%"], sector: params[:sector])
    elsif params[:query].present? && params[:gender].present? && params[:gender] != 'Gender'
      @role_models = RoleModel.where([sql_query, query: "%#{params[:query]}%"], gender: params[:gender])
    elsif params[:query].present? && params[:gender].present? && params[:gender] != 'Gender' && params[:sector].present? && params[:sector] != 'Sector'
      @role_models = RoleModel.where([sql_query, query: "%#{params[:query]}%"], gender: params[:gender], sector: params[:sector])
    elsif params[:gender].present? && params[:gender] != 'Gender' && params[:sector].present? && params[:sector] != 'Sector'
      @role_models = RoleModel.where(gender: params[:gender], sector: params[:sector])
    else
      @role_models = RoleModel.all
      @bookmarkeds = Bookmarked.where(user: current_user)
    end
  end

  def show
    @role_model = RoleModel.find(params[:id])
    # @bookmarked = Bookmarked.where(role_model: params[:role_model_id])
    @bookmarkeds = @role_model.bookmarkeds.where(user: current_user)
  end

  private

  def role_model_params
    params.require(:role_model).permit(:last_name, :first_name, :sector, :gender, :description, :picture)
  end
end
