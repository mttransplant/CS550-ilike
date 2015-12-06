class CreateCategories < ActiveRecord::Migration
  def change
    # create_table :categories, id: false do |t|
    #   t.string :category_id, null: false
    #   t.string :name

    #   t.timestamps null: false
    # end
    
    execute %Q{ CREATE TABLE categories (id TEXT PRIMARY KEY, name TEXT); }
  end
end