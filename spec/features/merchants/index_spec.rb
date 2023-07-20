require 'rails_helper'

RSpec.describe 'Merchant Index Page' do
  describe 'As a visitor, when I visit /merchants' do
    it 'shows a list of merchants by name', :vcr do
      visit merchants_path

      expect(page).to have_content('All Merchants')
      expect(page).to have_link('Schroeder-Jerde')
      expect(page).to have_link('Klein, Rempel and Jones')
      expect(page).to have_link('Willms and Sons')
    end
  
    it 'clicking a merchant name takes me to that merchants show page', :vcr do
      visit merchants_path

      click_link('Schroeder-Jerde')

      expect(current_path).to eq(merchant_path(1))
    end
  end
end