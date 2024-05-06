require 'rails_helper'

RSpec.describe Course, type: :model do
  describe 'associations' do
    it { should belong_to(:school) }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :name }
  end
end
