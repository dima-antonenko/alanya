class DynamicPagesController < ApplicationController
  before_action :set_dynamic_page, only: [:show, :edit, :update, :destroy]

  # GET /dynamic_pages
  # GET /dynamic_pages.json
  def index
    @dynamic_pages = DynamicPage.all
  end

  # GET /dynamic_pages/1
  # GET /dynamic_pages/1.json
  def show
  end

  # GET /dynamic_pages/new
  def new
    @dynamic_page = DynamicPage.new
  end

  # GET /dynamic_pages/1/edit
  def edit
  end

  # POST /dynamic_pages
  # POST /dynamic_pages.json
  def create
    @dynamic_page = DynamicPage.new(dynamic_page_params)

    respond_to do |format|
      if @dynamic_page.save
        format.html { redirect_to @dynamic_page, notice: 'Dynamic page was successfully created.' }
        format.json { render :show, status: :created, location: @dynamic_page }
      else
        format.html { render :new }
        format.json { render json: @dynamic_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dynamic_pages/1
  # PATCH/PUT /dynamic_pages/1.json
  def update
    respond_to do |format|
      if @dynamic_page.update(dynamic_page_params)
        format.html { redirect_to @dynamic_page, notice: 'Dynamic page was successfully updated.' }
        format.json { render :show, status: :ok, location: @dynamic_page }
      else
        format.html { render :edit }
        format.json { render json: @dynamic_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dynamic_pages/1
  # DELETE /dynamic_pages/1.json
  def destroy
    @dynamic_page.destroy
    respond_to do |format|
      format.html { redirect_to dynamic_pages_url, notice: 'Dynamic page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dynamic_page
      @dynamic_page = DynamicPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dynamic_page_params
      params[:dynamic_page]
    end
end
