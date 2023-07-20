require 'rails_helper'

RSpec.describe 'Item Show Page' do
  describe 'As a visitor, when I visit /items/:id' do
    it 'shows the item name and other attributes', :vcr do
      visit item_path(5)

      expect(page).to have_content('Item Expedita Aliquam')
      expect(page).to have_content('Voluptate aut labore qui illum tempore eius. Corrupti cum et rerum. Enim illum labore voluptatem dicta consequatur. Consequatur sunt consequuntur ut officiis.')
      expect(page).to have_content(687.23)
    end
  end
end