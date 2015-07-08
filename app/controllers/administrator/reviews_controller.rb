class Administrator::ReviewsController < AdministratorController
  
   before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index
    @reviews = Review.all.paginate(:page => params[:page], :per_page => 10)
    render 'administrator/reviews/index'
  end

  def edit
    @review = Review.find(params[:id])
    render 'administrator/reviews/edit'
    end

    def new
    @review = Review.new
    
    end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.create(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to '/administrator/reviews', notice: 'Product category was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to '/administrator/reviews', notice: 'Product category was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to '/administrator/reviews', notice: 'Product category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def review_params
      params.require(:review).permit(:published)
  end

  def set_review
      @review = Review.find(params[:id])
    end

end