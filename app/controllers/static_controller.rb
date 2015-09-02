class StaticController < ApplicationController
  def home
    @slider = Slider.where(descriptor: "main").first
    @projects = Project.where(elect: true).limit(11)
    @page = StaticPage.where(descriptor: "home").first
    @block2 = @page.site_variables.where(descriptor: "houses_in_turc").first
    @helpful_news = Post.where(post_category_id: 1, to_main_page: true)
    @helpful_posts = Post.where(post_category_id: 2, to_main_page: true)
    @events = Event.all.order(:date).limit(4)
    @i = 1
    @spoiler_content = @page.site_variables.where(descriptor: "spoiler_content").first
    render 'home'
  end

  def company_info
    @question = Question.new(params[:question])
    @page = StaticPage.where(descriptor: "company_info").first
    @youtube_link = @page.site_variables.where(descriptor: "youtube_link").first
    @managers = Manager.where(company_info: true)
    render '/static/company_info/show'
  end

  def partners
    @question = Question.new(params[:question])
    @managers = Manager.where(elect: true)
    render '/static/partners/show'
  end

  def free_tour
    @question = Question.new(params[:question])
    @page = StaticPage.where(descriptor: "free_tour").first
    render '/static/free_tour/show'
  end

  def contacts
    @question = Question.new(params[:question])
    @page = StaticPage.where(descriptor: "page_contacts").first
    render '/static/contacts/show'
  end

  def our_projects
    @projects = Project.where(to_our_projects_page: true).order(:our_projects_page_order).paginate(:page => params[:page], :per_page => 36)
    @page = StaticPage.where(descriptor: 'our_projects').first
    render '/static/our_projects'
  end

end
