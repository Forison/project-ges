require 'rails_helper'

describe Mutations::Authentication::ConfirmUser do
  setup do
    @user = create(:user, :with_unconfirmed_user)
    @perform = Mutations::Authentication::ConfirmUser.new(object: nil, field: nil, context: {})
  end
  it 'Confirm newly created user email' do
    result = @perform.resolve(
      confirmation_token: @user.confirmation_token
    )
    assert_equal result, @user
    assert_equal result.unconfirmed_email, ''
    assert_equal result.email, @user.unconfirmed_email
  end
end
