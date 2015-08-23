class ProjectsController < ApplicationController
  require 'fileutils'
  before_action :set_project, only: [:show]

  # GET /products/1
  # GET /products/1.json

  def show
    @question = Question.new(params[:question])
    @project_attacments = ProjectAttacment.where(project_id: @project.id)

    @basic_price = 2000
    @stavka = 0.06
    @time_years =  10
    @time_mounts = @time_years * 12

    @total_price = @basic_price + @basic_price * @time_years * @stavka
    @mount_pay = @total_price / @time_mounts
    @current_mount = 1
    @values = []

    while @total_price > 0
      @total_price =  @total_price - @mount_pay
      @values << @total_price
      @current_mount = @current_mount + 1
    end

  end

  def index
    @projects = Project.all.paginate(:page => params[:page], :per_page => 36)
    @i = 1
  end

  def search
    @project_categories = ProjectCategory.all
    @projects = Project.all
    @i = 1

    @sities_query_array = Array.new
    @rooms_query_array = Array.new
    @types_object_query_array = Array.new
    @distance_query_array = Array.new

    @rooms_list = ['1 + 0', '1 + 1', '2 + 1', '3 + 1', '4 + 1', '5 + 1']
    @types_object_list = ['flat', 'penthouse', 'flat_and_penthouse']
    @distance_list = [10, 100, 200, 400, 500, 800, 1000, 1500]

    @rooms_list.each do |room|
      if params[room]
        @rooms_query_array << room
      end
    end

    @project_categories.each do |category|
      if params["sity" + category.id.to_s]
        @sities_query_array << category.id
      end
    end

    @types_object_list.each do |type_object|
      if params[type_object]
        @types_object_query_array << type_object
      end
    end

    @distance_list.each do |distance|
      if params["distance" + distance.to_s]
        @distance_query_array << distance
      end
    end

    if @rooms_query_array.count > 0
      @projects = @projects.where(rooms: @rooms_query_array)
    end

    if @sities_query_array.count > 0
      @projects = @projects.where(project_category: @sities_query_array)
    end

    if @types_object_query_array.count > 0
      @projects = @projects.where(type_object: @types_object_query_array)
    end

    if @distance_query_array.count > 0
      @projects = @projects.where(to_sea: @distance_query_array)
    end

    if params[:type_deal]
      @projects = @projects.where(type_deal: params[:type_deal])
    end

    if params[:min_price].to_i > 0
      @projects = @projects.where( "final_price >= :min_price ", {min_price: params[:min_price]})
    end

    if params[:max_price].to_i >0
      @projects = @projects.where( "final_price <= :min_price ", {min_price: params[:max_price]})

    end

    @projects = @projects.paginate(:page => params[:page], :per_page => 36)

    if params[:id_project].size > 0
      @project = Project.find(params[:id_project].to_i)
      redirect_to @project
    else
      render 'projects/search'
    end

  end



    def credit_calc
      @basic_price = 2000
      @stavka = 0.06
      @time_years =  10
      @time_mounts = @time_years * 12

      @total_price = @basic_price + @basic_price * @time_years * @stavka
      @mount_pay = @total_price / @time_mounts
      @current_mount = 1
      @mount = 1
      @year = 1
      render file: 'projects/this_test', layout: false
    end


    



    private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project)
    end

  end
