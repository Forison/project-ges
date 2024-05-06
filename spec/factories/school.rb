FactoryBot.define do
  factory :school do
    association :headteacher
    name { Faker::Name.name }
  end
end
