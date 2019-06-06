
brand = %w{
  シャネル
  ルイヴィトン
  シュプリーム
  ナイキ
 
 }
 brand.each do |brand|
  Brand.create(name: brand)
 end
 size = %w{
   XXS以下
   XS(SS)
   S
   M
   L
   XL(LL)
   2XL(3L)
   3XL(4L)
   4XL(5L)
   FREE SIZE
 }
 size.each do |size|
  Size.create!(name: size)
 end



parent_id1 = Category.create!(
  name: 'レディース'
   
)
parent_id2 = Category.create!(
  name: 'メンズ'
   
)
parent_id3 = Category.create!(
  name: 'ベビー・キッズ'
   
)
parent_id4 = Category.create!(
  name: 'インテリア・住まい・小物'
   
)
parent_id5 = Category.create!(
  name: '本・音楽・ゲーム'
   
)
parent_id6 = Category.create!(
  name: 'おもちゃ・ホビー・グッズ'
   
)
parent_id7 = Category.create!(
  name: 'コスメ・香水・美容'
   
)

parent_id8 = Category.create!(
  name: '家電・スマホ・カメラ'
   
)
parent_id9 = Category.create!(
  name: 'スポーツ・レジャー'
   
)
parent_id10 = Category.create!(
  name: 'ハンドメイド'
   
)
parent_id11 = Category.create!(
  name: 'チケット'
   
)
parent_id12 = Category.create!(
  name: '自動車・オートバイ'
   
)
parent_id13 = Category.create!(
  name: 'その他'
   
)
parent_id14 = parent_id1.children.create!(
  name: 'トップス'

   )
parent_id15 = parent_id1.children.create!(
  name: 'ジャケット/アウター'
  
)
parent_id16 = parent_id1.children.create!(
  name: 'パンツ'
)
parent_id17 = parent_id1.children.create!(
  name: 'スカート'
)
parent_id18 = parent_id1.children.create!(
  name: 'ワンピース'
)
parent_id19 = parent_id1.children.create!(
  name: '靴'
)
parent_id20 = parent_id1.children.create!(
  name: 'ルームウェア/パジャマ'
)
parent_id21 = parent_id1.children.create!(
  name: 'レッグウェア'
)
parent_id22 = parent_id1.children.create!(
  name: '帽子'
)
parent_id23 = parent_id1.children.create!(
  name: 'バッグ'
)
parent_id24 = parent_id1.children.create!(
  name: 'アクセサリー'
)
parent_id25 = parent_id1.children.create!(
  name: 'ヘアアクセサリー'
)
parent_id26 = parent_id1.children.create!(
  name: '小物'
)
parent_id27 = parent_id1.children.create!(
  name: '時計'
)
parent_id28 = parent_id1.children.create!(
  name: 'ウィッグ/エクステ'
)
parent_id29 = parent_id1.children.create!(
  name: '浴衣/..水着'
)
parent_id30 = parent_id1.children.create!(
  name: 'スーツ/フォーマル/ドレス'
)
parent_id31 = parent_id1.children.create!(
  name: 'マタニティー'
)
parent_id32 = parent_id1.children.create!(
  name: 'その他'
)
parent_id33 = parent_id2.children.create!(
  name: 'トップス'
)
parent_id34 = parent_id2.children.create!(
  name: 'ジャケット/アウター'
)
parent_id35 = parent_id2.children.create!(
  name: 'パンツ'
)
parent_id36 = parent_id2.children.create!(
  name: '靴'
)
parent_id37 = parent_id2.children.create!(
  name: 'バッグ'
)
parent_id38 = parent_id2.children.create!(
  name: 'スーツ'
)
parent_id39 = parent_id2.children.create!(
  name: '帽子'
)
parent_id40 = parent_id2.children.create!(
  name: 'アクセサリー'
)
parent_id41 = parent_id2.children.create!(
  name: '小物'
)
parent_id42 = parent_id2.children.create!(
  name: '時計'
)
parent_id43 = parent_id2.children.create!(
  name: '水着'
)
parent_id44 = parent_id2.children.create!(
  name: 'レッグウェア'
)
parent_id45 = parent_id2.children.create!(
  name: 'アンダーウェア'
)
parent_id46 = parent_id2.children.create!(
  name: 'その他'
)
parent_id47 = parent_id3.children.create!(
  name: 'ベビー服（女の子用）~95cm'
)
parent_id48 = parent_id3.children.create!(
  name: 'ベビー服（男の子用）~95cm'
)
parent_id49 = parent_id3.children.create!(
  name: 'ベビー服（男女兼用）~95cm'
)
parent_id50 = parent_id3.children.create!(
  name: 'ベビー服（女の子用）~100cm'
)
parent_id51 = parent_id3.children.create!(
  name: 'ベビー服(男の子用）~100cm'
)
parent_id52 = parent_id3.children.create!(
  name: 'ベビー服(男女兼用）~100cm'
)
parent_id53 = parent_id3.children.create!(
  name: 'キッズ靴'
)
parent_id54 = parent_id3.children.create!(
  name: '子供用ファッション小物'
)
parent_id55 = parent_id3.children.create!(
  name: 'おむつ/トイレ/バス'
)
parent_id56 = parent_id3.children.create!(
  name: '外出/移動用品'
)
parent_id57 = parent_id3.children.create!(
  name: '授乳/ 食事/室内用品'
)
parent_id58 = parent_id3.children.create!(
  name: 'ベビー家具/寝具/室内用品'
)
parent_id59 = parent_id3.children.create!(
  name: 'おもちゃ'
)
parent_id60 = parent_id3.children.create!(
  name: '行事/記念品'
)
parent_id61 = parent_id3.children.create!(
  name: 'その他'
)
parent_id62 = parent_id4.children.create!(
  name: 'キッチン/食器'
)
parent_id63 = parent_id4.children.create!(
  name: 'ベッド/マットレス'
)
parent_id64 = parent_id4.children.create!(
  name: 'ソファー/ソファーベッド'
)

