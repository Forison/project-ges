FactoryBot.define do
  factory :course do
    association :school
    name { Faker::Name.name }
    description { Faker::Lorem.paragraph(sentence_count: 5) }
  end
end
