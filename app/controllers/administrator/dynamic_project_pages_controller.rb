class Administrator::DynamicProjectPagesController < AdministratorController
  
   before_action :set_dynamic_project_page, only: [:show, :edit, :update, :destroy]

  def index
    @dynamic_project_pages = DynamicProjectPage.all.paginate(:page => params[:page], :per_page => 10)
  end

  def edit
    @dynamic_project_page = DynamicProjectPage.find(params[:id])
    render 'administrator/dynamic_project_pages/edit'
    end

    def new
    @dynamic_project_page = DynamicProjectPage.new
    
    end

  # POST /dynamic_project_pages
  # POST /dynamic_project_pages.json
  def create
    @dynamic_project_page = DynamicProjectPage.create(dynamic_project_page_params)

    respond_to do |format|
      if @dynamic_project_page.save
        format.html { redirect_to '/administrator/dynamic_project_pages', notice: 'Информация обновлена' }
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
        format.html { redirect_to '/administrator/dynamic_project_pages', notice: 'Информация обновлена' }
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
      format.html { redirect_to '/administrator/dynamic_project_pages', notice: 'Информация обновлена' }
      format.json { head :no_content }
    end
  end

  private

  def dynamic_project_page_params
      params.require(:dynamic_project_page).permit(:title, :description, :query, :project_category_id, :meta_title, :meta_description, :meta_keywords)
  end

  def set_dynamic_project_page
      @dynamic_project_page = DynamicProjectPage.find(params[:id])
    end

end