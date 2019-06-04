FactoryBot.define do

  factory :category do
    name  {Faker::name}
    ancestry {Faker::Number.number}
    after(:create) do |category|
      create( category: category, item: create(:item))
    end
  end
end