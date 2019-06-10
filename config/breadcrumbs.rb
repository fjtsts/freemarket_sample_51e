crumb :root do
  link "メルカリ", root_path
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
  link "支払い方法", card_users_path
  parent :mypage
end


crumb :profile do
  link "プロフィール", edit_user_profile_path
  parent :mypage
end

crumb :identification do
  link "本人情報の登録", edit_address_path
  parent :mypage
end

crumb :logout do
  link "ログアウト", logout_users_path
  parent :mypage
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
