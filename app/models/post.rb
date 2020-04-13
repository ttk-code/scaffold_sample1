class Post < ApplicationRecord
  belongs_to :user

	mount_uploader :image, ImageUploader
	validates :title, presence: true, length: { maximum: 255 }
	validates :text, presence: true, length: { maximum: 255 }

end
