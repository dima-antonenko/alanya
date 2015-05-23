class Administrator::ProjectCategoriesController < AdministratorController
  
   before_action :set_project_category, only: [:show, :edit, :update, :destroy]

  def index
    @project_categories = ProjectCategory.all
  end

  def edit
    @project_category = ProjectCategory.find(params[:id])
    render 'administrator/project_categories/edit'
  end

    def new
      @project_category = ProjectCategory.new
    end

  # POST /product_categories
  # POST /product_categories.json
  def create
    @project_category = ProjectCategory.new(project_category_params)

    respond_to do |format|
      if @project_category.save
        format.html { redirect_to '/administrator/project_categories', notice: 'Product category was successfully created.' }
        format.json { render :index, status: :created, location: @project_category }
      else
        format.html { render :new }
        format.json { render json: @project_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_categories/1
  # PATCH/PUT /product_categories/1.json
  def update
    respond_to do |format|
      if @project_category.update(project_category_params)
        format.html { redirect_to '/administrator/project_categories', notice: 'Product category was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_category }
      else
        format.html { render :edit }
        format.json { render json: @product_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_categories/1
  # DELETE /product_categories/1.json
  def destroy
    @project_category.destroy
    respond_to do |format|
      format.html { redirect_to '/administrator/project_categories', notice: 'Product category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def project_category_params
      params.require(:project_category).permit(:title, :description,
        :meta_title, :meta_description, :meta_keywords,  :avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at,
        :avatar)
  end

  def set_project_category
      @project_category = ProjectCategory.find(params[:id])
  end

end