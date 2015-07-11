class Administrator::EventsController < AdministratorController

  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all.paginate(:page => params[:page], :per_page => 10)
  end 


  def edit
    @event = Event.find(params[:id])
    @event_attachments = EventAttacment.where(event_id: @event.id)
  end

  def update
    @event = Event.find(params[:id])
    @event.assign_attributes(event_params)
   
    respond_to do |format|
      if @event.save
        if params[:images] != nil
          params[:images].each do |image|
            EventAttacment.create(event_id: @event.id, image: image)
          end
        end

        format.html { redirect_to :back , notice: 'Информация обновлена' }
        format.json { render :index, status: :ok, location: @event }
      else
        format.html { render :update, notice: 'Произошла ошибка' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to '/administrator/events', notice: 'Информация удалена' }
      format.json { head :no_content }
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :avatar, :lead, :date)
  end

  def set_event
    @Event = Event.find(params[:id])
  end

end
