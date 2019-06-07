FactoryBot.define do
  factory :category do
    # sequence(:no) { |n| n }
      name {Faker::name}
      ancestry {"1/14"}
    end

  #   factory :category do
  #     name {Faker::name}
  #     ancestry {"2/30"}
  #   end

  #   factory :category do
  #     name  {Faker::name}
  #     ancestry {"3/40"}
  #   end
  # end
end
# create(:category, :a) # no=1
# create(:category, :b) # no=2
# create(:category, :c) # no