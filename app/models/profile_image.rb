class ProfileImage < ActiveRecord::Base
  attr_accessible :image, :name, :user_id, :remote_image_url
  belongs_to :user
  mount_uploader :image, ImageUploader
end
