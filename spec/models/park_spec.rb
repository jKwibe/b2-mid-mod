require 'rails_helper'

RSpec.describe Park, type: :model do
  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :admission_price}
  end
end
