class ComissionsController < ApplicationController
load_and_authorize_resource

  before_action :set_comission, only: [:show, :edit, :update, :destroy]
  before_action :set_title
  add_breadcrumb 'Комиссионные вознаграждения', :comissions_path

  # GET /comissions
  # GET /comissions.json
  def index
    @comissions = Comission.all
  end

  # GET /comissions/1
  # GET /comissions/1.json
  def show
    add_breadcrumb "#{@comission.agent.name} – #{@comission.building.name}", comission_path
    @title = "#{@comission.agent.name} – #{@comission.building.name}"
  end

  # GET /comissions/new
  def new
    @comission = Comission.new
    @title = 'Создание коммиссии'
  end

  # GET /comissions/1/edit
  def edit
    add_breadcrumb "Редактирование #{@comission.agent.name} – #{@comission.building.name}", edit_comission_path
    @title = "#{@comission.agent.name} – #{@comission.building.name}"
  end

  # POST /comissions
  # POST /comissions.json
  def create
    @comission = Comission.new(comission_params)
    respond_to do |format|
      if @comission.save
        format.json { head :no_content }
        format.js
        format.html { redirect_to @comission, notice: 'Comission was successfully created.' }

      else
        format.html { render :new }
        format.json { render json: @comission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comissions/1
  # PATCH/PUT /comissions/1.json
  def update
    respond_to do |format|
      if @comission.update(comission_params)
        format.json { head :no_content }
        format.js
        format.html { redirect_to @comission, notice: 'Comission was successfully updated.' }
      else
        format.html { render :edit }
        format.json { render json: @comission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comissions/1
  # DELETE /comissions/1.json
  def destroy
    @comission.destroy
    respond_to do |format|
      format.js
      format.json { head :no_content }
      format.html { redirect_to comissions_url, notice: 'Comission was successfully destroyed.' }
    end
  end
  def set_title
    @title = 'Комиссионные вознаграждения'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comission
      @comission = Comission.find(params[:id])
    end



    # Never trust parameters from the scary internet, only allow the white list through.
    def comission_params
      params.require(:comission).permit(:set_date, :value, :comment, :agent_id, :building_id)
    end
end
