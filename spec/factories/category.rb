FactoryBot.define do

  factory :category do
    name {Faker::Name.name}
    parent_id        {""}
    created_at { Faker::Time.between(2.days.ago, Time.now, :all) }
    # after(:create) do |category|
    #   create(:item_category,category: category,item: create(:item))
    # end


  end
end