class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]


  def show
   @question = Question.new(params[:question])
  end

  
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params[:post]
    end
end
