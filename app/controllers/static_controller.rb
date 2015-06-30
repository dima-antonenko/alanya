class StaticController < ApplicationController
	def home

		@projects = Project.where(elect: true).limit(7)
		@page = StaticPage.where(descriptor: "home").first
		@block2 = @page.site_variables.where(descriptor: "houses_in_turc").first
		@helpful_news = Post.where(post_category_id: 1, to_main_page: true)
		@helpful_posts = Post.where(post_category_id: 2, to_main_page: true)
		@events = Event.all.order(:date).limit(4)
		@i = 1
		render 'home'
	end

	

	def company_info
		@page = StaticPage.where(descriptor: "company_info").first
		@youtube_link = @page.site_variables.where(descriptor: "youtube_link").first
		@managers = Manager.where(company_info: true)
		render '/static/company_info/show'
	end

	def partners
		@managers = Manager.where(elect: true)
		render '/static/partners/show'
	end

	def free_tour
		@page = StaticPage.where(descriptor: "free_tour").first
		render '/static/free_tour/show'
	end

	def exhibition
		render '/static/exhibition/show'
	end

end
