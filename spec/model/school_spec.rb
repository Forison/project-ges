require 'rails_helper'

RSpec.describe School, type: :model do
  describe 'associations' do
    it { should belong_to(:headteacher) }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of :name }
  end
  describe 'Testing instance methods for user model' do
    it '#all_teachers' do
      sch = create(:school, :with_teachers)
      assert_equal sch.all_teachers.count, 1
      sch_two = create(:school)
      assert_empty sch_two.all_teachers
    end
  end
end
