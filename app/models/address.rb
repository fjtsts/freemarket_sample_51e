class Address < ApplicationRecord
  belongs_to :user
  validates :last_name, presence: true,
    format: {
      with: /\A[ぁ-んァ-ン一-龥]/,
      message: "全角で入力して下さい"
    }
  validates :first_name, presence: true,
    format: {
      with: /\A[ぁ-んァ-ン一-龥]/,
      message: "全角で入力して下さい"
    }
  validates :last_name_kata, presence: true,
    format: {
      with: /\A[ァ-ヶー－]+\z/,
      message: "全角カタカナで入力して下さい"
    }
  validates :first_name_kata, presence: true,
    format: {
      with: /\A[ァ-ヶー－]+\z/,
      message: "全角カタカナで入力して下さい"
    }
  validates :postal_code, presence: true,
    format: {
      with: /\A\d{3}[-]\d{4}$|^\d{3}[-]\d{2}$|^\d{3}\z/,
      message: "郵便番号は半角かつハイフンを付けて入力してください"
    }
  validates :prefecture, presence: true
  validates :city, presence: true
  validates :town_number, presence: true
end
