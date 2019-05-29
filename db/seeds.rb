Item.delete_all
Item.create!(
  name: 'テスト太郎',
  description: 'ここに商品説明が入ります。ここに商品説明が入ります。ここに商品説明が入ります。ここに商品説明が入ります。ここに商品説明が入ります。ここに商品説明が入ります。ここに商品説明が入ります。ここに商品説明が入ります。',
  status: 1,
  shipping_fee: 1,
  how_to_shipping: 1,
  area: 1,
  day: 1,
  price: 1000
)
Category.delete_all
Category.create!(
  name: 'レデイース',
  parent_id: 1
)
Category.create!(
  name: 'メンズ',
  parent_id: 2
)
Category.create!(
  name: 'ベビー・キッズ',
  parent_id: 3
)
Category.create!(
  name: 'インテリア・住まい・小物',
  parent_id: 4
)
Category.create!(
  name: '本・音楽・ゲーム',
  parent_id: 5
)
Category.create!(
  name: 'おもちゃ・ホビー・グッズ',
  parent_id: 6
)
Category.create!(
    name: 'コスメ・香水・美容',
    parent_id: 7
)
Category.create!(
  name: '家電・スマホ・カメラ',
  parent_id: 8
)
Category.create!(
  name: 'スポーツ・レジャー',
  parent_id: 9
)
Category.create!(
  name: 'ハンドメイド',
  parent_id: 10
)
Category.create!(
  name: 'チケット',
  parent_id: 11


  

)
Category.create!(
  name: '自動車・オートバイ',
  parent_id: 12
)
Category.create!(
  name: 'その他',
  parent_id: 13
)
