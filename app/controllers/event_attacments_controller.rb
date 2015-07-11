class EventAttacmentsController < ApplicationController
  before_action :set_event_attacment, only: [:show, :edit, :update, :destroy]

  # GET /event_attacments
  # GET /event_attacments.json
  def index
    @event_attacments = EventAttacment.all
  end

  # GET /event_attacments/1
  # GET /event_attacments/1.json
  def show
  end

  # GET /event_attacments/new
  def new
    @event_attacment = EventAttacment.new
  end

  # GET /event_attacments/1/edit
  def edit
  end

  # POST /event_attacments
  # POST /event_attacments.json
  def create
    @event_attacment = EventAttacment.new(event_attacment_params)

    respond_to do |format|
      if @event_attacment.save
        format.html { redirect_to @event_attacment, notice: 'Project attacment was successfully created.' }
        format.json { render :show, status: :created, location: @event_attacment }
      else
        format.html { render :new }
        format.json { render json: @event_attacment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_attacments/1
  # PATCH/PUT /event_attacments/1.json
  def update
    respond_to do |format|
      if @event_attacment.update(event_attacment_params)
        format.html { redirect_to @event_attacment, notice: 'Project attacment was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_attacment }
      else
        format.html { render :edit }
        format.json { render json: @event_attacment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_attacments/1
  # DELETE /event_attacments/1.json
  def destroy
    @event_attacment.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Инфформация обновлена' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_attacment
      @event_attacment = EventAttacment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_attacment_params
      params[:event_attacment]
    end
end
