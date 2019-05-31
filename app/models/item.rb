class Item < ApplicationRecord
  has_many :categories, through: :item_categories
  has_many :item_categories
  # enum status:{new: 0,old:1}

  # enum shipping_fee:{me: 0,you: 1}
  # enum how_to_shipping:{kuroneko: 0,yuhpack: 1}

  # enum area:{tokyo: 0 ,osaka: 1}
  # enum day: {onedays: 0, twodays: 1}
end
