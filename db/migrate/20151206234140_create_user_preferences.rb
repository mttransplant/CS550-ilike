class CreateUserPreferences < ActiveRecord::Migration
  def change
    create_table :user_preferences do |t|
      t.belongs_to :user, index: true
      t.belongs_to :category, index: true
      t.boolean :likes

      t.timestamps null: false
    end
  end
end