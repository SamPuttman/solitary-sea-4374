require 'rails_helper'

RSpec.describe 'Search', type: :feature do
  it 'allows users to search for members by nation' do
    VCR.use_cassette('search_by_nation') do
      visit root_path

      select 'Water Tribe', from: 'nation'
      click_on 'Search For Members'

      expect(current_path).to eq search_path
      expect(page).to have_content('Total residents of the Water Tribe: 20')
      expect(page).to have_content('Notable Members:')

      expect(page).to have_css('li', count: 20)

      within first('li') do
        expect(page).to have_css('h3', text: 'Arnook')
        expect(page).to have_css("img[src='https://vignette.wikia.nocookie.net/avatar/images/0/0c/Chief.png/revision/latest?cb=20140122221730']")
        expect(page).to have_content('Allies: Aang')
        expect(page).to have_content('Enemies: Zhao')
        expect(page).to have_content('Affiliations: Northern Water Tribe')
      end
    end
  end
end
