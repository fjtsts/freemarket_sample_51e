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
  parent_id: 1
)
Category.create!(
  name: 'ベビー・キッズ',
  parent_id: 1
)
Category.create!(
  name: 'インテリア・住まい・小物',
  parent_id: 1
)
Category.create!(
  name: '本・音楽・ゲーム',
  parent_id: 1
)
Category.create!(
  name: 'おもちゃ・ホビー・グッズ',
  parent_id: 1
)
Category.create!(
    name: 'コスメ・香水・美容',
    parent_id: 1
)
Category.create!(
  name: '家電・スマホ・カメラ',
  parent_id: 1
)
Category.create!(
  name: 'スポーツ・レジャー',
  parent_id: 1
)
Category.create!(
  name: 'ハンドメイド',
  parent_id: 1
)
Category.create!(
  name: 'チケット',
  parent_id: 1
)
Category.create!(
  name: '自動車・オートバイ',
  parent_id: 1
)
Category.create!(
  name: 'その他',
  parent_id: 1
)

Category.create!(
  name: 'すべて',
  parent_id: 2
)
Category.create!(
  name:'トップス',
  parent_id: 2 
)
Category.create!(
  name:'ジャケット/アウター',
  parent_id: 2,
)
Category.create(
  name: 'パンツ'
  parent_id: 2,
)
Category.create!(
  name: 'スカート',
  parent_id: 2
)
Category.create!(
  name:'ワンピース',
  parent_id: 2
Category.create!(
  name: '靴',
  parent_id: 2
)
Category.create!(
  name: 'ルームウェア/パジャマ',
  paent_id: 2
)
Category.create!(
  name: 'レッグウェア／パジャマ',
  parent_id: 2
)
Category.create!(
  name: '帽子',
  parent_id 2
)
Category.create!(
  name: 'バッグ',
  parent_id 2
)
Category.create!(
   name: 'アクセサリー',
   parent_id 2
)
Category.create!(
  name: 'ヘアーアクセサリー',
  parent_id: 2

)
Category.create!(
  name: '小物',
  parent_id:2 
)
Category.create!(
  name: '時計',
  parent_id: 2
)
Category.create!(
  name: 'ウィッグ/エクステ',
  parent_id: 2
)
Category.create!(
  name: '浴衣/水着',
  parent_id: 2
)
Category.create!(
  name: 'スーツ/フォーマル/ドレス',
  parent_id: 2 
)
category
