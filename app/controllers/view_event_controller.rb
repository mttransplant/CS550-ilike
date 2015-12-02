class ViewEventController < ApplicationController

  def index
  end
  
  def show
    @event_id = params[:id] #this is temporary until the data model is set
    get_event_data
    if @event_found
      clean_event_data
    else
      redirect_to view_event_path unless @event_found
    end
  end

  def get_event_data
    obj = JSON.parse(open("http://api.eventful.com/json/events/get?app_key=R6H65m7KKDrV4TXS&id=#{@event_id}").read)
    if obj['status'] == nil
      @event_found = TRUE
      @event_title = obj['title']
      @event_all_day = obj['all_day']
      @event_date = Date.parse(obj['start_time']).strftime('%b. %-d, %Y')
      @event_time = DateTime.parse(obj['start_time']).strftime('%l:%M %P')
      @event_venue = obj['venue_name']
      @event_venue_id = obj['venue_id']
      @event_address = obj['address']
      @event_city = obj['city']
      @event_state = obj['region_abbr']
      @event_zip = obj['postal_code']
      @event_latitude = obj['latitude']
      @event_longitude = obj['longitude']
      @event_description = obj['description']
      @event_cost = obj['price']    
    else
      @event_found = FALSE
    end
  end
  
  def clean_event_data
    @event_time = "All Day Event" if @event_all_day > "0"
    @event_address = "" if @event_address == nil
    @event_city = "" if @event_city == nil
    @event_state = "" if @event_state == nil
    @event_zip = "" if @event_zip == nil
    @event_description = "There is no description for this event" if @event_description == nil
  end
end
