class Item < ApplicationRecord
  include JpPrefecture
  jp_prefecture :origin_of_delivery
  has_many :item_images, dependent: :delete_all
  accepts_nested_attributes_for :item_images
  has_many :categories, through: :item_categories
  has_many :item_categories, dependent: :delete_all
  
  # enum status:{new: 0,old:1}

  # enum shipping_fee:{me: 0,you: 1}
  # enum how_to_shipping:{kuroneko: 0,yuhpack: 1}

  # enum area:{tokyo: 0 ,osaka: 1}
  # enum day: {onedays: 0, twodays: 1}
end
