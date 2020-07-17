require "rails_helper"

RSpec.describe 'user can see list of mechanics rides' do
  before(:each) do
    @sam = Mechanic.create!(name: "Sam Mills", years_of_experience: 10)
    @kara = Mechanic.create!(name: "Kara Smith", years_of_experience: 11)

    @park = Park.create!(name: "Hershey Park", admission_price: "50.00")
    @ride_1 = @park.rides.create!(name: "Lightning Racer", rating: 5)
    @ride_2 = @park.rides.create!(name: "Storm Runner", rating: 9)
    @ride_3 = @park.rides.create!(name: "The Great Bear", rating: 4)

    @kara.rides << [@ride_1 , @ride_3]
    @sam.rides  << @ride_2
  end
  it 'can display projects' do
    visit "/mechanics/#{@kara.id}"

    expect(page).to have_content("Kara Smith")
    expect(page).to have_content("Years of Experience: 11")

    within ".current_projects" do
      expect(page).to have_content("Lightning Racer")
      expect(page).to have_content("The Great Bear")
    end
  end

end
