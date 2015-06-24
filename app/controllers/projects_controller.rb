class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /products/1
  # GET /products/1.json

  def show

    @project_attacments = ProjectAttacment.where(project_id: @project.id)
  end

  def index
    @projects = Project.all.paginate(:page => params[:page], :per_page => 36)
    @i = 1
  end

  def search
    @project_categories = ProjectCategory.all
    @projects = Project.all

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

   
    render 'projects/search'

  end

  def sample_data
    @projects = Project.all
    @project_categories = ProjectCategory.all
    @prices = [1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000]
    @rooms_list = ['1 + 0', '1 + 1', '2 + 1', '3 + 1', '4 + 1', '5 + 1']
    @types_object_list = ['flat', 'penthouse', 'flat_and_penthouse']
    @distance_list = [10, 100, 200, 400, 500, 800, 1000, 1500]
    @type_deals_list = ['sale', 'rent']

    @i = 0
 
    @prices.each do |price|
      @project_categories.each do |project_category|
        @rooms_list.each do |rooms|
          @types_object_list.each do |type_object|
            @distance_list.each do |distance|
              @type_deals_list.each do |type_deal|
                Project.create(name: "test #{@i}", project_category_id: project_category.id, rooms: rooms, type_object: type_object, to_sea: distance, 
                  type_deal: type_deal)
                @i = @i + 1
              end  
            end  
          end 
        end  
      end  
    end  
    render 'projects/search'
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_project
    @project = Project.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def project_params
    params.require(:project)
  end

end
