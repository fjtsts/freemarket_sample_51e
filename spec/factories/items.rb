FactoryBot.define do
  factory :item do
    name {'テスト太郎'}
    description {'https://tech-master.s3.amazonaws.com/uploads/curriculums/images/Rails1-4/sample.jpg'}
    status  {1}
    shipping_fee {1}
    how_to_shipping {1}
    area {1}
    day {1}
    price {1000}
    brand_id {1}
    category_id {Faker::Number.number}
    created_at { Faker::Time.between(2.days.ago, Time.now, :all) }
    
  end
end
