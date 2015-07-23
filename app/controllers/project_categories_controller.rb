class ProjectCategoriesController < ApplicationController
  before_action :set_project_category, only: [:show]

  def show
     @question = Question.new(params[:question])
     @project_category_attachments = ProjectCategoryAttacment.where(project_category_id: @project_category.id)
  end

  def index
    @project_categories = ProjectCategory.all
    @page =  StaticPage.where(descriptor: "project_categories").first
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_category
      @project_category = ProjectCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_category_params
      params.require(:project_category).permit(:avatar)
    end
end
