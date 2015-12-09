module EventsHelper
  require 'open-uri'
  
  def event_image_generated

    #event_url = "http://dummyimage.com/200x200/000/fff.png&text=#{params[:id]}"
    default_image_url = "http://lakecitycc.org/wp-content/uploads/2015/01/upcomingevents.jpg"
    image_url = default_image_url
    event_images = @event['images']['image']
    if event_images != nil
      large_images = event_images.select { |i| i['large'] != nil }
      medium_images = event_images.select { |i| i['medium'] != nil }
      small_images = event_images.select { |i| i['small'] != nil }
    end
    
    if large_images.count > 0 && image_url == default_image_url then
      if large_images.count == 1 then
        image_url = large_images['large']['url']
      else
        image_url = large_images.first['large']['url']
      end
    end
    
    if medium_images.count > 0 && image_url == default_image_url then
      if medium_images.count == 1 then
        image_url = medium_images['medium']['url']
      else
        image_url = medium_images.first['medium']['url']
      end
    end
    
    
    if small_images.count > 0 && image_url == default_image_url then
      if small_images.count == 1 then
        image_url = small_images['small']['url']
      else
        image_url = small_images.first['small']['url']
      end
    end
  
    image_tag(image_url, size: "200x200", alt: "Event #{params[:id]}", class: "event_image")
  end

  
end
