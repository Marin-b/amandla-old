FactoryBot.define do
  factory :review do
    place { nil }
    content { "MyText" }
    rating { 1 }
  end
end
