module EventsHelper
  require 'open-uri'
  
  def event_image_generated
    event_url = "http://dummyimage.com/200x200/000/fff.png&text=#{@event_id}"
    image_tag(event_url, alt: "Event #{@event_id}", class: "event_image")
  end


  
end