require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'relations' do
    it { is_expected.to have_many(:contacts) }
    it { is_expected.to have_many(:sent) }
    it { is_expected.to have_many(:received) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
