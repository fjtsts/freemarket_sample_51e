class ItemImage < ApplicationRecord
  belongs_to :Item
  mount_uploader :image, ImageUploader
end
