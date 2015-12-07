module EventsHelper
  require 'open-uri'
  
  def event_image_generated

    event_url = "http://dummyimage.com/200x200/000/fff.png&text=#{params[:id]}"

    image_tag(event_url, size: "200x200", alt: "Event #{params[:id]}", class: "event_image")
  end


  
end