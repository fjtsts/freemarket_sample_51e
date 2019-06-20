## users table
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|mail|string|null: false, unique: true|
|password|string|null: false|
### Association
- has_one :user_profile, dependent: :destroy
- has_one :address, dependent: :destroy
- has_one :card, dependent: :destroy
- has_many :exhibits, dependent: :destroy
- has_many :purchases, dependent: :destroy
- has_many :reviews
- has_many :favorite_items, dependent: :destroy

## user_profiles table
|Column|Type|Options|
|------|----|-------|
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kata|string|null: false|
|first_name_kata|string|null: false|
|birth_year|date|null: false|
|birth_month|date|null: false|
|birth_day|date|null: false|
|tel|string|null: false|
|avatar|string|null: true|
|introduction|text|null: true|
|user_id|reference|null: false,foregin_key: true|
### Association
- belongs_to :user

## addresses table
|Column|Type|Options|
|------|----|-------|
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kata|string|null: false|
|first_name_kata|string|null: false|
|postal_code|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|town_number|string|null: false|
|building|string|null: true|
|tel|string|null: true|
|user_id|reference|null: false,foregin_key: true|
### Association
- belongs_to :user

## cards table
|Column|Type|Options|
|------|----|-------|
|user_id|reference|null: false, references:user, foregin_key: true|
|customer_id|string|null: false|
|card_id|string|null: false|
### Association
- belongs_to :user

## exhibits table
|Column|Type|Options|
|------|----|-------|
|status|string|null: false|
|user_id|reference|null: false, references:user, foregin_key: true|
|item_id|reference|null: false, references:item, foregin_key: true|
### Association
- belongs_to :user
- belongs_to :item

## purchases table
|Column|Type|Options|
|------|----|-------|
|user_id|reference|null: false, references:user, foregin_key: true|
|item_id|reference|null: false, references:item, foregin_key: true|
### Association
- belongs_to :user
- belongs_to :item

## reviews table
|Column|Type|Options|
|------|----|-------|
|status|string|null: false|
|content|text|null: true|
|user_id|reference|null: false,foregin_key: true|
### Association
- belongs_to :user
- belongs_to :item

## favorite_items table
|Column|Type|Options|
|------|----|-------|
|item_id|reference|null: false,foregin_key: true|
|user_id|reference|null: false,foregin_key: true|
### Association
- belongs_to :user
- belongs_to :item

## items
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|description|text|null: false|
|status|enum|null: false|
|shipping_fee|string|null: false|
|how_to_shipping|string|null: false|
|day|integer|null: false|
|price|integer|null: false|
|brand_id|reference|null: false|
|category_id|reference|null: false|
|prefecture_id|integer|null: false|
|size_id|integer|null: false|
|favorite_items_count|integer|null: false|
### Association
- has_many    :item_images, dependent: :delete_all
- belongs_to  :category,optional: true
- belongs_to  :brand,optional: true
- has_one     :exhibit, dependent: :destroy
- has_many    :comments, dependent: :destroy
- has_one     :purchases
- belongs_to  :size
- has_one     :review
- has_many    :favorite_items, dependent: :destroy

## item_images
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|item_id|reference|null: false,foregin_key: true|
### Association
- belongs_to :item

## categories
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|ancestry|string|
### Association
- has_many :items
- has_ancestry

## sizes
|Column|Type|Options|
|------|----|-------|
|name|sting|null: false|
### Association
- has_many :items

## brands
|Column|Type|Options|
|------|----|-------|
|name|sting|null: false, index: true|
### Association
- has_many :items

## comments
|Column|Type|Options|
|------|----|-------|
|content|text|null: false|
|user_id|reference|null: false, references:user, foregin_key: true|
|item_id|reference|null: false, references:item, foregin_key: true|
### Association
- belongs_to :user
- belongs_to :item

## favorite_items
|Column|Type|Options|
|------|----|-------|
|user_id|reference|null: false, references:user, foregin_key: true|
|item_id|reference|null: false, references:item, foregin_key: true|
### Association
- belongs_to :user
- belongs_to :item

## reviews
|Column|Type|Options|
|------|----|-------|
|status|integer|null: false|
|content|text|null: false|
|user_id|reference|null: false, references:user, foregin_key: true|
|item_id|reference|null: false, references:item, foregin_key: true|
### Association
- belongs_to :user
- belongs_to :item
