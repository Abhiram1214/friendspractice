class AddpictureIdtoimages < ActiveRecord::Migration
  def change
    add_column :images, :picture_id, :integer
  end
end
