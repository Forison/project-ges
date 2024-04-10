# rubocop:disable Metrics/BlockLength
FactoryBot.define do
  factory :user, aliases: %i[student teacher headteacher] do
    first_name { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }
    guardian_email { Faker::Internet.email }
    password { Faker::Internet.password }
    birthday { Faker::Date.birthday }

    trait :with_unconfirmed_user do
      confirmation_token { Faker::Internet.device_token }
      confirmation_sent_at { Time.zone.now }
      unconfirmed_email { Faker::Internet.email }
    end

    trait :with_confirmed_user do
      email { Faker::Internet.email }
      confirmation_token { Faker::Internet.device_token }
      confirmation_sent_at { Time.zone.now }
    end

    trait :with_unlock_user_token do
      email { Faker::Internet.email }
      unlock_token { Faker::Internet.device_token }
    end

    trait :with_reset_password_user do
      email { Faker::Internet.email }
      reset_password_token { Faker::Internet.device_token }
      confirmation_token { Faker::Internet.device_token }
      confirmation_sent_at { Time.zone.now }
    end
  end
end
# rubocop:enable Metrics/BlockLength
