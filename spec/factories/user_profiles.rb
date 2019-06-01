FactoryBot.define do
  factory :user_profile do
    last_name       {"原"}
    first_name      {"辰徳"}
    last_name_kata  {"ハラ"}
    first_name_kata {"タツノリ"}
    postal_code     {"150-0043"}
    prefecture      {"東京都"}
    city            {"渋谷区"}
    town_number     {"道玄坂２丁目２３−１２"}
    building        {"フォンティスビル7F"}
    tel             {"050-3187-3522"}
  end
end
