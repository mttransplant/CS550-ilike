module ViewEventHelper
  require 'open-uri'
  
  def event_image_generated
    event_url = "http://dummyimage.com/200x200/000/fff.png&text=Event+#{@event}"
    image_tag(event_url, alt: "Event #{@event}", class: "event_image")
  end

  def get_event_data
    obj = JSON.parse(open("http://api.eventful.com/json/events/get?app_key=R6H65m7KKDrV4TXS&id=#{@event_id}").read)
    @event_title = obj['title']
    @event_all_day = obj['all_day']
    @event_date = Date.parse(obj['start_time']).strftime('%b. %-d, %Y')
    @event_time = DateTime.parse(obj['start_time']).strftime('%l:%M %P')
    @event_venue = obj['venue_name']
    @event_address = obj['address']
    @event_city = obj['city']
    @event_state = obj['region_abbr']
    @event_zip = obj['postal_code']
    @event_latitude = obj['latitude']
    @event_longitude = obj['longitude']
    @event_description = obj['description']
    @event_cost = obj['price']
  end
  
end