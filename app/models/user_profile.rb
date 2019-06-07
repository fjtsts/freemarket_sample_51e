class UserProfile < ApplicationRecord
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
  validates :birth, presence: true
  validates :tel, presence: true,
    format: {
      with: /\A\d{10}$|^\d{11}\z/,
      message: "電話番号は半角ハイフン無しで入力してください。"
    }
end