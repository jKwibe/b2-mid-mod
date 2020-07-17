require 'rails_helper'

RSpec.describe Ride, type: :model do
  describe 'validations' do
    it{should validate_presence_of :name}
    it{should validate_presence_of :rating}
  end

  describe 'relationships' do
    it { should belong_to :park}
  end

  describe 'methods' do
    park = Park.create!(name: "Hershey Park", admission_price: "50.00")
    ride_1 = park.rides.create!(name: "Lightning Racer", rating: 5)
    ride_2 = park.rides.create!(name: "Storm Runner", rating: 9)
    ride_3 = park.rides.create!(name: "The Great Bear", rating: 4)
    it '.average_rating' do
      expect(Ride.average_rating.round(1)).to eq(6.0)
    end
  end
end
