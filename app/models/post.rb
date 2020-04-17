class Post < ApplicationRecord
  belongs_to :user

	mount_uploader :image, ImageUploader
	validates :title, presence: true, length: { maximum: 255 }
	validates :text, presence: true, length: { maximum: 255 }

	has_many :like
  has_many :likers, through: :like , source: :user

	has_many :comments
end
