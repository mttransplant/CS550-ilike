class CreateUserPreferences < ActiveRecord::Migration
  def change
    create_table :user_preferences do |t|
      t.integer :user_id
      t.string :category_id
      t.boolean :likes

      t.timestamps null: false
    end
  end
end
