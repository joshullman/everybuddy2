class EventController < ActionController::Base
	before_action :authenticate_user!
	before_action :find_event, only: [:show, :edit, :update, :destroy]

	def index
    @events = Event.all
  end
 
  def show
  end
 
  def new
    @event = Event.new
  end
 
  def edit
  end
 
  def create
    @event = Event.new(event_params)
 
    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end
 
  def update
 
    if @event.update(event_params)
      redirect_to @event
    else
      render 'edit'
    end
  end
 
  def destroy
    @event.destroy
 
    redirect_to events_path
  end
 
  private

  def find_event
    @event = Event.find(session[:event_id])
  end

  def event_params
    params.require(:event).permit(
    	:poster_id, 
    	:receiver_id, 
    	:name, 
    	:description, 
    	:time, 
    	:location, 
    	:is_private,
    	:accepted
    	)
  end

end
