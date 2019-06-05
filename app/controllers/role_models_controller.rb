class RoleModelsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = " \
        first_name ILIKE :query \
        OR last_name ILIKE :query \
        OR sector ILIKE :query \
        OR description ILIKE :query \
      "
      @role_models = RoleModel.where(sql_query, query: "%#{params[:query]}%").or(RoleModel.where(gender: params[:query].capitalize))
    else
      @role_models = RoleModel.all
    end
  end

  def show
    @role_model = RoleModel.find(params[:id])
    @challenge = Challenge.new
  end
end
