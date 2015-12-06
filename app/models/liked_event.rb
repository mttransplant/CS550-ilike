class LikedEvent < ActiveRecord::Base
  belongs_to :user
  

  def create
    liked_event = LikedEvent.new(liked_event_params)
    
    if liked_event.save
      flash[:success] = "You have liked this event"
    else
      flash[:danger] = "Your like could not be saved"
    end
  end
  
  private
    def liked_event_params
      params.require(:liked_event).permit(:event, :user)
    end

end
