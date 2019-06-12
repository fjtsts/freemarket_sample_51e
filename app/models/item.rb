class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture

  include JpPrefecture
  # jp_prefecture :origin_of_delivery
  has_many :item_images, dependent: :delete_all
  accepts_nested_attributes_for :item_images
  has_many :categories, through: :item_categories
  belongs_to :category,optional: true
  belongs_to :brand,optional: true
  has_one :exhibit, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorite_items, dependent: :destroy
  has_many :favorite_item_users, through: :favorite_items, source: :user
  has_one :purchases, dependent: :destroy
  belongs_to  :size

  with_options presence: true do
    validates :name, :description, :category_id, :size_id, :status, :shipping_fee, :how_to_shipping, :prefecture_id, :day, :price
  end
  validates :price, numericality: {greater_than_or_equal_to: 300,less_than_or_equal_to: 9_999_999}


  enum status: {"新品、未使用": 1, "未使用に近い": 2, "目立った傷や汚れなし": 3, "やや傷や汚れあり": 4, "傷や汚れあり": 5, "全体的に状態が悪い": 6}
  enum day: {"1~2日で発送": 1, "2~3日で発送": 2, "4~7日で発送": 3}
  enum shipping_fee: {"送料込み(出品者負担)": 1,"着払い(購入者負担)": 2 }
  enum exhibitor_burden:{ "未定":1,"らくらくメルカリ便":2,"ゆうメール":3,"レターパック":4,"普通郵便(定型,定形外)":5, "クロネコヤマト":6,"ゆうパック":7,"クリックポスト":8,"ゆうパケット":9}
  enum purchaser_burden:{ "未定　":1,"クロネコヤマト　":2,"ゆうパック　":3,"ゆうメール　":4}

end
