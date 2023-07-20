require 'rails_helper'

RSpec.describe 'Merchant Show Page' do
  describe 'As a visitor, when I visit /merchants/:id' do
    it 'shows the merchant name', :vcr do
      visit merchant_path(1)

      expect(page).to have_content('Schroeder-Jerde')
    end

    it 'shows a list of items that the merchant sells', :vcr do
      visit merchant_path(1)

      expect(page).to have_link('Item Expedita Aliquam')
      expect(page).to have_link('Item Provident At')
      expect(page).to have_link('Item Expedita Fuga')
    end

    it 'clicking an item name takes me to that items show page', :vcr do
      visit merchant_path(1)

      click_link('Item Expedita Aliquam')

      expect(current_path).to eq(item_path(5))
    end
  end
end