require 'eventful/api'
require 'json'

class VenuesController < ApplicationController
  
  before_action :load_eventful
  
  def index
    @location = Location.find(1)
    @venues = @eventful.call 'venues/search', :location => @location.name, :page_size => 50
  end
  
  def show
    @venue = @eventful.call 'venues/get', :id => params[:id]
  end
  
  # Before filters
    
    # Loads the Eventful API
    def load_eventful
      @eventful = Eventful::API.new '36d8PjJXGWNdH592'
    end
  
end
