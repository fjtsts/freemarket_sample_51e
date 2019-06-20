crumb :root do
  link "メルカリ", root_path
end


crumb :brands do
  link "ブランド一覧",brands_path
  parent :root
end 
crumb :brand do |brand|
  link"#{brand.name}",brand_path(brand.id)
  parent :brands
end
# user#index
crumb :users do 
  link "マイページ", users_path
  parent :root
end

# user#show
crumb :show_user do |user|
  link user.name, user
  parent :users
end
crumb :card do
  link "支払い方法", new_card_path(current_user.id)
  parent :users
end
crumb :edit_card do 
  link'発送元・お届け先住所変更',edit_address_path(current_user.id)
  parent :users
end



crumb :profile do
  link "プロフィール", edit_user_profile_path
  parent :mypage
end

crumb :identification do
  link "本人情報の登録", edit_address_path(current_user.id)
  parent :users
end

crumb :logout do
  link "ログアウト", logout_users_path
  parent :users
end

crumb :onsale do
  link "出品した商品", onsale_user_items_path(current_user)
  parent :mypage
end

crumb :phone do
  link "電話番号の確認", phone_users_path
  parent :mypage
end

# user#edit
crumb :edit_user do |user|
  link "Edit #{user.name}", edit_user_path(user)
  parent :show_user, user
end

# user#new
crumb :new_user do
  link "New User", new_user_path
  parent :users
end 
#categories#index
crumb :categories do
  link "カテゴリー一覧",categories_path
  parent :root
end
crumb :item do |item|
  link "#{item.name}",item_path(item.id )
  parent :root
end
crumb :category do |category|
  link category.name, category_path(category.id)
    if category.parent
      parent category.parent # inferred to :category
    else
      parent :categories
    end
end
crumb :search do |search|
  link "#{$query.conditions.first.values.first.value}",search_path
  parent :root
end
crumb :without_link do
  link "Breadcrumb without link"
end
crumb :exhibits do
link'出品した商品 - 出品中', exhibits_path
parent :users
end
crumb :sold do
  link "出品した商品 - 売却済み",sold_exhibits_path
  parent :users
end
crumb :purchased do
  link  "購入した商品 - 取引中",purchased_path
  parent :users
end
crumb :user_edit do
  link "プロフィール",edit_user_path(current_user)
  parent :users
end