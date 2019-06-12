FactoryBot.define do
  factory :review do
    status { 1 }
    content { "MyText" }
    user { nil }
    item { nil }
  end
end
