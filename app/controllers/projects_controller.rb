class ProjectsController < ApplicationController

  before_action :set_project, only: [:edit, :update, :destroy, :delete, :show, :credit_calc, :project_info_mail]

  # GET /products/1
  # GET /products/1.json



  def show
     @project = Project.friendly.find(params[:id])
    @question = Question.new(params[:question])
    @project_attacments = ProjectAttacment.where(project_id: @project.id)

    default_stavka = 10
    default_time_years = 10
    default_first_pay = 1000


    @project.stavka_pay = default_stavka
    @project.time_pay = default_time_years
    @project.first_pay = default_first_pay

    @ostatok = @project.final_price - @project.first_pay
    @pereplata = (@ostatok / 100) * @project.stavka_pay
    @total_pay = @ostatok + @pereplata
    @mounts = @project.time_pay * 12
    @mounts_pay = @total_pay / @mounts

    @current_mount = 1
    @current_year = 1
         
  end

   

     def index
       @projects = Project.all.paginate(:page => params[:page], :per_page => 36)
       @i = 1
     end

      def search

       @project_categories = ProjectCategory.all
       @projects = Project.all
       @all_project = Project.all
       @i = 1

       @sities_query_array = Array.new
       @rooms_query_array = Array.new
       @types_object_query_array = Array.new
       @distance_query_array = Array.new
       @villa_and_penthouse = Array.new

       @rooms_list = ['1 + 0', '1 + 1', '2 + 1', '3 + 1', '4 + 1', '5 + 1']
       @types_object_list = ['flat', 'penthouse', 'flat_and_penthouse']
       @villa_and_penthouse = ['flat_and_penthouse', 'penthouse']
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

       if @types_object_query_array.count > 0
         @projects = @projects.where(type_object: @types_object_query_array)
       elsif params[:villa_and_penthouse] 
         @projects = @projects.where(type_object: @villa_and_penthouse)
       end

       if @rooms_query_array.count > 0
         @projects = @projects.where(rooms: @rooms_query_array)
       end

       if @sities_query_array.count > 0
         @projects = @projects.where(project_category: @sities_query_array)
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
         if  Project.where(sku: params[:id_project]).count > 0
          @project = Project.where(sku: params[:id_project]).first
         redirect_to @project
       end
       else
         render 'projects/search'
       end

      end

     def update

      default_stavka = 10
    default_time_years = 10
    default_first_pay = 1000

       if params[:project][:stavka_pay] == nil
      @project.stavka_pay = default_stavka
    else
      @project.stavka_pay = params[:project][:stavka_pay].to_i
    end 

    if params[:project][:time_pay] == nil
      @project.time_pay = default_time_years
    else
      @project.time_pay = params[:project][:time_pay].to_i
    end

    if params[:project][:first_pay] == nil
      @project.first_pay = default_first_pay
    else
      @project.first_pay = params[:project][:first_pay].to_i
    end

       @ostatok = @project.final_price - @project.first_pay
       @pereplata = (@ostatok / 100) * @project.stavka_pay
      @total_pay = @ostatok + @pereplata
       @mounts = @project.time_pay * 12
        @mounts_pay = @total_pay / @mounts

        @current_mount = 1
        @current_year = 1


       respond_to do |format|

         format.html { render 'show' }

       end



     end

     def project_info_mail

       ProjectMailer.to_user_mail(@project, params[:project][:email_to_user_mail]).deliver_later
       redirect_to :back, notice: "Информация отправлена"

     end

     private
     # Use callbacks to share common setup or constraints between actions.
     def set_project
       @project = Project.friendly.find(params[:id])
       @project_attacments = ProjectAttacment.where(project_id: @project.id)
       @question = Question.new(params[:question])
     end

     # Never trust parameters from the scary internet, only allow the white list through.
     def project_params
       params.require(:project).permit(:first_pay, :time_pay, :stavka_pay)
     end
 end
