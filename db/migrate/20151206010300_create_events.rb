class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :event_id
      t.string :url
      t.string :title
      t.string :description
      t.string :venuename
      t.string :venue_id
      t.string :venue_type
      t.string :venue_add
      t.string :city
      t.boolean :favorite
      t.integer :rating
      
    end
  end
end
