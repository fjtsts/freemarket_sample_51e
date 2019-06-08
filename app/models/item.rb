class Item < ApplicationRecord

  include JpPrefecture
  jp_prefecture :origin_of_delivery
  has_many :item_images, dependent: :delete_all
  accepts_nested_attributes_for :item_images
  has_many :categories, through: :item_categories
  belongs_to :category,optional: true
  belongs_to :brand,optional: true
  has_one :exhibit, dependent: :destroy
  # belong_to  :size

  with_options presence: true do
    validates :name, :description, :category_id, :status, :shipping_fee, :how_to_shipping, :area, :day, :price
  end
  validates :price, numericality: {greater_than_or_equal_to: 300,less_than_or_equal_to: 9_999_999}

  # enum status: {"新品、未使用": 1, "未使用に近い": 2, "目立った傷や汚れなし": 3, "やや傷や汚れあり": 4, "傷や汚れあり": 5, "全体的に状態が悪い": 6}
  # enum days_to_ship: {"1~2日で発送": 1, "2~3日で発送": 2, "4~7日で発送": 3}
  # enum shipping_fee: {"着払い(購入者負担)": 1, "送料込み(出品者負担)": 2}

end
