class CreateProfileImages < ActiveRecord::Migration
  def change
    create_table :profile_images do |t|
      t.integer :user_id
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
