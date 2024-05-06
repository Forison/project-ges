require 'rails_helper'

describe Mutations::Course::CreateCourses do
  setup do
    @create_course = Mutations::Course::CreateCourses.new(object: nil, field: nil, context: {})
    @user = create(:user, :with_confirmed_user, role: 'headteacher')
  end

  it 'create new course' do
    login @user
    @create_course.resolve(name:, teacher:, duration:, descripttion:)
    # create school
  end
  def login(user)
    perform = Mutations::Authentication::SigninUser.new(object: nil, field: nil, context: {})
    perform.resolve(email: user.email, password: user.password)
  end
end
