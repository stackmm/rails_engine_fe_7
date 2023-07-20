require 'rails_helper'

RSpec.describe 'Merchant Show Page' do
  describe 'As a visitor, when I visit /merchants/:id' do
    it 'shows the merchant name', :vcr do
      visit merchant_path(1)

      expect(page).to have_content('Schroeder-Jerde')
    end

    it 'shows a list of items that the merchant sells', :vcr do
      visit merchant_path(1)

      expect(page).to have_content('Item Expedita Aliquam')
      expect(page).to have_content('Item Provident At')
      expect(page).to have_content('Item Expedita Fuga')
    end
  end
end