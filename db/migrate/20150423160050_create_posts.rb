class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.text :post
      t.string :image_post

      t.timestamps null: false
    end
  end
end