class ViewEventController < ApplicationController

  def index
  end
  
  def show
    #@event = Event.find(params[:id])
    @event_id = params[:id] #this is temporary until the data model is set
    #get_event_data @event_id
  end

end
