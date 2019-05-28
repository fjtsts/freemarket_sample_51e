## users table
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|mail|string|null: false, unique: true|
|password|string|null: false|
### Association
- has_many :reviews
- has_many :exhibits, dependent: :destroy
- has_many :purchases, dependent: :destroy
- has_many :comments
- has_many :favorite_items, dependent: :destroy
- has_one :user_profile, dependent: :destroy
- has_one :addresse, dependent: :destroy

## user_profiles
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

## review table
|Column|Type|Options|
|------|----|-------|
|status|string|null: false|
|content|text|null: true|
|user_id|reference|null: false,foregin_key: true|
### Association
- belongs_to :user

## items
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|description|text|null: false|
|status|string|null: false|
|shipping_fee|string|null: false|
|area|string|null: false|
|day|date|null: false|
|price|int|null: false|
### Association
- has_many :item_images
- has_many :item_categories
- has_many :categories, through: :item_categories
- has_many :exhibits, dependent: :destroy
- has_many :purchases
- has_many :comments, dependent: :destroy
- has_many :favorite_items, dependent: :destroy

## item_images
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|item_id|reference|null: false,foregin_key: true|
### Association
- belongs_to :item

## item_categories
|Column|Type|Options|
|------|----|-------|
|item_id|reference|null: false, references:item, foregin_key: true|
|category_id|reference|null: false, references:category, foregin_key: true|
### Association
- belongs_to :item
- belongs_to :category

## categories
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|parent_id|int|null: true|
### Association
- has_many :items, through: :item_categories
- has_many :sizes
- has_many :brands

## sizes
|Column|Type|Options|
|------|----|-------|
|name|sting|null: false|
|category_id|reference|null: false,foregin_key: true|
### Association
- belongs_to :category

## brands
|Column|Type|Options|
|------|----|-------|
|name|sting|null: false, index: true|
|category_id|reference|null: false,foregin_key: true|
### Association
- belongs_to :category

## exhibits
|Column|Type|Options|
|------|----|-------|
|status|string|null: false|
|user_id|reference|null: false, references:user, foregin_key: true|
|item_id|reference|null: false, references:item, foregin_key: true|
### Association
- belongs_to :user
- belongs_to :item

## purchases
|Column|Type|Options|
|------|----|-------|
|user_id|reference|null: false, references:user, foregin_key: true|
|item_id|reference|null: false, references:item, foregin_key: true|
### Association
- belongs_to :user
- belongs_to :item

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
