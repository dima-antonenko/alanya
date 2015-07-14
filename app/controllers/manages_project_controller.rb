class ManagersProjectController < ApplicationController
  before_action :set_managers_project, only: [:show, :edit, :update, :destroy]

  # GET /managers_projects
  # GET /managers_projects.json
  def index
    @managers_projects = ManagersProject.all
  end

  # GET /managers_projects/1
  # GET /managers_projects/1.json
  def show
  end

  # GET /managers_projects/new
  def new
    @managers_project = ManagersProject.new
  end

  # GET /managers_projects/1/edit
  def edit
  end

  # POST /managers_projects
  # POST /managers_projects.json
  def create
    @managers_project = ManagersProject.new(managers_project_params)

    respond_to do |format|
      if @managers_project.save
        format.html { redirect_to @managers_project, notice: 'Project attacment was successfully created.' }
        format.json { render :show, status: :created, location: @managers_project }
      else
        format.html { render :new }
        format.json { render json: @managers_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /managers_projects/1
  # PATCH/PUT /managers_projects/1.json
  def update
    respond_to do |format|
      if @managers_project.update(managers_project_params)
        format.html { redirect_to @managers_project, notice: 'Project attacment was successfully updated.' }
        format.json { render :show, status: :ok, location: @managers_project }
      else
        format.html { render :edit }
        format.json { render json: @managers_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /managers_projects/1
  # DELETE /managers_projects/1.json
  def destroy
    @managers_project.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Информация обновлена' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_managers_project
      @managers_project = ManagersProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def managers_project_params
      params[:managers_project]
    end
end
