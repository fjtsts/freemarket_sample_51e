FactoryBot.define do

  factory :brand do
    name  {Faker::name}
      # create( brand: brand,category:category ,item: create(:item))
    
  end
end