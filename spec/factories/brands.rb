FactoryBot.define do

  factory :brand do
    name  {Faker::name}
    after(:create) do |brand|
      create( brand: brand,category:category ,item: create(:item))
    end
  end
end