parent_id65 = parent_id4.children.create!(
  name: '椅子/チェアー'
)
parent_id66 = parent_id4.children.create!(
  name: '机/テーブル'
)
parent_id67 = parent_id4.children.create!(
  name: '収納家具'
)
parent_id68 = parent_id4.children.create!(
  name: 'ラグ／カーペット/マット'
)
parent_id69 = parent_id4.children.create!(
  name: 'カーテン/ブラインド'
)
parent_id70 = parent_id4.children.create!(
  name: 'ライト/証明'
)
parent_id71 = parent_id4.children.create!(
  name: '寝具'
)
parent_id72 = parent_id4.children.create!(
  name: 'インテリア小物'
)
parent_id73 = parent_id4.children.create!(
  name: '季節/年中行事'
)
parent_id74 = parent_id4.children.create!(
  name: 'その他'
)
parent_id75 = parent_id5.children.create!(
  name: '本'
)
parent_id76 = parent_id5.children.create!(
  name: '漫画'
)
parent_id77 = parent_id5.children.create!(
  name: '雑誌'
)
parent_id78 = parent_id5.children.create!(
  name: 'CD'
)
parent_id79 = parent_id5.children.create!(
  name: 'DVD/ブルーレイ'
)
parent_id80 = parent_id5.children.create!(
  name: 'レコード'
)
parent_id81 = parent_id5.children.create!(
  name: 'テレビゲーム'
)
parent_id82 = parent_id6.children.create!(
  name: 'おもちゃ'
)
parent_id83 = parent_id6.children.create!(
  name: 'タレントグッズ'
)
parent_id84 = parent_id6.children.create!(
  name: 'コミック/アニメグッズ'
)
parent_id85 = parent_id6.children.create!(
  name: 'トレーディングカード'
)
parent_id86 = parent_id6.children.create!(
  name: 'フィギュア'
)
parent_id87 = parent_id6.children.create!(
  name: '楽器/器材'
)
parent_id88 = parent_id6.children.create!(
  name: 'コレクション'
)
parent_id89 = parent_id6.children.create!(
  name: 'ミリタリー'
)
parent_id90 = parent_id6.children.create!(
  name: '美術品'
)
parent_id91 = parent_id6.children.create!(
  name: 'アート用品'
)
parent_id92 = parent_id6.children.create!(
  name: 'その他'
)
parent_id93 = parent_id7.children.create!(
  name: 'ベースメイク'
)
parent_id94 = parent_id7.children.create!(
  name: 'メイクアップ'
)
parent_id95= parent_id7.children.create!(
  name: 'ネイルケア'
)
parent_id96 = parent_id7.children.create!(
    name: '香水'
     
)
parent_id97 = parent_id7.children.create!(
  name: 'スキンケア/基礎化粧品'
)
parent_id98 = parent_id7.children.create!(
  name: 'ヘアケア'
)
parent_id99 = parent_id7.children.create!(
  name: 'ボディケア'
)
parent_id100 = parent_id7.children.create!(
  name: 'オーラルケア'
)
parent_id101 = parent_id7.children.create!(
  name: 'リラクゼーション'
)
parent_id102 = parent_id7.children.create!(
  name: 'ダイエット'
)
parent_id103 = parent_id7.children.create!(
  name: 'その他'
)
parent_id104 = parent_id8.children.create!(
  name: 'スマートフォン/携帯電話'
   
)
parent_id105 = parent_id8.children.create!(
  name: 'スマホアクセサリー'
)
parent_id106 = parent_id8.children.create!(
  name: 'pc/タブレット'
)
parent_id107 = parent_id8.children.create!(
  name: 'カメラ'
)
parent_id108 = parent_id8.children.create!(
  name: 'テレビ/映像機器'
)
parent_id109 = parent_id8.children.create!(
  name: 'オーディオ機器'
)
parent_id110 = parent_id8.children.create!(
  name: '美容/健康'
)
parent_id111 = parent_id8.children.create!(
  name: '冷暖房/空調'
)
parent_id112 = parent_id8.children.create!(
  name: '生活家電'
)
parent_id113 = parent_id8.children.create!(
  name: 'その他'
)
parent_id114 = parent_id9.children.create!(
  name: 'ゴルフ'
)
parent_id115 = parent_id9.children.create!(
  name: 'フィッシング'
)
parent_id116= parent_id9.children.create!(
  name: '自転車'
)
parent_id117 = parent_id9.children.create!(
  name: 'トレーニング/エクササイズ'
)
parent_id118 = parent_id9.children.create!(
  name: '野球'
)
parent_id119 = parent_id9.children.create!(
  name: 'サッカー/フットサル'
)
parent_id120= parent_id9.children.create!(
  name: 'テニス'
)
parent_id121 = parent_id9.children.create!(
  name: 'スノーボード'
)
parent_id122= parent_id9.children.create!(
  name: 'スキー'
)
parent_id123 = parent_id9.children.create!(
  name: 'その他のスポーツ'
)
parent_id124 = parent_id9.children.create!(
  name: 'アウトドア'
)
parent_id125 = parent_id9.children.create!(
  name: 'その他'
)
parent_id126 = parent_id10.children.create!(
  name: 'アクセサリー(女性用)'
)
parent_id127 = parent_id10.children.create!(
  name: 'ファッション/小物'
)
parent_id128 = parent_id10.children.create!(
  name: 'アクセサリー/時計'
)
parent_id129 = parent_id10.children.create!(
  name: '日用品/インテリア'
)
parent_id130 = parent_id10.children.create!(
  name: '趣味/おもちゃ'
)
parent_id131 = parent_id10.children.create!(
  name: 'キッズ/ベビー'
)
parent_id132= parent_id10.children.create!(
  name: '素材/材料'
)
parent_id133 = parent_id10.children.create!(
  name: '二次創作'
)
parent_id134 = parent_id10.children.create!(
  name: 'その他'
)
parent_id135 = parent_id11.children.create!(
  name: '音楽'
)
parent_id136 = parent_id11.children.create!(
  name: 'スポーツ'
)
parent_id137 = parent_id11.children.create!(
  name: '演劇/芸能'
)
parent_id138 = parent_id11.children.create!(
  name: 'イベント'
)
parent_id139 = parent_id11.children.create!(
  name: '映画'
)
parent_id140 = parent_id11.children.create!(
  name: '施設利用券'
)
parent_id141 = parent_id11.children.create!(
  name: '優待券'
)
parent_id142 = parent_id11.children.create!(
  name: 'その他'
)
parent_id143 = parent_id12.children.create!(
  name: '自動車本体'
)
parent_id144 = parent_id12.children.create!(
  name: '自動車タイヤ/ホイール'
)
parent_id145 = parent_id12.children.create!(
  name: '自動車パーツ'
)
parent_id146 = parent_id12.children.create!(
  name: '自動車アクセサリー'
)
parent_id147 = parent_id12.children.create!(
  name: 'オートバイ本体'
)
parent_id148 = parent_id12.children.create!(
  name: 'オートバイパーツ'
)
parent_id149 = parent_id12.children.create!(
  name: 'オートバイアクセアリー'
)
parent_id150 = parent_id13.children.create!(
  name: 'まとめ売り'
)
parent_id151 = parent_id13.children.create!(
  name: 'ペット用品'
)
parent_id152 = parent_id13.children.create(
  name: '食品'
)
parent_id153 = parent_id13.children.create(
  name: '飲料/酒'
)
parent_id154 = parent_id13.children.create(
  name: '日用品/生活雑貨/旅行'
)
parent_id155 = parent_id13.children.create(
  name: 'アンティーク/コレクション'
)
parent_id156 = parent_id13.children.create(
  name: '文房具/事務用品'
)
parent_id157 = parent_id13.children.create(
  name: '事務/店舗用品'
)
parent_id158 = parent_id13.children.create(
  name: 'その他'
)



    categories14= %w{
    Tシャツ/カットソー(半袖/袖なし)
    Tシャツ/カットソー（七分/長袖)
    シャツ/ブラウス(半袖/袖なし)
    シャツ/ブラウス(七分/長袖)
    ポロシャツ
    キャミソール
    タンクトップ
    ホルターネック
    ニット/セーター
    チュニック
    カーディガン/ボレロ
    アンサンブル
    ベスト/ジレ
    パーカー
    トレーナー/スウェト
    ペアトップ/チューブトップ
    ジャージ
    その他
    
    }
    categories15 = %w{
      テーラードジャケット
      ノーカラージャケット
      Gジャン/デニムジャケット
      レザージャケット
      ダウンジャケット
      ライダースジャケット
      ミリタリージャケット
      ダウンベスト
      ジャンパー/ブルゾン
      ポンチョ
      ロングコート
      トレンチコート
      ダッフルコート
      ピーコート
      チェスターコート
      モッズコート
      スタジャン
      毛皮/ファーコート
      スプリングコート
      スカジャン
      その他
      
    }
    categories16 = %w{
      デニム/ジーンズ
      ショートパンツ
      カジュアルパンツ
      ハーフパンツ
      チノパン
      ワークパンツ/カーゴパンツ
      クロップドパンツ
      サロペット/オーバーオール
      オールインワン
      サルエルパンツ
      ガウチョパンツ
      その他
      
    }
    categories17 = %w{
      ミニスカート
      ひざ丈スカート
      ロングスカート
      キュロット
      その他
      
    }
    categories18 = %w{
      ミニワンピース
      ひざ丈ワンピース
      ロングワンピース
      その他
      
    }
    categories19 = %w{
      ハイヒール/パンプス
      ブーツ
      サンダル
      スニーカー
      ミュール
      モカシン
      ローファー/革靴
      フラットシューズ/バレーシューズ
      長靴/レインシューズ
      その他
      
    }
    categories20 = %w{
      パジャマ
      ルームウェア
      
    }
    categories21 = %w{
      ソックス
      スパッツ/レギンス
      ストッキング/タイツ
      レグウォーマー
      その他
      
    }
    categories22 = %w{
     ニットキャップ/ビーニー
     ハット
     ハンチング/ベレー帽
     キャップ
     キャスケット
     麦わら帽子
     その他
     
    }
    categories23 = %w{
      ハンドバッグ
      トートバッグ
      エコバッグ
      リュック/バックパック
      ボストンバッグ
      スポーツバッグ
      ショルダーバッグ
      クラッチバッグ
      ポーチ/バニティ
      バディーバッグ/ウェストバッグ
      マザーバッグ
      メッセンジャーバッグ
      ビジネスバッグ
      旅行用カバン/キャリーバッグ
      ショップ袋
      和装用バッグ
      かごバッグ
      その他
      
    }
    categories24 = %w{
      ネックレス
      ブレスレット
      バングル/リストバンド
      リング
      ピアス(片耳用)
      ピアス(両耳用)
      イヤリング
      アンクレット
      ブローチ/コサージュ
      チャーム
      その他
    }
    categories25 = %w{
      ヘアゴム
      ヘアバンド/カチューシャ
      ヘアピン
      その他
    }
    categories26 = %w{
      長財布
      折り財布
      コインケース/小銭入れ
      名刺入れ/定期入れ
      キーケース
      キーホルーダー
      手袋/アームカバー
      ハンカチ
      ベルト
      マフラー/ショール
      ストール/スヌード
      バンダナ/スカーフ
      ネックウォーマー
      サスペンダー
      サングラス/メガネ
      モバイルケース/カバー
      手袋
      イヤマフラー
      傘
      レインコート/ポンチョ
      ミラー
      タバコグッズ
      その他
    }
    categories27 = %w{
      腕時計(アナログ)
      腕時計(デジタル)
      ラバーベルト
      レザーベルト
      金属ベルト
      その他
    }
    categories28 = %w{
      前髪ウイッグ
      ロングストレート
      ロングカール
      ショートストレート
      ショートカール
      その他
    }
    categories29 = %w{
      浴衣
      着物
      振袖
      長襦袢/半襦袢
      水着セパレート
      水着ワンピース
      水着スポーツ用
      その他
    }
    categories30 = %w{
      スカートスーツ上下
      パンツスーツ上下
      ドレス
      パーティーバッグ
      シューズ
      ウェディング
      その他
    }
    categories31 = %w{
      トップス
      アウター
      インナー
      ワンピース
      パンツ/スパッツ
      スカート
      パジャマ
      授乳服
      その他
    }
    categories32 = %w{
      コスプレ
      下着
      その他
    }
    categories33 = %w{
      Tシャツ/カットソー(半袖/袖なし)
      Tシャツ/カットソー（七分/長袖)
      シャツ/ブラウス(半袖/袖なし)
      シャツ/ブラウス(七分/長袖)
      ポロシャツ
      タンクトップ
      ニット/セーター
      パーカー
      カーディガン
      スウェット
      ジャージ
      ベスト
      その他
    }
    categories34 = %w{
      テーラードジャケット
      ノーカラージャケット
      Gジャン/デニムジャケット
      レザージャケット
      ダウンジャケット
      ライダースジャケット
      ミリタリージャケット
      ナイロンジャケット
      フライジャケット
      ダッフルコート
      ピーコート
      ステンカラーコート
      トレンチコート
      モッズコート
      チェスターコート
      スタジャン
      スカジャン
      ブルゾン
      マウンテンパーカー
      ダウンベスト
      ポンチョ
      カバーオール
      その他
    }
    categories35 = %w{
    デニム/ジーンズ
    ワークパンツ/カーゴパンツ
    スラックス
    チノパン
    ショートパンツ
    ペインターパンツ
    サルエルパンツ
    オーバーオール
    その他
    }
    categories36 = %w{
      スニーカー
      サンダル
      ブーツ
      モカシン
      ドレス/ビジネス
      長靴/レインシューズ
      デッキシューズ
      その他
    }
    categories37 = %w{
      ショルダーバッグ
      トートバッグ
      リュック/バックパック
      ウエストポーチ
      ボディーバッグ
      ドラムバッグ
      ビジネスバッグ
      トラベルバッグ
      メッセンジャーバッグ
      エコバッグ
      その他
      
    }
    categories38 = %w{
      スーツジャケット
      スーツベスト
      スラックス
      セットアップ
      その他
    }
    categories39 = %w{
      キャップ
      ハット
      ニットキャップ/ビーニー
      ハンチング帽/ベレー帽
      キャスケット
      サンバイザー
      その他
    }
    categories40 = %w{
      ネックレス
      ブレスレット
      バングル/リストバンド
      リング
      ピアス(片耳用)
      ピアス(両耳用)
      アンクレット
      その他
    }
    categories41 = %w{
      長財布
      折り財布
      マネークリップ
      コインケース/小銭入れ
      名刺入れ/定期入れ
      キーケース
      キーホルダー
      ネクタイ
      手袋
      ハンカチ
      ベルト
      マフラー
      ストール
      バンダナ
      ネックウォーマー
      サスペンダー
      ウォレットチェーン
      サングラス/メガネ
      モバイルケース/カバー
      手帳
      ストラップ
      ネクタイピン
      カフリンクス
      イヤマフラー
      傘
      レインコート
      ミラー
      タバコグッズ
      その他

    }
    categories42 = %w{
      腕時計(アナログ)
      腕時計(デジタル)
      ラバーベルト
      レザーベルト
      金属ベルト
      その他

    }
    categories43 = %w{
      一般水着
      スポーツ用
      アクセサリー
      その他

    }
    categories44 = %w{
      ソックス
      レギンス/スパッツ
      その他
    }
    categories45 = %w{
      トランクス
      ボクサーパンツ
      その他
    }
    categories47 = %w{
      トップス
      アウター
      パンツ
      スカート
      ワンピース
      ベビードレス
      おくるみ
      下着/肌着
      パジャマ
      ロンパース
      その他
    } 
    categories48 = %w{
        トップス
        アウター
        パンツ
        おくるみ
        下着/肌着
        パジャマ
        ロンパース
        その他
    }
    categories49 = %w{
      トップス
      アウター
      パンツ
      おくるみ
      下着/肌着
      パジャマ
      ロンパース
      その他
    }
    categories50 = %w{
      コート
      ジャケット/上着
      トップス(Tシャッツ/カットソー)
      トップス(トレーナー)
      トップス(チュニック)
      トップス(タンクトップ)
      トップス(その他)
      スカート
      パンツ
      ワンピース
      セットアップ
      パジャマ
      フォーマル/ドレス
      和服
      浴衣
      甚平
      水着
      その他
    }
    categories51 = %w{
      コート
      ジャケット/上着
      トップス(Tシャッツ/カットソー)
      トップス(トレーナー)
      トップス(タンクトップ)
      トップス(その他)
      パンツ
      セットアップ
      パジャマ
      フォーマル/ドレス
      和服
      浴衣
      甚平
      水着
      その他

    }
    categories52 = %w{
      コート
      ジャケット/上着
      トップス(Tシャツ/カットソー)
      トップス(トレーナー)
      トップス(その他)
      ボトムス
      パジャマ
      その他
    }
    categories53 = %w{
      スニーカー
      サンダル
      ブーツ
      長靴
      その他
    }
    categories54 = %w{
      靴下/スパッツ
      帽子
      エプロン
      サスペンダー
      タイツ
      ハンカチ
      バンダナ
      ベルト
      マフラー
      傘
      手袋
      スタイ
      バッグ
      その他
    }
    categories55 = %w{
      おむつ用品
      おまる/ 補助便座
      トレーニングパンツ
      ベビーバス
      お風呂用品
      その他
    }
    categories56 = %w{
      ベビーカー
      抱っこひも/スリング
      チャイルドシート
      その他
    }
    categories57 = %w{
      ミルク
      ベビーフード
      ベビー用品
      その他
    }
    categories58 = %w{
      ベッド
      布団/毛布
      イス
      たんす
      その他
    }
    categories59 = %w{
      おふろのおもちゃ
      がらがら
      オルゴール
      ベービージム
      手押し車/カタカタ
      知育玩具
      その他
    }
    categories60 = %w{
      お宮参り用品
      お食い初め用品
      アルバム
      手形/足型
      その他

    }
  categories61 = %w{
    母子手帳
    その他
  }
  categories62 = %w{
    食器
    調理器具
    収納/キッチン雑貨
    弁当用品
    カトラリー(スプーン等)
    テーブル用品
    容器
    エプロン
    アルコールグッズ
    浄水器
    その他
  }
  categories63 = %w{
    セミシングルベッド
    シングルベッド
    セミダブルベッド
    ダブルベッド
    ワイドダブルベッド
    クイーンベッド
    キングベッド
    脚付マットレス
    マットレス
    すのこベッド
    ロフトベッド/システムベッド
    簡易ベッド/折りたたみベッド
    収納付き
    その他
  }
  categories64 = %w{
    ソファセット
    シングルソファ
    ラブソファ
    トリプルソファ
    オットマン
    コーナーソファ
    ビーズソファ/クッションソファ
    ローソファ/フロアソファ
    ソファベッド
    応援セット
    ソファカバー
    リクライニングソファ
    その他
  }
  categories65 = %w{
    一般
    スツール
    ダイニングチェア
    ハイバッグチェア
    ロッキングチェア
    座椅子
    折りたたみイス
    デスクチェア
    その他
  }
  categories66 = %w{
    こたつ
    カウンターテーブル
    サイドテーブル
    センターテーブル
    ダイニングテーブル
    座卓/ちゃぶ台
    アウトドア用
    パソコン用
    事務机/学習机
    その他
  }
  categories67 = %w{
    リビング収納
    キッチン収納
    玄関/屋外収納
    バス/トイレ収納
    本収納
    本/CD/DVD収納
    洋服たんす/押入れ収納
    電話代/ファックス台
    ドレッサー/鏡台
    棚/ラック
    ケース/ボックス
    その他
  }
  categories68 = %w{
    ラグ
    カーペット
    ホットカーペット
    玄関/キッチンマット
    トイレ/バスマット
    その他
  }
  categories69 = %w{
    カーテン
    ブラインド
    ロールスクリーン
    のれん
    その他
  }
  categories70 = %w{
    蛍光灯/電球
    天井照明
    フロアスタンド
    その他
  }
  categories71 = %w{
    布団
    枕
    シーツ/カバー
    その他
  }
  categories72 = %w{
    ゴミ箱
    ウェルカムボード
    オルゴール
    クッション
    クッションカバー
    スリッパラック
    ティッシュボックス
    バスケット/かご
    フォトフレーム
    マガジンラック
    モービル
    花瓶
    灰皿
    傘立て
    小物入れ
    置き時計
    掛け時計/柱時計
    鏡(立て掛け式)
    鏡(壁たて式)
    置物
    風鈴
    植物/観葉植物
    その他
  }
  categories73 = %w{
    正月
    成人式
    バレンタインデー
    ひな祭り
    こどもの日
    母の日
    父の日
    サマーギフト/お中元
    夏/夏休み
    ハロウィン
    敬老の日
    お歳暮
    クリスマス
    冬一般
    その他
  }
  categories75 = %w{
  文学/小説
  人文/社会
  ノンフィクション/教養
  地図/旅行ガイド
  ビジネス/経済
  健康/医学
  コンピューター/IT
  趣味/スポーツ/実用
  住まい/暮らし/子育て
  アート/エンタメ
  洋書
  絵本
  参考書
  その他
  }
  categories76 = %w{
    全巻セット
    少年漫画
    少女漫画
    青年漫画
    女性漫画
    同人誌
    その他
  }
  categories77 = %w{
    アート/エンタメ/ホービー
    ファッション
    ニュース/総合
    趣味/スポーツ
    その他
  }
  categories78 = %w{
    邦楽
    洋楽
    アニメ
    クラシック
    KPOP/アジア
    キッズ/ファミリー
    その他
  }
  categories79 = %w{
    外国映画
    日本映画
    アニメ
    TVドラマ
    ミュージック
    お笑い/バラエティ
    スポーツ/フィットネス
    キッズ/ファミリー
    その他

  }
  categories80 = %w{
    邦楽
    洋楽
    その他

  }
  categories81 = %w{
    家庭用ゲーム本体
    家庭用ゲームソフト
    携帯用ゲーム本体
    携帯用ゲームソフト
    PCゲーム
    その他
  }
  categories82 = %w{
    キャラクターグッズ
    ぬいぐるみ
    小物/アクセサリー
    模型/プラモデル
    ミニカー
    トイラジコン
    プラモデル
    ホビーラジコン
    鉄道模型
    その他
  }
  categories83 = %w{
    アイドル
    ミュージシャン
    タレント/お笑い芸人
    スポーツ選手
    その他

  }
  categories84 = %w{
    ストラップ
    キーホルダー
    バッジ
    カード
    クリアファイル
    ポスター
    タオル
    その他
  }
    

