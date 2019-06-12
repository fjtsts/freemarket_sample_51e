class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable
  
  has_one :user_profile, dependent: :destroy
  accepts_nested_attributes_for :user_profile
  has_one :address, dependent: :destroy
  has_one :card, dependent: :destroy
  accepts_nested_attributes_for :address
  has_many :exhibits, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorite_items, dependent: :destroy
  has_many :favorite_item_items, through: :favorite_items, source: :item
  has_many :purchases, dependent: :destroy
  has_many :reviews

  validates :nickname, presence: true
  
  def already_liked?(item)
    self.favorite_items.exists?(item_id: item.id)
  end

  protected

  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first

    unless user
      user = User.create(
        uid:      auth.uid,
        provider: auth.provider,
        email:    auth.info.email,
        nickname:  auth.info.name,
        password: Devise.friendly_token[0, 20]
      )
    end
    user
  end
end
