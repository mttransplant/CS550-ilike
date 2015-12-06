module EventsHelper
  require 'open-uri'
  
  def event_image_generated
    event_url = "http://dummyimage.com/200x200/000/fff.png&text=#{@event_id}"
    image_tag(event_url, alt: "Event #{@event_id}", class: "event_image")
  end

  def event_is_liked(user, event_id)
    likes = LikedEvent.where(user: user.id, event: event_id).count
    if likes >= 1 then
      return TRUE 
    else
      return FALSE
    end
  end

end