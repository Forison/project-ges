require 'rails_helper'

RSpec.describe User, type: :model do
  # it "associations" do
  #  p @user
  # Association for user model test would be here
  # end

  describe 'validation' do
    it { is_expected.to validate_presence_of :last_name }
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of :birthday }
  end
  describe 'Testing instance methods for user model' do
    it '#user_name' do
      user = create(:user, last_name: 'John', first_name: 'Doe')
      assert_equal user.user_name, 'John Doe'
    end
    it '#reached_max_attempts_limit?' do
      user_one = create(:user, last_name: 'John', first_name: 'Doe', failed_attempts: (8..10).to_a.sample)
      assert_equal user_one.reached_max_attempts_limit?, true
      user_two = create(:user, last_name: 'John', first_name: 'Doe', failed_attempts: (1..7).to_a.sample)
      assert_equal user_two.reached_max_attempts_limit?, false
    end
  end
end
