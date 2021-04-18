FactoryBot.define do
  factory :place do
    address { "MyString" }
    name { "MyString" }
    ctageory { nil }
    user { nil }
    story { "MyText" }
    latitude { 1.5 }
    longitude { 1.5 }
  end
end
