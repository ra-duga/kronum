class AgentsController < ApplicationController
  before_action :set_agent, only: [:show, :edit, :update, :destroy]
  before_action :set_title
  add_breadcrumb 'Агенты', :agents_path


  # GET /agents
  # GET /agents.json
  def index
    @agents = Agent.all
  end

  # GET /agents/1
  # GET /agents/1.json
  def show
    add_breadcrumb @agent.name, agent_path
    @title = @agent.name
  end

  # GET /agents/new
  def new
    @agent = Agent.new
    @title = "Создание агента"
  end

  # GET /agents/1/edit
  def edit
    add_breadcrumb "Редактирование #{@agent.name}", edit_agent_path
    @title = @agent.name
  end

  # POST /agents
  # POST /agents.json
  def create
    @agent = Agent.new(agent_params)
    respond_to do |format|
      if @agent.save
        format.html { redirect_to @agent, notice: 'Agent was successfully created.' }
        format.json { render :show, status: :created, location: @agent }
      else
        format.html { render :new }
        format.json { render json: @agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agents/1
  # PATCH/PUT /agents/1.json
  def update
    respond_to do |format|
      if @agent.update(agent_params)
        format.html { redirect_to @agent, notice: 'Agent was successfully updated.' }
        format.json { render :show, status: :ok, location: @agent }
      else
        format.html { render :edit }
        format.json { render json: @agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agents/1
  # DELETE /agents/1.json
  def destroy
    @agent.destroy
    respond_to do |format|
      format.html { redirect_to agents_url, notice: 'Agent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def set_title
    @title = "Агенты"
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agent
      @agent = Agent.find(params[:id])
    end

    def agent_params
      params.require(:agent).permit(:name, :low_name, :adress, :phone, :comment)
    end
  end
