class CreateLikedEvents < ActiveRecord::Migration
  def change
    create_table :liked_events do |t|
      t.string :event
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
