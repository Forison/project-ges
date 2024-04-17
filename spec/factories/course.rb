FactoryBot.define do
  factory :course do
    association :school
    name { Faker::Name.name }
    description { Faker::Lorem.paragraph(sentence_count: 5) }
  end

  trait :with_course_teachers do
    teachers { [1] }
  end
end
