class EventsController < ApplicationController

  def index
    @events = Event.paginate(page: params[:page])
  end

  def new
  	@event = Event.new
  end

  def create
  	@event = Event.new(event_params)
  	if @event.codeword=="Webmaster"
	    if @event.save
	      flash[:success] = "You've just created an event!"
    	  redirect_to @event
    	else
    	  flash[:failure] = "Error Creating Event"
    	  render 'new'
    	end
    else 
    	flash[:failure] = "You must have the codeword to create the event"
    	render 'new'
    end
  end


  def show
  	@event = Event.find(params[:id])
  end

  def edit
  	@event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      flash[:success] = "Event updated"
      redirect_to @event
    else
      render 'edit'
    end
  end
  

  def destroy
    Event.find(params[:id]).destroy
    flash[:success] = "Event deleted."
    redirect_to events_url
  end

  def following
    @title = "Following"
    @event = event.find(params[:id])
    @events = @event.followed_events.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @event = event.find(params[:id])
    @events = @event.followers.paginate(page: params[:page])
    render 'show_follow'
  end

  private

    def event_params
     params.require(:event).permit(:name, :datetime, :location, :contact, :description, :codeword, :avatar)
    end


end
