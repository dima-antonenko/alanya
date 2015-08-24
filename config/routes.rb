Rails.application.routes.draw do


  resources :reviews
  resources :events  do
    resources :event_attacments
  end
  resources :managers
  resources :dynamic_pages
  resources :dynamic_project_pages
  resources :project_attacments
  resources :project_category_attacments
  resources :static_pages
  mount Ckeditor::Engine => '/ckeditor'
  resources :post_categories, only: [:show] do
    resources :posts, only: [:show]
  end

  resources :project_categories 
  resources :projects
 
  resources :questions, only: [:create]
  resources :projects  do
    resources :managers
  end
  resources :managers_projects
  resources :projects  do
    resources :project_application_mails
  end




  root 'static#home'

  get '/administrator/dashboard', as: 'user_root'

  get 'persons/profile'


 devise_for :users, controllers: { sessions: "users/sessions" }
  
  namespace :administrator do
    resources :projects
    resources :questions
    resources :managers
    resources :project_categories
    resources :post_categories
    resources :posts
    resources :site_variables
    resources :dynamic_project_pages
    resources :static_pages
    resources :events
    resources :managers_projects
    resources :project_application_mails


    resources :menus
    resources :menu_items

    resources :sliders
    resources :slides

    resources :reviews
    resources :banners

   
  end

 
  get '/administrator', to: 'administrator#dashboard'
  get '/delivery_and_pay', to: 'static#delivery_and_pay'
  get '/contacts', to: 'static#contacts'

  get '/company_info', to: 'static#company_info'
  get '/peoples', to: 'static#peoples'
  get '/partners', to: 'static#partners'
  get '/reviews', to: 'static#reviews'
  get '/free_tour', to: 'static#free_tour'

  get '/import_projects', to: 'administrator#import_projects'
  get '/import_articles', to: 'administrator#import_articles'


  #get '/search', to: 'project#search'
  match "/search" => "projects#search", via: [ :get, :post, :patch, :delete ]
  

  get '/administrator/blocks_in_header', to: 'administrator/site_variables#blocks_in_header'
  get '/administrator/blocks_in_footer', to: 'administrator/site_variables#blocks_in_footer'
  get '/administrator/page_contact', to: 'administrator/site_variables#page_contact'
  get '/administrator/page_company_info', to: 'administrator/site_variables#page_company_info'
  get '/administrator/page_delivery_pay', to: 'administrator/site_variables#page_delivery_pay'

  get '/administrator/page_home', to: 'administrator/site_variables#page_home'

  



match "/404" => "application#errors_404", via: [ :get, :post, :patch, :delete ]




end