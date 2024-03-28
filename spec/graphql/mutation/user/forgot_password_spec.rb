require 'rails_helper'

describe Mutations::Auth::ForgotPassword do
  setup do
    @user = Mutations::Auth::RegisterUser.new(object: nil, field: nil, context: {}).resolve(
      email:                Faker::Internet.email,
      password:             ['omitted'],
      last_name:            Faker::Name.last_name,
      first_name:           Faker::Name.first_name,
      birthday:             Faker::Date.birthday,
      confirmation_token:   Jwt::Encoder.new(@email).call,
      confirmation_sent_at: Time.zone.now
    )
    @confirmed_user = Mutations::Auth::ForgotPassword.new(object: nil, field: nil, context: {})
                                                     .resolve(confirmation_token: @user.confirmation_token)
    @perform = Mutations::Auth::ForgotPassword.new(object: nil, field: nil, context: {})
  end
  it 'Confirm newly created user email' do
    result = @perform.resolve(
      email: @confirm_user.email
    )
    assert_equal result.allow_password_change, true
  end
end