categories85 = %w{
  遊戯王
  マジック:ザ・ギャザリング
  デュエルマスターズ
  バトルスピリッツ
  プリパラ
  アイカツ
  カードファイト!!ヴァンガード
  ヴァイスシュバルツ
  プロ野球オーナーズリーグ
  ベースボールヒーローズ
  ドラゴンボール
  スリープ
  その他

}
categories86 = %w{
  コミック/アニメ
  特撮
  ゲームキャラクター
  SF/ファンタジー/ホラー
  アメコミ
  ミリタリー
  その他

}
categories87 = %w{
  エレキギター
  アコースティックギター
  ベース
  エフェクター
  アンプ
  弦楽器
  管楽器
  鍵盤楽器
  打楽器
  和楽器
  楽譜/スコア
  レコーディング/PA機器
  DJ機器
  DTM/DAW
  その他
}
categories88 = %w{
  武具
  使用済切手/官製はがき
  旧貨幣/金貨/銀貨/記念硬貨
  印刷物
  ノベルティーグッズ
  その他
}
categories89 = %w{
  トイガン
  個人装備
  その他
}
categories90 = %w{
  陶芸
  ガラス
  漆芸
  金属加工
  絵画/タペストリー
  版画
  彫刻/オブジェクト
  写真
  その他

}
categories91 = %w{
  画材
  額縁
  その他
}
categories92 = %w{
  トランプ/ UNO
  かるた/百人一首
  ダーツ
  ビリヤード
  麻雀
  パズル/ジグソーパズル
  囲碁/将棋
  オセロ/チェス
  人生ゲーム
  野球/サッカーゲーム
  スポーツ
  三輪車/乗り物
  ヨーヨー
  模型製作品
  鉄道
  航空機
  アマチュア無線
  パチンコ/パチスロ
  その他
}
categories93 = %w{
  ファンデーション
  化粧下地
  コントロールカラー
  BBクリーム
  CCクリーム
  コンシーラー
  フェイスパウダー
  トライアルセット/サンプル
  その他
}
categories94 = %w{
  アイシャドウ
  口紅
  リップグロス
  リップライナー
  チーク
  フェイスカラー
  マスカラ
  アイライナー
  つけまつげ
  アイブロウペンシル
  パウダーアイブロウ
  眉マスカラ
  トライアルセット/サンプル
  メイク道具/化粧小物
  美顔用品/美顔ローラ
  その他
}
categories95 = %w{
  ネイルカラー
  カラージェル
  ネイルベースコート/トップコート
  ネイルアート用品
  ネイルパーツ
  ネイルチップ/付け爪
  手入れ用品
  除光液
  その他
}
categories96 = %w{
  香水(女性用)
  香水(男性用)
  ユニセックス
  ボディミスト
  その他
}
categories97 = %w{
  化粧水/ローション
  乳液/ミルク
  美容液
  フェイスクリーム
  洗顔料
  クレンジング/メイク落とし
  バッグ/フェイスマスク
  ジェル/ゲル
  ブースター/導入液
  アイケア
  リップケア
  トライアルセット/サンプル
  洗顔グッズ
  その他

}
categories98 = %w{
  シャンプー
  トリートメント
  スタイリング剤
  カラーリング剤
  ブラシ
  その他
}
categories99 = %w{
  オイル/クリーム
  ハンドクリーム
  ローション
  日焼け止め/サンオイル
  ボディーソープ
  入浴剤
  制汗/デオドランド
  フットケア
  その他
}
categories100 = %w{
  口臭予防/エチケット用品
  歯ブラシ
  その他
}
categories101 = %w{
  エッセンシャルオイル
  芳香剤
  お香/香炉
  キャンドル
  リラクゼーション
  その他
}
categories102 = %w{
  ダイエット食品
  エクササイズ用品
  体重計
  体脂肪計
  その他
}
categories103 = %w{
  健康用品
  看護/介護用品
  救急/衛生用品
  その他
}
categories104 = %w{
  スマートホン本体
  バッテリー/充電器
  携帯電話本体
  PHS本体
  その他
}
categories105 = %w{
  Andoroid用ケース
  iphone用ケース
  カバー
  イヤホンジャック
  ストラップ
  フィルム
  自撮り棒
  その他

}
categories106 = %w{
  タブレット
  ノートPC
  デスクトップ型PC
  ディスプレイ
  電子ブックリーダー
  PC周辺機器
  PCパーツ
  その他
}
categories107 = %w{
  デジタルカメラ
  ビデオカメラ
  レンズ(単焦点)
  レンズ(ズーム)
  フィルムカメラ
  防犯カメラ
  その他
}
categories108 = %w{
  テレビ
  プロジェクター
  ブルーレイレコーダー
  DVDレコーダー
  ブルーレイプレーヤー
  DVDプレイヤー
  映像用ケーブル
  その他

}
categories109 = %w{
  ポータブルプレーヤー
  イヤホン
  ヘッドホン
  アンプ
  ケーブル/シールド
  ラジオ
  その他
}
categories110 = %w{
  ヘアドライヤー
  ヘアアイロン
  美容機器
  電気シェーバー
  電気ブラシ
  その他
}
categories111 = %w{
  エアコン
  空気清浄機
  加湿器
  扇風機
  除湿機
  ファンヒーター
  電気ヒーター
  オイルヒーター
  ストーブ
  ホットカーペット
  こたつ
  電気ストーブ
  ホットカーペット
  こたつ
  電気毛布
  その他
}
categories112 = %w{
  冷蔵庫
  洗濯機
  炊飯器
  電子レンジ/オーブン
  調理機器
  アイロン
  掃除機
  エスプレッソマシン
  コーヒーメーカー
  衣類乾燥機
  その他

}
categories113 = %w{
  その他
}
categories114 = %w{
  クラブ
  ウエア(男性用)
  ウエア(女性用)
  バッグ
  シューズ(男性用)
  シューズ(女性用)
  アクセサリー
  その他

}
categories115 = %w{
  ロッド
  リール
  ルアー
  ウエア
  釣り糸/ライン
  その他

}
categories116 = %w{
  自転車本体
  ウェア
  パーツ
  アクセサリー
  バッグ
  工具/メンテナンス
  その他
}
categories117 = %w{
  ランニング
  ウオーキング
  ヨガ
  トレーニング
  その他
}
categories118 = %w{
  ウェア
  シューズ
  グローブ
  バット
  アクセサリー
  防具
  練習機器
  記念グッズ
  応援グッズ
  その他
}
categories119 = %w{
  ウェア
  シューズ
  ボール
  アクセサリー
  記念グッズ
  応援グッズ
  その他
}
categories120 = %w{
  ラケット(硬式用)
  ラケット(軟式用)
  ウェア
  シューズ
  ボール
  アクセサリー
  記念グッズ
  応援グッズ
  その他
}
categories121 = %w{
  ボード
  バインディング
  ブーツ(男性用)
  ブーツ(女性用)
  ブーツ(子供用)
  ウェア/装備( 男性用)
  ウェア/装備(女性用)
  ウェア/装備(子供用)
  アクセサリー
  バッグ
  その他
}
categories122 = %w{
  板
  ブーツ(男性用)
  ブーツ(女性用)
  ブーツ(子供用)
  ビンディング
  ウェア(男性用)
  ウェア(女性用)
  ウェア(子供用)
  ストック
  その他
}
categories123 = %w{
  ダンス/バレー
  サーフィン
  バスケットボール
  バドミントン
  バレーボール
  スケートボード
  陸上競技
  ラグビー
  アメリカンフットボール
  ボクシング
  ボウリング
  その他
}
categories124 = %w{
  テント
  ライト/ランタン
  寝具/寝袋
  テーブル/チェア
  ストーブ/コンロ
  調理器具
  食器
  登山用品
  その他
}
categories125 = %w{
  旅行用品
  その他
}
categories126 = %w{
  ピアス
  イヤリング
  ネクレッス
  ブレスレット
  リング
  チャーム
  ヘアゴム
  アンクレット
  その他
}
categories127 = %w{
  バッグ(女性用)
  バッグ(男性用)
  財布(女性用)
  財布(男性用)
  ファッション雑貨
  その他
}
categories128 = %w{
  アクセサリー(男性用)
  時計(女性用)
  時計(男性用)
  その他
}
categories129 = %w{
  キッチン用品
  家具
  文房具
  アート/写真
  アロマ/キャンドル
  フラワー/ガーデン
  その他
  
}
categories130 = %w{
  クラフト/布製品
  おもちゃ/人形
  その他
  
}
categories131 = %w{
  ファッション雑貨
  スタイ/よだれかけ
  外出用品
  ネームタグ
  その他
}
categories132 = %w{
  各種パーツ
  生地/糸
  型紙/パターン
  その他
}
categories133 = %w{
  Ingress
  クリエイターズ宇宙兄弟
  その他
}
categories135 = %w{
  男性アイドル
  女性アイドル
  韓流
  国内アーティスト
  海外アーティスト
  音楽フェス
  声優/アニメ
  その他
}
categories136 = %w{
  サッカー
  野球
  テニス
  格闘技/プロレス
  相撲/武道
  ゴルフ
  バレーボール
  バスケットボール
  モータースポーツ
  ウィンタースポーツ
  その他

}
categories137 = %w{
  ミュージカル
  演劇
  伝統芸能
  落語
  お笑い
  オペラ
  サーカス
  バレエ
  その他
}
categories138 = %w{
  声優/アニメ
  キッズ/ファミリー
  トークショー/講演会
  その他
}
categories139 = %w{
  邦画
  洋画
  その他
}
categories140 = %w{
  遊園地/テーマパーク
  美術館/博物館
  スキー場
  ゴルフ場
  フィットネス
  プール
  ボウリング場
  水族館
  動物園
  その他
}
categories141 = %w{
  ショッピング
  レストラン/食事券
  フード/ドリンク券
  宿泊券
  その他
}
categories143 = %w{
  国内車体
  外国車体
}
categories144 = %w{
  タイヤ/ホイールセット
  タイヤ
  ホイール
  その他
}
categories145 = %w{
  サスペンション
  ブレーキ
  外装、エアロパーツ
  ライト
  内装品、シート
  ステアリング
  マフラー、排気系
  エンジン、過給機、冷却器
  クラッチ、ミッション、駆動系
  電装品
  補強パーツ
  凡庸パーツ
  外国自動車用パーツ
  その他
}
categories146 = %w{
  車内アクセサリー
  カーナビ
  カーオーディオ
  車外アクセサリー
  メンテナンス用品
  チャイルドシート
  ドライブレコーダー
  レーダー探知機
  カタログ/マニュアル
  セキュリティー
  ETC
  その他

}
categories148 = %w{
  タイヤ
  マフラー
  エンジン、冷却装置
  カウル、フェンダー、外装
  サスペンション
  ホイール
  シート
  ブレーキ
  タンク
  ライト、ウィンカー
  チェーン、スプロケット、駆動系
  メーター
  電装系
  ミラー
  外国オートバイ用パーツ
  その他
}
categories149 = %w{
  ヘルメット/シールド
  バイクウエア/装備
  アクセサリー
  メンテナンス
  カタログ/マニュアル
  その他
}
categories151 = %w{
  ペットフード
  犬用品
  猫用品
  魚用品/水草
  小動物用品
  爬虫類/両生類用品
  かご/おり
  鳥用品
  虫類用品
  その他

}
categories152 = %w{
  菓子
  米
  野菜
  果物
  調味料
  魚介類(加工食品)
  肉類(加工食品)
  その他
}
  categories153 = %w{
    コーヒー
    ソフトドリンク
    ミネラルウォーター
    茶
    ウイスキー
    ブランデー
    焼酎
    日本酒
    ビール、発泡酒
    その他
  }
