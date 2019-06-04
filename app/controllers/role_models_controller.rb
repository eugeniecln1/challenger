class RoleModelsController < ApplicationController
  def index
    @role_models = RoleModel.all
  end

  def show
    @role_model = RoleModel.find(params[:id])
    @challenge = Challenge.new
    authorize @model
  end
end
