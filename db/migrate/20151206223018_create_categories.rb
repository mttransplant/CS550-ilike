class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category_id, null: false
      t.string :name

      t.timestamps null: false
    end
  end
end