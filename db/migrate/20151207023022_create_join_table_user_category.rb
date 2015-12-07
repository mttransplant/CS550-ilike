class CreateJoinTableUserCategory < ActiveRecord::Migration
  def change
    create_join_table :users, :categories, column_options: {null: true} do |t|
      # t.index [:user_id, :category_id]
      # t.index [:category_id, :user_id]
    end
  end
end
