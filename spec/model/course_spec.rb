require 'rails_helper'

RSpec.describe Course, type: :model do
  describe 'associations' do
    it { should belong_to(:school) }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :name }
  end
  describe 'Testing instance methods for user model' do
    it '#all_teachers' do
      course = create(:course, :with_course_teachers)
      assert_equal course.all_teachers.count, 1
      course_two = create(:course)
      assert_empty course_two.all_teachers
    end
  end
end
