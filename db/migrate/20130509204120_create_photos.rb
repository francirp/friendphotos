class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.string :source_url
      t.integer :fb_object_id
    end
  end
end
