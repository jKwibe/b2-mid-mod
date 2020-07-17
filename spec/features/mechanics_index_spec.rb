require "rails_helper"

RSpec.describe 'mechanics index page', type: :feature do

  it 'it can show data' do
    sam = Mechanic.create!(name: "Sam Mills", years_of_experience: 10)
    kara = Mechanic.create!(name: "Kara Smith", years_of_experience: 11)
    visit "/mechanics"

    within '.title' do
      expect(page).to have_content("All Mechanics")
    end
    expect(page).to have_content("Sam Mills")
    expect(page).to have_content("10 years of experience")
    expect(page).to have_content("Kara Smith")
    expect(page).to have_content("11 years of experience")
  end
end
