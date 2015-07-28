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

   @head_variables = SiteVariable.where(static_page_id: 0)  

   @main_menu = Menu.where(descriptor: "main_menu").first
   @footer_menu1 = Menu.where(descriptor:"foot_menu_1").first
   @footer_menu2 = Menu.where(descriptor:"foot_menu_2").first
   @footer_menu3 = Menu.where(descriptor:"foot_menu_3").first
   @footer_menu4 = Menu.where(descriptor:"foot_menu_4").first
   @footer_menu5 = Menu.where(descriptor:"foot_menu_5").first
   @footer_menu6 = Menu.where(descriptor:"foot_menu_6").first


   @sidebar_apartments = Menu.where(descriptor:"apartaments_in_turk_sidebar").first.menu_items.order(:position)
   @sidebar_helpful_info = Menu.where(descriptor:"help_info_sidebar").first.menu_items.order(:position)
   @sidebar_services = Menu.where(descriptor:"our_services_sidebar").first.menu_items.order(:position)
   @sidebar_prices = Menu.where(descriptor:"our_prices_sidebar").first.menu_items.order(:position)
   @sidebar_contacts = Menu.where(descriptor:"our_contacts_sidebar").first.menu_items.order(:position)

   @project_categories = ProjectCategory.all.order(:position)
   
    
   @banner1 = Banner.where(descriptor:"free_tour_banner").first
   @banner2 = Banner.where(descriptor:"turk_info_banner").first
  end



end