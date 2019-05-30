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


Category.create!(
  name: 'レディース',
  parent_id: ""
)
Category.create!(
  name: 'メンズ',
  parent_id: ""
)
Category.create!(
  name: 'ベビー・キッズ',
  parent_id: ""
)
Category.create!(
  name: 'インテリア・住まい・小物',
  parent_id: ""
)
Category.create!(
  name: '本・音楽・ゲーム',
  parent_id: ""
)
Category.create!(
  name: 'おもちゃ・ホビー・グッズ',
  parent_id: ""
)
Category.create!(
  name: 'コスメ・香水・美容',
  parent_id: ""
)

Category.create!(
  name: '家電・スマホ・カメラ',
  parent_id: ""
)
Category.create!(
  name: '',
  parent_id: ""
)
Category.create!(
  name: 'ハンドメイド',
  parent_id: ""
)
Category.create!(
  name: 'チケット',
  parent_id: ""
)
Category.create!(
  name: '自動車・オートバイ',
  parent_id: ""
)
Category.create!(
  name: 'その他',
  parent_id: ""
)
Category.create!(
  name: 'トップス',
  parent_id: 1
)
Category.create!(
  name: 'ジャケット/アウター',
  parent_id: 1
)
Category.create!(
  name: 'パンツ',
  parent_id: 1
)
Category.create!(
  name: 'スカート',
  parent_id: 1
)
Category.create!(
  name: 'ワンピース',
  parent_id: 1
)
Category.create!(
  name: '靴',
  parent_id: 1
)
Category.create!(
  name: 'ルームウェア/パジャマ',
  parent_id: 1
)
Category.create!(
  name: 'レッグウェア',
  parent_id: 1
)
Category.create!(
  name: '帽子',
  parent_id: 1
)
Category.create!(
  name: 'バッグ',
  parent_id: 1
)
Category.create!(
  name: 'アクセサリー',
  parent_id: 1
)
Category.create!(
  name: 'ヘアアクセサリー',
  parent_id: 1
)
Category.create!(
  name: '小物',
  parent_id: 1
)
Category.create!(
  name: '時計',
  parent_id: 1
)
Category.create!(
  name: 'ウィッグ/エクステ',
  parent_id: 1
)
Category.create!(
  name: '浴衣/..水着',
  parent_id: 1
)
Category.create!(
  name: 'スーツ/フォーマル/ドレス',
  parent_id: 1
)
Category.create!(
  name: 'マタニティー',
  parent_id: 1
)
Category.create!(
  name: 'その他',
  parent_id: 1
)
Category.create!(
  name: 'トップス',
  parent_id: 2
)
Category.create!(
  name: 'ジャケット/アウター',
  parent_id: 2
)
Category.create!(
  name: 'パンツ',
  parent_id: 2
)
Category.create!(
  name: '靴',
  parent_id: 2
)
Category.create!(
  name: 'バッグ',
  parent_id: 2
)
Category.create!(
  name: 'スーツ',
  parent_id: 2
)
Category.create!(
  name: '帽子',
  parent_id: 2
)
Category.create!(
  name: 'アクセサリー',
  parent_id: 2
)
Category.create!(
  name: '小物',
  parent_id: 2
)
Category.create!(
  name: '時計',
  parent_id: 2
)
Category.create!(
  name: '水着',
  parent_id: 2
)
Category.create!(
  name: 'レッグウェア',
  parent_id: 2
)
Category.create!(
  name: 'アンダーウェア',
  parent_id: 2
)
Category.create!(
  name: 'その他',
  parent_id: 2
)
Category.create!(
  name: 'ベビー服（女の子用）~95cm',
  parent_id: 3
)
Category.create!(
  name: 'ベビー服（男の子用）~95cm',
  parent_id: 3
)
Category.create!(
  name: 'ベビー服（男女兼用）~95cm',
  parent_id: 3
)
Category.create!(
  name: 'ベビー服（女の子用）~100cm',
  parent_id: 3
)
Category.create!(
  name: 'ベビー服(男の子用）~100cm',
  parent_id: 3
)
Category.create!(
  name: 'ベビー服(男女兼用）~100cm',
  parent_id: 3
)
Category.create!(
  name: 'キッズ靴',
  parent_id: 3
)
Category.create!(
  name: '子供用ファッション小物',
  parent_id: 3
)
Category.create!(
  name: 'おむつ/トイレ/バス',
  parent_id: 3
)
Category.create!(
  name: '外出/移動用品',
  parent_id: 3
)
Category.create!(
  name: '授乳/ 食事/室内用品',
  parent_id: 3
)
Category.create!(
  name: 'ベビー家具/寝具/室内用品',
  parent_id: 3
)
Category.create!(
  name: 'おもちゃ',
  parent_id: 3
)
Category.create!(
  name: '行事/記念品',
  parent_id: 3
)
Category.create!(
  name: 'その他',
  parent_id: 3
)
Category.create!(
  name: 'キッチン/食器',
  parent_id: 4
)
Category.create!(
  name: 'ベッド/ソファベッド',
  parent_id: 4
)
Category.create!(
  name: '椅子/チェアー',
  parent_id: 4
)
Category.create!(
  name: '机/テーブル',
  parent_id: 4
)
Category.create!(
  name: '収納家具',
  parent_id: 4
)
Category.create!(
  name: 'ラグ／カーペット/マット',
  parent_id: 4
)
Category.create!(
  name: 'カーテン/ブラインド',
  parent_id: 4
)
Category.create!(
  name: 'ライト/証明',
  parent_id: 4
)
Category.create!(
  name: '寝具',
  parent_id: 4
)
Category.create!(
  name: 'インテリア小物',
  parent_id: 4
)
Category.create!(
  name: '季節/年中行事',
  parent_id: 4
)
Category.create!(
  name: 'その他',
  parent_id: 4
)
Category.create!(
  name: '本',
  parent_id: 5
)
Category.create!(
  name: '漫画',
  parent_id: 5
)
Category.create!(
  name: '雑誌',
  parent_id: 5
)
Category.create!(
  name: 'CD',
  parent_id: 5
)
Category.create!(
  name: 'DVD/ブルーレイ',
  parent_id: 5
)
Category.create!(
  name: 'レコード',
  parent_id: 5
)
Category.create!(
  name: 'テレビゲーム',
  parent_id: 5
)
Category.create!(
  name: 'おもちゃ',
  parent_id: 6
)
Category.create!(
  name: 'タレントグッズ',
  parent_id: 6
)
Category.create!(
  name: 'コミック/アニメグッズ',
  parent_id: 6
)
Category.create!(
  name: 'トレーディングカード',
  parent_id: 6
)
Category.create!(
  name: 'フィギュア',
  parent_id: 6
)
Category.create!(
  name: '楽器/器材',
  parent_id: 6
)
Category.create!(
  name: 'コレクション',
  parent_id: 6
)
Category.create!(
  name: 'ミリタリー',
  parent_id: 6
)
Category.create!(
  name: '美術品',
  parent_id: 6
)
Category.create!(
  name: 'アート用品',
  parent_id: 6
)
Category.create!(
  name: 'その他',
  parent_id: 6
)
Category.create!(
  name: 'ベースメイク',
  parent_id: 7
)
Category.create!(
  name: 'メイクアップ',
  parent_id: 7
)
Category.create!(
  name: 'ネイルケア',
  parent_id: 7
)
  Category.create!(
    name: '香水',
    parent_id: 7
)
Category.create!(
  name: 'スキンケア/基礎化粧品',
  parent_id: 7
)
Category.create!(
  name: 'ヘアケア',
  parent_id: 7
)
Category.create!(
  name: 'ボディケア',
  parent_id: 7
)
Category.create!(
  name: 'オーラルケア',
  parent_id: 7
)
Category.create!(
  name: 'リラクゼーション',
  parent_id: 7
)
Category.create!(
  name: 'ダイエット',
  parent_id: 7
)
Category.create!(
  name: 'その他',
  parent_id: 7
)
Category.create!(
  name: 'スマートフォン/携帯電話',
  parent_id: 8
)
Category.create!(
  name: 'スマホアクセサリー',
  parent_id: 8
)
Category.create!(
  name: 'pc/タブレット',
  parent_id: 8
)
Category.create!(
  name: 'カメラ',
  parent_id: 8
)
Category.create!(
  name: 'テレビ/映像機器',
  parent_id: 8
)
Category.create!(
  name: 'オーディオ機器',
  parent_id: 8
)
Category.create!(
  name: '美容/健康',
  parent_id: 8
)
Category.create!(
  name: '冷暖房/空調',
  parent_id: 8
)
Category.create!(
  name: '生活家電',
  parent_id: 8
)
Category.create!(
  name: 'その他',
  parent_id: 8
)
Category.create!(
  name: 'ゴルフ',
  parent_id: 9
)
Category.create!(
  name: 'フィッシング',
  parent_id: 9
)
Category.create!(
  name: '自転車',
  parent_id: 9
)
Category.create!(
  name: 'トレーニング/エクササイズ',
  parent_id: 9
)
Category.create!(
  name: '野球',
  parent_id: 9
)
Category.create!(
  name: 'サッカー/フットサル',
  parent_id: 9
)
Category.create!(
  name: 'テニス',
  parent_id: 9
)
Category.create!(
  name: 'スノーボード',
  parent_id: 9
)
Category.create!(
  name: 'スキー',
  parent_id: 9
)
Category.create!(
  name: 'その他のスポーツ',
  parent_id: 9
)
Category.create!(
  name: 'アウトドア',
  parent_id: 9
)
Category.create!(
  name: 'その他',
  parent_id: 9
)
Category.create!(
  name: 'アクセサリー(女性用)',
  parent_id: 10
)
Category.create!(
  name: 'ファッション/小物',
  parent_id: 10
)
Category.create!(
  name: 'アクセサリー/時計',
  parent_id: 10
)
Category.create!(
  name: '日用品/インテリア',
  parent_id: 10
)
Category.create!(
  name: '趣味/おもちゃ',
  parent_id: 10
)
Category.create!(
  name: 'キッズ/ベビー',
  parent_id: 10
)
Category.create!(
  name: '素材/材料',
  parent_id: 10
)
Category.create!(
  name: '二次創作',
  parent_id: 10
)
Category.create!(
  name: 'その他',
  parent_id: 10
)
Category.create!(
  name: '音楽',
  parent_id: 11
)
Category.create!(
  name: 'スポーツ',
  parent_id: 11
)
Category.create!(
  name: '演劇/芸能',
  parent_id: 11
)
Category.create!(
  name: 'イベント',
  parent_id: 11
)
Category.create!(
  name: '映画',
  parent_id: 11
)
Category.create!(
  name: '施設利用券',
  parent_id: 11
)
Category.create!(
  name: '優待券',
  parent_id: 11
)
Category.create!(
  name: 'その他',
  parent_id: 11
)
Category.create!(
  name: '自動車本体',
  parent_id: 12
)
Category.create!(
  name: '自動車タイヤ/ホイール',
  parent_id: 12
)
Category.create!(
  name: '自動車パーツ',
  parent_id: 12
)
Category.create!(
  name: '自動車アクセサリー',
  parent_id: 12
)
Category.create!(
  name: 'オートバイ本体',
  parent_id: 12
)
Category.create!(
  name: 'オートバイパーツ',
  parent_id: 12
)
Category.create!(
  name: 'オートバイアクセアリー',
  parent_id: 12
)
Category.create!(
  name: 'まとめ売り',
  parent_id: 13
)
Category.create!(
  name: 'ペット用品',
  parent_id: 13
)
Category.create!(
  name: '食品',
  parent_id: 13
)
Category.create!(
  name: '飲料/酒',
  parent_id: 13
)
Category.create!(
  name: '日用品/生活雑貨/旅行',
  parent_id: 13
)
Category.create!(
  name: 'アンティーク/コレクション',
  parent_id: 13
)
Category.create!(
  name: '文房具/事務用品',
  parent_id: 13
)
Category.create!(
  name: '事務/店舗用品',
  parent_id: 13
)
Category.create!(
  name: 'その他',
  parent_id: 13
)



    categories14 = %w{
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
  categories74 = %w{
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
  categories75 = %w{
    全巻セット
    少年漫画
    少女漫画
    青年漫画
    女性漫画
    同人誌
    その他
  }
  categories76 = %w{
    アート/エンタメ/ホービー
    ファッション
    ニュース/総合
    趣味/スポーツ
    その他
  }
  categories77 = %w{
    邦楽
    洋楽
    アニメ
    クラシック
    KPOP/アジア
    キッズ/ファミリー
    その他
  }
  categories78 = %w{
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
  categories79 = %w{
    邦楽
    洋楽
    その他

  }
  categories80 = %w{
    家庭用ゲーム本体
    家庭用ゲームソフト
    携帯用ゲーム本体
    携帯用ゲームソフト
    PCゲーム
    その他
  }
  categories81 = %w{
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
  categories82 = %w{
    アイドル
    ミュージシャン
    タレント/お笑い芸人
    スポーツ選手
    その他

  }
  categories83 = %w{
    ストラップ
    キーホルダー
    バッジ
    カード
    クリアファイル
    ポスター
    タオル
    その他
  }
    

categories84 = %w{
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
categories85 = %w{
  コミック/アニメ
  特撮
  ゲームキャラクター
  SF/ファンタジー/ホラー
  アメコミ
  ミリタリー
  その他

}
categories86 = %w{
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
categories87 = %w{
  武具
  使用済切手/官製はがき
  旧貨幣/金貨/銀貨/記念硬貨
  印刷物
  ノベルティーグッズ
  その他
}
categories88 = %w{
  トイガン
  個人装備
  その他
}
categories89 = %w{
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
categories90 = %w{
  画材
  額縁
  その他
}
categories91 = %w{
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
categories92 = %w{
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
categories93 = %w{
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
categories94 = %w{
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
categories95 = %w{
  香水(女性用)
  香水(男性用)
  ユニセックス
  ボディミスト
  その他
}
categories96 = %w{
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
categories97 = %w{
  シャンプー
  トリートメント
  スタイリング剤
  カラーリング剤
  ブラシ
  その他
}
categories98 = %w{
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
categories99 = %w{
  口臭予防/エチケット用品
  歯ブラシ
  その他
}
categories100 = %w{
  エッセンシャルオイル
  芳香剤
  お香/香炉
  キャンドル
  リラクゼーション
  その他
}
categories101 = %w{
  ダイエット食品
  エクササイズ用品
  体重計
  体脂肪計
  その他
}
categories102 = %w{
  健康用品
  看護/介護用品
  救急/衛生用品
  その他
}
categories103 = %w{
  スマートホン本体
  バッテリー/充電器
  携帯電話本体
  PHS本体
  その他
}
categories104 = %w{
  Andoroid用ケース
  iphone用ケース
  カバー
  イヤホンジャック
  ストラップ
  フィルム
  自撮り棒
  その他

}
categories105 = %w{
  タブレット
  ノートPC
  デスクトップ型PC
  ディスプレイ
  電子ブックリーダー
  PC周辺機器
  PCパーツ
  その他
}
categories106 = %w{
  デジタルカメラ
  ビデオカメラ
  レンズ(単焦点)
  レンズ(ズーム)
  フィルムカメラ
  防犯カメラ
  その他
}
categories107 = %w{
  テレビ
  プロジェクター
  ブルーレイレコーダー
  DVDレコーダー
  ブルーレイプレーヤー
  DVDプレイヤー
  映像用ケーブル
  その他

}
categories108 = %w{
  ポータブルプレーヤー
  イヤホン
  ヘッドホン
  アンプ
  ケーブル/シールド
  ラジオ
  その他
}
categories109 = %w{
  ヘアドライヤー
  ヘアアイロン
  美容機器
  電気シェーバー
  電気ブラシ
  その他
}
categories110 = %w{
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
categories111 = %w{
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
categories112 = %w{
  その他
}
categories113 = %w{
  クラブ
  ウエア(男性用)
  ウエア(女性用)
  バッグ
  シューズ(男性用)
  シューズ(女性用)
  アクセサリー
  その他

}
categories114 = %w{
  ロッド
  リール
  ルアー
  ウエア
  釣り糸/ライン
  その他

}
categories115 = %w{
  自転車本体
  ウェア
  パーツ
  アクセサリー
  バッグ
  工具/メンテナンス
  その他
}
categories116 = %w{
  ランニング
  ウオーキング
  ヨガ
  トレーニング
  その他
}
categories117 = %w{
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
categories118 = %w{
  ウェア
  シューズ
  ボール
  アクセサリー
  記念グッズ
  応援グッズ
  その他
}
categories119 = %w{
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
categories120 = %w{
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
categories121 = %w{
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
categories122 = %w{
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
categories123 = %w{
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
categories124 = %w{
  旅行用品
  その他
}
categories125 = %w{
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
categories126 = %w{
  バッグ(女性用)
  バッグ(男性用)
  財布(女性用)
  財布(男性用)
  ファッション雑貨
  その他
}
categories127 = %w{
  アクセサリー(男性用)
  時計(女性用)
  時計(男性用)
  その他
}
categories128 = %w{
  キッチン用品
  家具
  文房具
  アート/写真
  アロマ/キャンドル
  フラワー/ガーデン
  その他
  
}
categories129 = %w{
  クラフト/布製品
  おもちゃ/人形
  その他
  
}
categories130 = %w{
  ファッション雑貨
  スタイ/よだれかけ
  外出用品
  ネームタグ
  その他
}
categories131 = %w{
  各種パーツ
  生地/糸
  型紙/パターン
  その他
}
categories132 = %w{
  Ingress
  クリエイターズ宇宙兄弟
  その他
}
categories134 = %w{
  男性アイドル
  女性アイドル
  韓流
  国内アーティスト
  海外アーティスト
  音楽フェス
  声優/アニメ
  その他
}
categories135 = %w{
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
categories136 = %w{
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
categories137 = %w{
  声優/アニメ
  キッズ/ファミリー
  トークショー/講演会
  その他
}
categories138 = %w{
  邦画
  洋画
  その他
}
categories139 = %w{
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
categories140 = %w{
  ショッピング
  レストラン/食事券
  フード/ドリンク券
  宿泊券
  その他
}
categories142 = %w{
  国内車体
  外国車体
}
categories143 = %w{
  タイヤ/ホイールセット
  タイヤ
  ホイール
  その他
}
categories144 = %w{
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
categories145 = %w{
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
categories146 = %w{
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
categories147 = %w{
  ヘルメット/シールド
  バイクウエア/装備
  アクセサリー
  メンテナンス
  カタログ/マニュアル
  その他
}
categories148 = %w{
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
categories149 = %w{
  菓子
  米
  野菜
  果物
  調味料
  魚介類(加工食品)
  肉類(加工食品)
  その他
}
  categories150 = %w{
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
categories151 = %w{
  タオル/バス用品
  日用品/生活雑貨
  洗剤/柔軟剤
  旅行用品
  防災関連グッズ
  その他
}
categories152 =%w{
  雑貨
  工芸品
  家具
  印刷分
  その他
}
categories153 =%w{
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
categories154 = %w{
  オフィス用品
  オフィス家具
  店舗用品
  OA機器
  ラッピング/包装
  その他

}

  
    categories14.each do | category|
     Category.create!(name: category,parent_id: 14)
    end
    categories15.each do | category|
      Category.create!(name: category,parent_id:15)
    end
    categories16.each do | category|
      Category.create!(name: category,parent_id:16)
    end
    categories17.each do | category|
      Category.create!(name: category,parent_id:17)
    end
    categories18.each do | category|
      Category.create!(name: category,parent_id:18)
    end
    categories19.each do | category|
      Category.create!(name: category,parent_id:19)
    end
    categories20.each do | category|
      Category.create!(name: category,parent_id:20)
    end
    categories21.each do | category|
      Category.create!(name: category,parent_id:21)
    end
    categories22.each do | category|
      Category.create!(name: category,parent_id:22)
    end
    categories23.each do | category|
      Category.create!(name: category,parent_id:23)
    end
    categories24.each do | category|
      Category.create!(name: category,parent_id:24)
    end
    categories25.each do | category|
      Category.create!(name: category,parent_id:25)
    end
    categories26.each do | category|
      Category.create!(name: category,parent_id:26)
    end
    categories27.each do | category|
      Category.create!(name: category,parent_id:27)
    end
    categories28.each do | category|
      Category.create!(name: category,parent_id:28)
    end
    categories29.each do | category|
      Category.create!(name: category,parent_id:29)
    end
    categories30.each do | category|
      Category.create!(name: category,parent_id:30)
    end
    categories31.each do | category|
      Category.create!(name: category,parent_id:31)
    end
    categories32.each do | category|
      Category.create!(name: category,parent_id:32)
    end
    categories33.each do | category|
      Category.create!(name: category,parent_id:33)
    end
    categories34.each do | category|
      Category.create!(name: category,parent_id:34)
    end
    categories35.each do | category|
      Category.create!(name: category,parent_id:35)
    end
    categories36.each do | category|
      Category.create!(name: category,parent_id:36)
    end
    categories37.each do | category|
      Category.create!(name: category,parent_id:37)
    end
    categories38.each do | category|
      Category.create!(name: category,parent_id:38)
    end
    categories39.each do | category|
      Category.create!(name: category,parent_id:39)
    end
    categories40.each do | category|
      Category.create!(name: category,parent_id:40)
    end
    categories41.each do | category|
      Category.create!(name: category,parent_id:41)
    end
    categories42.each do | category|
      Category.create!(name: category,parent_id:42)
    end
    categories43.each do | category|
      Category.create!(name: category,parent_id:43)
    end
    categories44.each do | category|
      Category.create!(name: category,parent_id:44)
    end
    categories45.each do | category|
      Category.create!(name: category,parent_id:45)
    end
    
    categories47.each do | category|
      Category.create!(name: category,parent_id:47)
    end
    categories48.each do | category|
      Category.create!(name: category,parent_id:48)
    end
    categories49.each do | category|
      Category.create!(name: category,parent_id:49)
    end
    categories50.each do | category|
      Category.create!(name: category,parent_id:50)
    end
    categories51.each do | category|
      Category.create!(name: category,parent_id:51)
    end
    categories52.each do | category|
      Category.create!(name: category,parent_id:52)
    end
    categories53.each do | category|
      Category.create!(name: category,parent_id:53)
    end
    categories54.each do | category|
      Category.create!(name: category,parent_id:54)
    end
    categories55.each do | category|
      Category.create!(name: category,parent_id:55)
    end
    categories56.each do | category|
      Category.create!(name: category,parent_id:56)
    end
    categories57.each do | category|
      Category.create!(name: category,parent_id:57)
    end
    categories58.each do | category|
      Category.create!(name: category,parent_id:58)
    end
    categories59.each do | category|
      Category.create!(name: category,parent_id:59)
    end
    categories60.each do | category|
      Category.create!(name: category,parent_id:60)
    end
    categories61.each do | category|
      Category.create!(name: category,parent_id:61)
    end
    categories62.each do | category|
      Category.create!(name: category,parent_id:62)
    end
    categories63.each do | category|
      Category.create!(name: category,parent_id:63)
    end
    categories64.each do | category|
      Category.create!(name: category,parent_id:64)
    end
    categories65.each do | category|
      Category.create!(name: category,parent_id:65)
    end
    categories66.each do | category|
      Category.create!(name: category,parent_id:66)
    end
    categories67.each do | category|
      Category.create!(name: category,parent_id:67)
    end
    categories68.each do | category|
      Category.create!(name: category,parent_id:68)
    end
    categories69.each do | category|
      Category.create!(name: category,parent_id:69)
    end
    categories70.each do | category|
      Category.create!(name: category,parent_id:70)
    end
    categories71.each do | category|
      Category.create!(name: category,parent_id:71)
    end
    categories72.each do | category|
      Category.create!(name: category,parent_id:72)
    end
    categories73.each do | category|
      Category.create!(name: category,parent_id:73)
    end
    categories74.each do | category|
      Category.create!(name: category,parent_id:74)
    end
    categories75.each do | category|
      Category.create!(name: category,parent_id:75)
    end
    categories76.each do | category|
      Category.create!(name: category,parent_id:76)
    end
    categories77.each do | category|
      Category.create!(name: category,parent_id:77)
    end
    categories78.each do | category|
      Category.create!(name: category,parent_id:78)
    end
    categories79.each do | category|
      Category.create!(name: category,parent_id:79)
    end
    categories80.each do | category|
      Category.create!(name: category,parent_id:80)
    end
    categories81.each do | category|
      Category.create!(name: category,parent_id:81)
    end
    categories82.each do | category|
      Category.create!(name: category,parent_id:82)
    end
    categories83.each do | category|
      Category.create!(name: category,parent_id:83)
    end
    
    categories84.each do | category|
      Category.create!(name: category,parent_id:84)
    end
    categories85.each do | category|
      Category.create!(name: category,parent_id:85)
    end
    categories86.each do | category|
      Category.create!(name: category,parent_id:86)
    end
    categories87.each do | category|
      Category.create!(name: category,parent_id:87)
    end
    categories88.each do | category|
      Category.create!(name: category,parent_id:88)
    end
    categories89.each do | category|
      Category.create!(name: category,parent_id:89)
    end
    categories90.each do | category|
      Category.create!(name: category,parent_id:90)
    end
    categories91.each do | category|
      Category.create!(name: category,parent_id:91)
    end
    categories92.each do | category|
      Category.create!(name: category,parent_id:92)
    end
    categories93.each do | category|
      Category.create!(name: category,parent_id:93)
    end
    categories94.each do | category|
      Category.create!(name: category,parent_id:94)
    end
    categories95.each do | category|
      Category.create!(name: category,parent_id:95)
    end
    categories96.each do | category|
      Category.create!(name: category,parent_id:96)
    end
    categories97.each do | category|
      Category.create!(name: category,parent_id:97)
    end
    categories98.each do | category|
      Category.create!(name: category,parent_id:98)
    end
    categories99.each do | category|
      Category.create!(name: category,parent_id:99)
    end
    categories100.each do | category|
      Category.create!(name: category,parent_id:100)
    end
    categories101.each do | category|
      Category.create!(name: category,parent_id:101)
    end
    categories102.each do | category|
      Category.create!(name: category,parent_id:102)
    end
    categories103.each do | category|
      Category.create!(name: category,parent_id:103)
    end
    categories104.each do | category|
      Category.create!(name: category,parent_id:104)
    end
    categories105.each do | category|
      Category.create!(name: category,parent_id:105)
    end
    categories106.each do | category|
      Category.create!(name: category,parent_id:106)
    end
    categories107.each do | category|
      Category.create!(name: category,parent_id:107)
    end
    categories108.each do | category|
      Category.create!(name: category,parent_id:108)
    end
    categories109.each do | category|
      Category.create!(name: category,parent_id:109)
    end
    categories110.each do | category|
      Category.create!(name: category,parent_id:110)
    end
    categories111.each do | category|
      Category.create!(name: category,parent_id:111)
    end
    categories112.each do | category|
      Category.create!(name: category,parent_id:112)
    end
    categories113.each do | category|
      Category.create!(name: category,parent_id:113)
    end
    categories114.each do | category|
      Category.create!(name: category,parent_id:114)
    end
    categories115.each do | category|
      Category.create!(name: category,parent_id:115)
    end
    categories116.each do | category|
      Category.create!(name: category,parent_id:116)
    end
    categories117.each do | category|
      Category.create!(name: category,parent_id:117)
    end
    categories118.each do | category|
      Category.create!(name: category,parent_id:118)
    end
    categories119.each do | category|
      Category.create!(name: category,parent_id:119)
    end
    categories120.each do | category|
      Category.create!(name: category,parent_id:120)
    end
    categories121.each do | category|
      Category.create!(name: category,parent_id:121)
    end
    categories122.each do | category|
      Category.create!(name: category,parent_id:122)
    end
    categories123.each do | category|
      Category.create!(name: category,parent_id:123)
    end
    categories124.each do | category|
      Category.create!(name: category,parent_id:124)
    end
    categories125.each do | category|
      Category.create!(name: category,parent_id:125)
    end
    categories126.each do | category|
      Category.create!(name: category,parent_id:126)
    end
    categories127.each do | category|
      Category.create!(name: category,parent_id:127)
    end
    categories128.each do | category|
      Category.create!(name: category,parent_id:128)
    end
    categories129.each do | category|
      Category.create!(name: category,parent_id:129)
    end
    categories130.each do | category|
      Category.create!(name: category,parent_id:130)
    end
    categories131.each do | category|
      Category.create!(name: category,parent_id:131)
    end
    categories132.each do | category|
      Category.create!(name: category,parent_id:132)
    end
    
    categories134.each do | category|
      Category.create!(name: category,parent_id:134)
    end
    categories135.each do | category|
      Category.create!(name: category,parent_id:135)
    end
    categories136.each do | category|
      Category.create!(name: category,parent_id:136)
    end
    categories137.each do | category|
      Category.create!(name: category,parent_id:137)
    end
    categories138.each do | category|
      Category.create!(name: category,parent_id:138)
    end
    categories139.each do | category|
      Category.create!(name: category,parent_id:139)
    end
    categories140.each do | category|
      Category.create!(name: category,parent_id:140)
    end
    
    categories142.each do | category|
      Category.create!(name: category,parent_id:142)
    end
    categories143.each do | category|
      Category.create!(name: category,parent_id:143)
    end
    categories144.each do | category|
      Category.create!(name: category,parent_id:144)
    end
    categories145.each do | category|
      Category.create!(name: category,parent_id:145)
    end
    categories146.each do | category|
      Category.create!(name: category,parent_id:146)
    end
    categories147.each do | category|
      Category.create!(name: category,parent_id:147)
    end
    categories148.each do | category|
      Category.create!(name: category,parent_id:148)
    end
    categories149.each do | category|
      Category.create!(name: category,parent_id:149)
    end
    categories150.each do | category|
      Category.create!(name: category,parent_id:150)
    end
    categories151.each do | category|
      Category.create!(name: category,parent_id:151)
    end
    categories152.each do | category|
      Category.create!(name: category,parent_id:152)
    end
    categories153.each do | category|
      Category.create!(name: category,parent_id:153)
    end
    categories154.each do | category|
      Category.create!(name: category,parent_id:154)
    end
  






 
