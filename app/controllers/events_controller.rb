require 'eventful/api'
require 'json'

class EventsController < ApplicationController

  before_action :load_eventful

  def index
  end
  
  def show
    
    @event = @eventful.call 'events/get', :id => params[:id]
    if @event == "Not found"
      redirect_to events_path
    else
      clean_event_data
    end
  end
  
  def load_eventful
    @eventful = Eventful::API.new '36d8PjJXGWNdH592'
  end
  
  def clean_event_data
    if @event['all_day'] > 0 then
      @event_time = "All Day Event"
    else
      @event_time = DateTime.parse(@event['start_time'].to_s).strftime('%l:%M %P')
    end
    @event_date = Date.parse(@event['start_time'].to_s).strftime('%b. %-d, %Y')
    @event_description = @event['description'] == nil ? "There is no description for this event" : @event['description']
  end

end
