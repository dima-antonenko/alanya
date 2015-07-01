class DynamicProjectPagesController < ApplicationController
  before_action :set_dynamic_project_page, only: [:show, :edit, :update, :destroy]

  # GET /dynamic_project_pages
  # GET /dynamic_project_pages.json
  def index
    @dynamic_project_pages = DynamicProjectPage.all
  end

  # GET /dynamic_project_pages/1
  # GET /dynamic_project_pages/1.json
  def show
    @projects = Project.all
    if @dynamic_project_page.query
       @projects = @projects.where(@dynamic_project_page.query)
    end

    if @dynamic_project_page.project_category_id
       @projects = @projects.where(project_category_id: @dynamic_project_page.project_category_id)
    end 

    @projects = @projects.paginate(:page => params[:page], :per_page => 36)
    @i = 1
    render '/projects/dynamic'
  end

  # GET /dynamic_project_pages/new
  def new
    @dynamic_project_page = DynamicProjectPage.new
  end

  # GET /dynamic_project_pages/1/edit
  def edit
  end

  # POST /dynamic_project_pages
  # POST /dynamic_project_pages.json
  def create
    @dynamic_project_page = DynamicProjectPage.new(dynamic_project_page_params)

    respond_to do |format|
      if @dynamic_project_page.save
        format.html { redirect_to @dynamic_project_page, notice: 'Dynamic project page was successfully created.' }
        format.json { render :show, status: :created, location: @dynamic_project_page }
      else
        format.html { render :new }
        format.json { render json: @dynamic_project_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dynamic_project_pages/1
  # PATCH/PUT /dynamic_project_pages/1.json
  def update
    respond_to do |format|
      if @dynamic_project_page.update(dynamic_project_page_params)
        format.html { redirect_to @dynamic_project_page, notice: 'Dynamic project page was successfully updated.' }
        format.json { render :show, status: :ok, location: @dynamic_project_page }
      else
        format.html { render :edit }
        format.json { render json: @dynamic_project_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dynamic_project_pages/1
  # DELETE /dynamic_project_pages/1.json
  def destroy
    @dynamic_project_page.destroy
    respond_to do |format|
      format.html { redirect_to dynamic_project_pages_url, notice: 'Dynamic project page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dynamic_project_page
      @dynamic_project_page = DynamicProjectPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dynamic_project_page_params
      params[:dynamic_project_page]
    end
end
