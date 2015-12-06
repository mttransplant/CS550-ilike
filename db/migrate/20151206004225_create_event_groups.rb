class CreateEventGroups < ActiveRecord::Migration
  def change
    create_table :eventgroups do |t|
      t.string :category
      t.boolean :favorite
      t.integer :user_id
    end
  end
end