categories154 = %w{
  タオル/バス用品
  日用品/生活雑貨
  洗剤/柔軟剤
  旅行用品
  防災関連グッズ
  その他
}
categories155 =%w{
  雑貨
  工芸品
  家具
  印刷分
  その他
}
categories156 =%w{
  筆記用具
  ノート/メモ帳
  テープ/マスキングテープ
  カレンダー/スケジュール
  アルバム/スクラップ
  ファイル/バインダー
  ハサミ/カッター
  カードホルダー/名刺管理
  のり/ホッチキス
  その他
}
categories157 = %w{
  オフィス用品
  オフィス家具
  店舗用品
  OA機器
  ラッピング/包装
  その他

}

  
    categories14.each do | category|
      parent_id14.children.create!(name: category)
    end
    categories15.each do | category|
      parent_id15.children.create!(name: category)
    end
    categories16.each do | category|
      parent_id16.children.create!(name: category)
    end
    categories17.each do | category|
      parent_id17.children.create!(name: category)
    end
    categories18.each do | category|
      parent_id18.children.create!(name: category)
    end
    categories19.each do | category|
      parent_id19.children.create!(name: category)
    end
    categories20.each do | category|
      parent_id20.children.create!(name: category)
    end
    categories21.each do | category|
      parent_id21.children.create!(name: category)
    end
    categories22.each do | category|
      parent_id22.children.create!(name: category)
    end
    categories23.each do | category|
      parent_id23.children.create!(name: category)
    end
    categories24.each do | category|
      parent_id24.children.create!(name: category)
    end
    categories25.each do | category|
      parent_id25.children.create!(name: category)
    end
    categories26.each do | category|
      parent_id26.children.create!(name: category)
    end
    categories27.each do | category|
      parent_id27.children.create!(name: category)
    end
    categories28.each do | category|
      parent_id28.children.create!(name: category)
    end
    categories29.each do | category|
      parent_id29.children.create!(name: category)
    end
    categories30.each do | category|
      parent_id30.children.create!(name: category)
    end
    categories31.each do | category|
      parent_id31.children.create!(name: category)
    end
    categories32.each do | category|
      parent_id32.children.create!(name: category)
    end
    categories33.each do | category|
      parent_id33.children.create!(name: category)
    end
    categories34.each do | category|
      parent_id34.children.create!(name: category)
    end
    categories35.each do | category|
      parent_id35.children.create!(name: category)
    end
    categories36.each do | category|
      parent_id36.children.create!(name: category)
    end
    categories37.each do | category|
      parent_id37.children.create!(name: category)
    end
    categories38.each do | category|
      parent_id38.children.create!(name: category)
    end
    categories39.each do | category|
      parent_id39.children.create!(name: category)
    end
    categories40.each do | category|
      parent_id40.children.create!(name: category)
    end
    categories41.each do | category|
      parent_id41.children.create!(name: category)
    end
    categories42.each do | category|
      parent_id42.children.create!(name: category)
    end
    categories43.each do | category|
      parent_id43.children.create!(name: category)
    end
    categories44.each do | category|
      parent_id44.children.create!(name: category)
    end
    categories45.each do | category|
      parent_id45.children.create!(name: category)
    end
    
    categories47.each do | category|
      parent_id47.children.create!(name: category)
    end
    categories48.each do | category|
      parent_id48.children.create!(name: category)
    end
    categories49.each do | category|
      parent_id49.children.create!(name: category)
    end
    categories50.each do | category|
      parent_id50.children.create!(name: category)
    end
    categories51.each do | category|
      parent_id51.children.create!(name: category)
    end
    categories52.each do | category|
      parent_id52.children.create!(name: category)
    end
    categories53.each do | category|
      parent_id53.children.create!(name: category)
    end
    categories54.each do | category|
      parent_id54.children.create!(name: category)
    end
    categories55.each do | category|
      parent_id55.children.create!(name: category)
    end
    categories56.each do | category|
      parent_id56.children.create!(name: category)
    end
    categories57.each do | category|
      parent_id57.children.create!(name: category)
    end
    categories58.each do | category|
      parent_id58.children.create!(name: category)
    end
    categories59.each do | category|
      parent_id59.children.create!(name: category)
    end
    categories60.each do | category|
      parent_id60.children.create!(name: category)
    end
    categories61.each do | category|
      parent_id61.children.create!(name: category)
    end
    categories62.each do | category|
      parent_id62.children.create!(name: category)
    end
    categories63.each do | category|
      parent_id63.children.create!(name: category)
    end
    categories64.each do | category|
      parent_id64.children.create!(name: category)
    end
    categories65.each do | category|
      parent_id65.children.create!(name: category)
    end
    categories66.each do | category|
      parent_id66.children.create!(name: category)
    end
    categories67.each do | category|
      parent_id67.children.create!(name: category)
    end
    categories68.each do | category|
      parent_id68.children.create!(name: category)
    end
    categories69.each do | category|
      parent_id69.children.create!(name: category)
    end
    categories70.each do | category|
      parent_id70.children.create!(name: category)
    end
    categories71.each do | category|
      parent_id71.children.create!(name: category)
    end
    categories72.each do | category|
      parent_id72.children.create!(name: category)
    end
    categories73.each do | category|
      parent_id73.children.create!(name: category)
    end
    # categories74.each do | category|
    #   parent_id74.children.create!(name: category)
    # end
    categories75.each do | category|
      parent_id75.children.create!(name: category)
    end
    categories76.each do | category|
      parent_id76.children.create!(name: category)
    end
    categories77.each do | category|
      parent_id77.children.create!(name: category)
    end
    categories78.each do | category|
      parent_id78.children.create!(name: category)
    end
    categories79.each do | category|
      parent_id79.children.create!(name: category)
    end
    categories80.each do | category|
      parent_id80.children.create!(name: category)
    end
    categories81.each do | category|
      parent_id81.children.create!(name: category)
    end
    categories82.each do | category|
      parent_id82.children.create!(name: category)
    end
    categories83.each do | category|
      parent_id83.children.create!(name: category)
    end
    
    categories84.each do | category|
      parent_id84.children.create!(name: category)
    end
    categories85.each do | category|
      parent_id85.children.create!(name: category)
    end
    categories86.each do | category|
      parent_id86.children.create!(name: category)
    end
    categories87.each do | category|
      parent_id87.children.create!(name: category)
    end
    categories88.each do | category|
      parent_id88.children.create!(name: category)
    end
    categories89.each do | category|
      parent_id89.children.create!(name: category)
    end
    categories90.each do | category|
      parent_id90.children.create!(name: category)
    end
    categories91.each do | category|
      parent_id91.children.create!(name: category)
    end
    categories92.each do | category|
      parent_id92.children.create!(name: category)
    end
    categories93.each do | category|
      parent_id93.children.create!(name: category)
    end
    categories94.each do | category|
      parent_id94.children.create!(name: category)
    end
    categories95.each do | category|
      parent_id95.children.create!(name: category)
    end
    categories96.each do | category|
      parent_id96.children.create!(name: category)
    end
    categories97.each do | category|
      parent_id97.children.create!(name: category)
    end
    categories98.each do | category|
      parent_id98.children.create!(name: category)
    end
    categories99.each do | category|
      parent_id99.children.create!(name: category)
    end
    categories100.each do | category|
      parent_id100.children.create!(name: category)
    end
    categories101.each do | category|
      parent_id101.children.create!(name: category)
    end
    categories102.each do | category|
      parent_id102.children.create!(name: category)
    end
    categories103.each do | category|
      parent_id103.children.create!(name: category)
    end
    categories104.each do | category|
      parent_id104.children.create!(name: category)
    end
    categories106.each do | category|
      parent_id106.children.create!(name: category)
    end
    categories107.each do | category|
      parent_id107.children.create!(name: category)
    end
    categories108.each do | category|
      parent_id108.children.create!(name: category)
    end
    categories109.each do | category|
      parent_id109.children.create!(name: category)
    end
    categories110.each do | category|
      parent_id110.children.create!(name: category)
    end
    categories111.each do | category|
      parent_id111.children.create!(name: category)
    end
    categories112.each do | category|
      parent_id112.children.create!(name: category)
    end
    categories113.each do | category|
      parent_id113.children.create!(name: category)
    end
    categories114.each do | category|
      parent_id114.children.create!(name: category)
    end
    categories115.each do | category|
      parent_id115.children.create!(name: category)
    end
    categories116.each do | category|
      parent_id116.children.create!(name: category)
    end
    categories117.each do | category|
      parent_id117.children.create!(name: category)
    end
    categories118.each do | category|
      parent_id118.children.create!(name: category)
    end
    categories119.each do | category|
      parent_id119.children.create!(name: category)
    end
    categories120.each do | category|
      parent_id120.children.create!(name: category)
    end
    categories121.each do | category|
      parent_id121.children.create!(name: category)
    end
    categories122.each do | category|
      parent_id122.children.create!(name: category)
    end
    categories123.each do | category|
      parent_id123.children.create!(name: category)
    end
    categories124.each do | category|
      parent_id124.children.create!(name: category)
    end
    categories125.each do | category|
      parent_id125.children.create!(name: category)
    end
    categories126.each do | category|
      parent_id126.children.create!(name: category)
    end
    categories127.each do | category|
      parent_id127.children.create!(name: category)
    end
    categories128.each do | category|
      parent_id128.children.create!(name: category)
    end
    categories129.each do | category|
      parent_id129.children.create!(name: category)
    end
    categories130.each do | category|
      parent_id130.children.create!(name: category)
    end
    categories131.each do | category|
      parent_id131.children.create!(name: category)
    end
    categories132.each do | category|
      parent_id132.children.create!(name: category)
    end
    
    # categories134.each do | category|
    #   parent_id134.children.create!(name: category)
    # end
    categories135.each do | category|
      parent_id135.children.create!(name: category)
    end
    categories136.each do | category|
      parent_id136.children.create!(name: category)
    end
    categories137.each do | category|
      parent_id137.children.create!(name: category)
    end
    categories138.each do | category|
      parent_id138.children.create!(name: category)
    end
    categories139.each do | category|
      parent_id139.children.create!(name: category)
    end
    categories140.each do | category|
      parent_id140.children.create!(name: category)
    end
    
    # categories142.each do | category|
    #   parent_id142.children.create!(name: category)
    # end
    categories143.each do | category|
      parent_id143.children.create!(name: category)
    end
    categories144.each do | category|
      parent_id144.children.create!(name: category)
    end
    categories145.each do | category|
      parent_id145.children.create!(name: category)
    end
    categories146.each do | category|
      parent_id146.children.create!(name: category)
    end
    # categories147.each do | category|
    #   parent_id147.children.create!(name: category)
    # end
    categories148.each do | category|
      parent_id148.children.create!(name: category)
    end
    categories149.each do | category|
      parent_id149.children.create!(name: category)
    end
    # categories150.each do | category|
    #   parent_id150.children.create!(name: category)
    # end
    categories151.each do | category|
      parent_id151.children.create!(name: category)
    end
    categories152.each do | category|
      parent_id152.children.create!(name: category)
    end
    categories153.each do | category|
      parent_id153.children.create!(name: category)
    end
    categories154.each do | category|
      parent_id154.children.create!(name: category)
    end
    categories155.each do | category|
      parent_id155.children.create!(name: category)
    end
    categories156.each do | category|
      parent_id156.children.create!(name: category)
    end
    categories157.each do | category|
      parent_id157.children.create!(name: category)
    end

