class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :album_id
      t.string :caption
      t.string :description

      t.timestamps null: false
    end
  end
end
