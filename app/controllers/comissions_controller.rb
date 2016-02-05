class ComissionsController < ApplicationController
load_and_authorize_resource

  before_action :set_comission, only: [:show, :edit, :update, :destroy]

  # GET /comissions
  # GET /comissions.json
  def index
    @comissions = Comission.all
  end

  # GET /comissions/1
  # GET /comissions/1.json
  def show
  end

  # GET /comissions/new
  def new
    @comission = Comission.new
  end

  # GET /comissions/1/edit
  def edit
  end

  # POST /comissions
  # POST /comissions.json
  def create
    @comission = Comission.new(comission_params)
    respond_to do |format|
      if @comission.save
        format.html { redirect_to @comission, notice: 'Comission was successfully created.' }
        format.json { render :show, status: :created, location: @comission }
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
        format.html { redirect_to @comission, notice: 'Comission was successfully updated.' }
        format.json { render :show, status: :ok, location: @comission }
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
      format.html { redirect_to comissions_url, notice: 'Comission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comission
      @comission = Comission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comission_params
      params.require(:comission).permit(:is_episode, :start_epizode, :end_epizode, :value, :comment, :agent_id, :building_id)
    end
end
