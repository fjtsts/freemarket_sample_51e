class UserProfile < ApplicationRecord
  belongs_to :user

  validates :last_name, presence: true,
                              format: {
                                with: /\A[０-９]+\z/,
                                message: "全角のみで入力して下さい"
                              }
  validates :first_name, presence: true,
                              format: {
                                with: /\A[０-９]+\z/,
                                message: "全角カタカナのみで入力して下さい"
                              }
  validates :last_name_kata, presence: true,
                              format: {
                                with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,
                                message: "全角カタカナのみで入力して下さい"
                              }
  validates :first_name_kata, presence: true,
                              format: {
                                with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,
                                message: "全角カタカナのみで入力して下さい"
                              }
  validates :birth, presence: true
  validates :last_name, presence: true
end
