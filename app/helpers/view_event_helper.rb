module ViewEventHelper
  
  def event_image_generated
    event_url = "http://dummyimage.com/200x200/000/fff.png&text=Event+#{@event}"
    image_tag(event_url, alt: "Event #{@event}", class: "event_image")
  end
  
end
