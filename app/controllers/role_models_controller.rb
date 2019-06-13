class RoleModelsController < ApplicationController
  def index
    @role_models_search = RoleModel.pluck(:first_name, :last_name).flatten
    if params[:query].present?
      sql_query = " \
        first_name ILIKE :query \
        OR last_name ILIKE :query \
      "
    end
    if params[:query].present? && params[:gender].present? && params[:gender] != 'Gender' && params[:sector].present? && params[:sector] != 'Sector'
      @role_models_unfiltered = RoleModel.where([sql_query, query: "%#{params[:query]}%"]).where(gender: params[:gender])
      @role_models = []
      @role_models_unfiltered.to_a.each do |r|
        sector = r.sector
        sector_as_array = sector.split(',')
        @role_models << r if sector_as_array.include?(params[:sector])
      end
    elsif params[:query].present? && params[:sector].present? && params[:sector] != 'Sector' && params[:gender] == ''
      @role_models_unfiltered = RoleModel.where([sql_query, query: "%#{params[:query]}%"])
      @role_models = []
      @role_models_unfiltered.to_a.each do |r|
        sector = r.sector
        sector_as_array = sector.split(',')
        @role_models << r if sector_as_array.include?(params[:sector])
      end
    elsif params[:query].present? && params[:gender].present? && params[:gender] != 'Gender' && params[:sector] == ''
      @role_models = RoleModel.where([sql_query, query: "%#{params[:query]}%"]).where(gender: params[:gender])
    elsif params[:gender].present? && params[:gender] != 'Gender' && params[:sector].present? && params[:sector] != 'Sector'
      @role_models_unfiltered = RoleModel.where(gender: params[:gender])
      @role_models = []
      @role_models_unfiltered.to_a.each do |r|
        sector = r.sector
        sector_as_array = sector.split(',')
        @role_models << r if sector_as_array.include?(params[:sector])
      end
    elsif params[:query].present?
      @role_models = RoleModel.where(sql_query, query: "%#{params[:query]}%")
    elsif params[:sector].present? && params[:sector] != 'Sector'
      @role_models = []
      RoleModel.all.each do |r|
        sector = r.sector
        sector_as_array = sector.split(',')
        @role_models << r if sector_as_array.include?(params[:sector])
      end
    elsif params[:gender].present? && params[:gender] != 'Gender'
      @role_models = RoleModel.where(gender: params[:gender])

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
