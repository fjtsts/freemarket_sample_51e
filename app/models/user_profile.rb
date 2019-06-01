class UserProfile < ApplicationRecord
  belongs_to :user

  validates :last_name, presence: true,
    format: {
      with: /\A[０-９]+\z/,
      message: "全角で入力して下さい"
    }
  validates :first_name, presence: true,
    format: {
      with: /\A[０-９]+\z/,
      message: "全角で入力して下さい"
    }
  validates :last_name_kata, presence: true,
    format: {
      with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,
      message: "全角カタカナで入力して下さい"
    }
  validates :first_name_kata, presence: true,
    format: {
      with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,
      message: "全角カタカナで入力して下さい"
    }
  validates :birth, presence: true
  validates :tel, presence: true,
    format: {
      with: /\A\d{10}$|^\d{11}\z/,
      message: "電話番号は半角ハイフン無しで入力してください。"
    }
end
