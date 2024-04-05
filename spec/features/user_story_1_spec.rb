require 'rails_helper'

RSpec.feature "Search Fire Nation Members", type: :feature do
  scenario "User searches for Fire Nation members", vcr: true do

    visit '/'

    select 'Fire Nation', from: 'nation'

    click_button 'Search For Members'

    #expect(current_path).to eq('/search')

    #expect(page).to have_content("Total Members: 100")

    #expect(page).to have_content("Member Info:")


    #expect(page).to have_content('@member.name')
    #add photo test later
    #expect(page).to have_content('Allies:')
    #expect(page).to have_content('Enemies:')
    #expect(page).to have_content('Affiliations:')
    #end
  end
end
