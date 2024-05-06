require 'rails_helper'

describe Mutations::School::CreateSchool do
  setup do
    @create_school = Mutations::School::CreateSchool.new(object: nil, field: nil, context: {})
    @user = create(:user, :with_confirmed_user, role: 'headteacher')
  end

  it 'create new school' do
    login @user
    school = @create_school.resolve(name: Faker::Name.name)
    assert school.persisted?
  end

  private

  def login(user)
    perform = Mutations::Authentication::SigninUser.new(object: nil, field: nil, context: {})
    perform.resolve(email: user.email, password: user.password)
  end
end
