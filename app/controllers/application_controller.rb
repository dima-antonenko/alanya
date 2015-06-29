class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action  :menu
  #rescue_from ActiveRecord::RecordNotFound, with: :errors_404
  #rescue_from ActiveRecord::NoMethodError, with: :errors_404
  #rescue_from ActionController::RoutingError, with: :errors_404
  


  def after_sign_in_path_for(resource)
    '/administrator/dashboard'
  end

  def after_sign_out_path_for(resource_or_scope)
     request.referrer
  end



  def menu
   @main_menu = Menu.where(descriptor: "main_menu").first
   @footer_menu1 = Menu.where(descriptor:"foot_menu_1").first
   @footer_menu2 = Menu.where(descriptor:"foot_menu_2").first
   @footer_menu3 = Menu.where(descriptor:"foot_menu_3").first
   @footer_menu4 = Menu.where(descriptor:"foot_menu_4").first
   @footer_menu5 = Menu.where(descriptor:"foot_menu_5").first
   @footer_menu6 = Menu.where(descriptor:"foot_menu_6").first

   @project_categories = ProjectCategory.all
   @question = Question.new(params[:question])
    
  end



end