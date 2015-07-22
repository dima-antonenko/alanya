class StaticPagesController < ApplicationController
  before_action :set_static_page, only: [:show]

  
  def show
    @question = Question.new(params[:question])
  end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_static_page
      @page = StaticPage.find(params[:id])
    end

   
end
