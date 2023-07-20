require 'rails_helper'

RSpec.describe RailsEngineFacade do
  it 'returns an array of all merchant objects', :vcr do
    merchants = RailsEngineFacade.all_merchants

    expect(merchants).to be_an(Array)
    expect(merchants.first).to be_a(Merchant)
    expect(merchants.first.id).to be_an(Integer)
    expect(merchants.first.name).to be_a(String)
  end

  it 'returns an array of all item objects for a merchant', :vcr do
    items = RailsEngineFacade.merchants_items(1)

    expect(items).to be_an(Array)
    expect(items.first).to be_an(Item)
    expect(items.first.id).to be_an(Integer)
    expect(items.first.name).to be_a(String)
    expect(items.first.description).to be_a(String)
    expect(items.first.unit_price).to be_a(Float)
    expect(items.first.merchant_id).to be_an(Integer)
  end
end