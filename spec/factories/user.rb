FactoryBot.define do
  factory :user, aliases: %i[student teacher headteacher] do
    first_name { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }
    guardian_email { Faker::Internet.email }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    birthday { Faker::Date.birthday }
    # confirmation_token
    # reset_password_token
    # confirmation_sent_at
    # unconfirmed_email
    # unlock_token
    # unlock_token
  end
end
