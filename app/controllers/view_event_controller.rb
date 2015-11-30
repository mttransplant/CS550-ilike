class ViewEventController < ApplicationController
  
  def index
  end
  
  def show
    #@event = Event.find(params[:id])
    @event = params[:id] #this is temporary until the data model is set
  end

end
