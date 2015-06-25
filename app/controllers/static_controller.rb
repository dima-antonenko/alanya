class StaticController < ApplicationController
	def home

		@projects = Project.where(elect: true).limit(7)
		@page = StaticPage.where(descriptor: "home").first
		@block2 = @page.site_variables.where(descriptor: "houses_in_turc").first
		@helpful_news = Post.where(post_category_id: 1, to_main_page: true)
		@helpful_posts = Post.where(post_category_id: 2, to_main_page: true)
		@i = 1
		render 'home'
	end

	def delivery_and_pay
		@text_delivery_and_pay = SiteVariable.where(place: "page_delivery_pay")
		render 'delivery_and_pay'
	end

	def contacts
		@text_contacts = SiteVariable.where(place: "page_contact")
		render 'contacts'
	end

	def company_info
		render '/static/company_info/show'
	end

	def peoples
		render '/static/peoples/show'
	end

	def partners
		render '/static/partners/show'
	end

	def reviews
		render '/static/test/reviews'
	end

	def free_tour
		render '/static/free_tour/show'
	end

	def exhibition
		render '/static/exhibition/show'
	end

	def sities
		render '/static/test/sities'
	end

	def sity
		render '/static/test/sity'
	end
end
