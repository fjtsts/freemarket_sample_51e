FactoryBot.define do
  factory :item do
  name     {"テスト太郎"}
  description     {'https://tech-master.s3.amazonaws.com/uploads/curriculums/images/Rails1-4/sample.jpg'}
  status       {"1"}
  shipping_fee {"1"}
  how_to_shipping {"1"}
  area   {"1"}
  day     {"1"}
  price {"1000"}
  brand_id {"1"}
  sequence(:category_id) { |n| n }
  created_at { Faker::Time.between(2.days.ago, Time.now, :all) }
  # after(:create) do |item|
  #   create(item: item,category: create(:category),brand: create(:brand))
  
  # end

 
  end

end