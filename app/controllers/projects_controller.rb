class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :search
  # GET /products/1
  # GET /products/1.json

  def show
    
    @project_attacments = ProjectAttacment.where(project_id: @project.id)
  end

  def index
    @projects = Project.all
    @i = 1
  end

  def search
    @rooms = ['1 + 0', '1 + 1', '2 + 1', '3 + 1', '4 + 1', '5 + 1']
    @sities = ['Аланья', 'Анталья', 'Газипаша', 'Бордум', 'Белек', 'Авсаллар', 'Кемер', 'Кестель',
     'Махмутлар', 'Оба', 'Канаклы', 'Каргыджак', 'Каш', 'Сиде', 'Тосмур']
    render 'projects/search'
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_project
    @project = Project.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def project_params
    params.require(:project).permit(:avatar)
  end

end
