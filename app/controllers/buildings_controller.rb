class BuildingsController < ApplicationController
 load_and_authorize_resource

  before_action :set_building, only: [:show, :edit, :update, :destroy]
  before_action :set_title
  add_breadcrumb 'Объекты', :buildings_path

  # GET /buildings
  # GET /buildings.json
  def index
    @buildings = Building.all
  end

  # GET /buildings/1
  # GET /buildings/1.json
  def show
    @corpu = Corpu.new

    add_breadcrumb @building.name, building_path
    @title = @building.name
  end

  # GET /buildings/new
  def new
    @building = Building.new
    @developers = Developer.all
    @title = 'Создание объекта'
  end

  # GET /buildings/1/edit
  def edit
    @developers = Developer.all.order(name: :asc)
    @title = @building.name
    add_breadcrumb "Редактирование #{@building.name}", edit_building_path

  end

  # POST /buildings
  # POST /buildings.json
  def create
    @building = Building.new(building_params)

    respond_to do |format|
      if @building.save
        format.html { redirect_to @building, notice: 'Building was successfully created.' }
        format.json { render :show, status: :created, location: @building }
      else
        format.html { render :new }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buildings/1
  # PATCH/PUT /buildings/1.json
  def update
    respond_to do |format|
      if @building.update(building_params)
        format.html { redirect_to @building, notice: 'Building was successfully updated.' }
        format.json { render :show, status: :ok, location: @building }
      else
        format.html { render :edit }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buildings/1
  # DELETE /buildings/1.json
  def destroy
    @building.destroy
    respond_to do |format|
      format.html { redirect_to buildings_url, notice: 'Building was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

 def set_title
   @title = 'Объекты'
 end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_building
      @building = Building.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def building_params
      params.require(:building).permit(:developer_id, :name, :description)
    end
end
