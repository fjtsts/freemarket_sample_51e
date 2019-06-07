FactoryBot.define do

  factory :category do
    name  {Faker::name}
    ancestry {"null"}
    after(:create) do |category|
      create(category: category ,item: create(:item),brand: create(:brand))
    end
  end
end