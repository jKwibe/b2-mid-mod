require "rails_helper"

RSpec.describe 'user can see details', type: :feature do
  it 'display features' do
    park = Park.create!(name: "Hershey Park", admission_price: "50.00")
    ride_1 = park.rides.create!(name: "Lightning Racer", rating: 5)
    ride_2 = park.rides.create!(name: "Storm Runner", rating: 9)
    ride_3 = park.rides.create!(name: "The Great Bear", rating: 4)
    visit "/parks/#{park.id}"

    expect(page).to have_content("Hershey Park")
    
    within ".rides" do
      expect(page).to have_content("Lightning Racer")
      expect(page).to have_content("Storm Runner")
      expect(page).to have_content("The Great Bear")
    end
    expect(page).to have_content("Average Thrill Rating of Rides: 6.0/10")
  end
end
