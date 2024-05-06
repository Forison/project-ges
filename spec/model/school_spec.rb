require 'rails_helper'

RSpec.describe School, type: :model do
  describe 'associations' do
    it { should belong_to(:headteacher) }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of :name }
  end
end
