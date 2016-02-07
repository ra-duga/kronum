class DevelopersController < ApplicationController
load_and_authorize_resource

  before_action :set_developer, only: [:show, :edit, :update, :destroy]

  #Добавляем пункт в хлебные крошки
  add_breadcrumb 'Застройщики', :developers_path

  # GET /developers
  # GET /developers.json
  def index
    @developers = Developer.all
  end

  # GET /developers/1
  # GET /developers/1.json
  def show
    @developer = Developer.find(params[:id])
    add_breadcrumb @developer.name, developer_path
  end

  # GET /developers/new
  def new
    @developer = Developer.new
    add_breadcrumb 'Создание', new_developer_path
  end

  # GET /developers/1/edit
  def edit
    add_breadcrumb "Редактирование #{@developer.name}", edit_developer_path
  end

  # POST /developers
  # POST /developers.json
  def create
    @developer = Developer.new(developer_params)
    @developer.created_by = session[:user_id]
    respond_to do |format|
      if @developer.save
        format.html { redirect_to @developer, notice: "Застройщик #{@developer.name} успешно добавлен" }
        format.json { render :show, status: :created, location: @developer }
      else
        format.html { render :new }
        format.json { render json: @developer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /developers/1
  # PATCH/PUT /developers/1.json
  def update
    respond_to do |format|
      if @developer.update(developer_params)
        format.html { redirect_to @developer, notice: "Застройщик #{@developer.name} успешно изменен." }
        format.json { render :show, status: :ok, location: @developer }
      else
        format.html { render :edit }
        format.json { render json: @developer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /developers/1
  # DELETE /developers/1.json
  def destroy
    @developer.destroy
    respond_to do |format|
      format.html { redirect_to developers_url, notice: "Застройщик #{@developer.name} успешно удален." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_developer
      @developer = Developer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def developer_params
      params.require(:developer).permit(:name, :description, :logo_url, :adress, :avatar)
    end
end
