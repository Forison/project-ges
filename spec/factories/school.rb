FactoryBot.define do
  factory :school do
    association :headteacher
    name { Faker::Name.name }
  end

  trait :with_teachers do
    teachers { [1] }
  end
end
