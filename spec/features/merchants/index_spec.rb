require 'rails_helper'

# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.

RSpec.describe 'Merchant Index Page' do
  describe 'As a visitor, when I visit /merchants' do
    it 'shows a list of merchants by name' do
      @merchants = MerchantsFacade.new.all_merchants

      visit '/merchants'
  
      
    end
  
    it 'clicking a merchant name takes me to that merchants show page' do
  
    end
  end
end