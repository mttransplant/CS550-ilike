class Venue
  include ActiveModel::Model

  attr_accessor :id, :url, :name, :description, :city, :region, :postal_code, :latitude, :longitude, :event_count
  # validates_presence_of :id
end