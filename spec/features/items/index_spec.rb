require 'rails_helper'

RSpec.describe 'Items Index Page' do
  describe 'As a visitor, when I visit /items' do
    it 'shows a list of items by name', :vcr do
      visit items_path

      expect(page).to have_content('All Items')
      expect(page).to have_link('Item Expedita Aliquam')
      expect(page).to have_link('Item Provident At')
      expect(page).to have_link('Item Rerum Magni')
    end

    it 'clicking an item name takes me to that items show page', :vcr do
      visit items_path

      click_link('Item Expedita Aliquam')

      expect(current_path).to eq(item_path(5))
    end
  end
end