Item.create!(
  name: 'テスト太郎',
  description: 'https://tech-master.s3.amazonaws.com/uploads/curriculums/images/Rails1-4/sample.jpg',
  status: 1,
  shipping_fee: 1,
  how_to_shipping: 1,
  area: 1,
  day: 1,
  price: 1000,
  brand_id: 1,
  category_id: 3

)
Item.create!(
  name: 'テスト太郎',
  description: 'https://tech-master.s3.amazonaws.com/uploads/curriculums/images/Rails1-4/sample.jpg',
  status: 1,
  shipping_fee: 1,
  how_to_shipping: 1,
  area: 1,
  day: 1,
  price: 1000,
  brand_id: 2,
  category_id: 7


)
Item.create!(
  name: 'テスト太郎',
  description: 'https://tech-master.s3.amazonaws.com/uploads/curriculums/images/Rails1-4/sample.jpg',
  status: 1,
  shipping_fee: 1,
  how_to_shipping: 1,
  area: 1,
  day: 1,
  price: 1000,
  brand_id: 2,
  category_id: 4
)
Item.create!(
  name: 'テスト太郎',
  description: 'https://tech-master.s3.amazonaws.com/uploads/curriculums/images/Rails1-4/sample.jpg',
  status: 1,
  shipping_fee: 1,
  how_to_shipping: 1,
  area: 1,
  day: 1,
  price: 1000,
  brand_id: 4,
  category_id: 2
)
Item.create!(
  name: 'テスト太郎',
  description: 'https://tech-master.s3.amazonaws.com/uploads/curriculums/images/Rails1-4/sample.jpg',
  status: 1,
  shipping_fee: 1,
  how_to_shipping: 1,
  area: 1,
  day: 1,
  price: 1000,
  brand_id: 1,
  category_id: 1
) 
