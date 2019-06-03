class Item < ApplicationRecord
  belongs_to :category
  belongs_to :brand

  enum status: {"新品、未使用": 1, "未使用に近い": 2, "目立った傷や汚れなし": 3, "やや傷や汚れあり": 4, "傷や汚れあり": 5, "全体的に状態が悪い": 6}
  enum day: {"1~2日で発送": 1, "2~3日で発送": 2, "4~7日で発送": 3}
  enum shipping_fee: {"着払い(購入者負担)": 0, "送料込み(出品者負担)": 1}
  enum how_to_shipping:{kuroneko: 0,yuhpack: 1}
  # enum area:{"東京": 0 ,"大阪": 1}
  # enum status:{new: 0,old:1}

  # enum shipping_fee:{me: 0,you: 1}
  # enum how_to_shipping:{kuroneko: 0,yuhpack: 1}

  # enum area:{tokyo: 0 ,osaka: 1}
  # enum day: {onedays: 0, twodays: 1}
end
