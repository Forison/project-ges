FactoryBot.define do
  factory :school do
    association :headteacher
    name { Faker::Name.name }
  end

  trait :with_school_teachers do
    teachers { [1] }
  end
end
