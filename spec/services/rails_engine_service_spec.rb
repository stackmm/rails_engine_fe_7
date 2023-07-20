require 'rails_helper'

RSpec.describe 'Rails Engine Service' do
  it 'establishes a connection and obtains all merchants', :vcr do
    merchants = RailsEngineService.all_merchants

    expect(merchants).to be_a(Hash)
    expect(merchants[:data]).to be_an(Array)

    expect(merchants[:data].first).to have_key(:id)
    expect(merchants[:data].first[:id]).to be_a(String)

    expect(merchants[:data].first).to have_key(:type)
    expect(merchants[:data].first[:type]).to be_a(String)

    expect(merchants[:data].first).to have_key(:attributes)
    expect(merchants[:data].first[:attributes]).to be_a(Hash)

    expect(merchants[:data].first[:attributes]).to have_key(:name)
    expect(merchants[:data].first[:attributes][:name]).to be_a(String)
  end

  it 'establishes a connection and obtains all items for a merchant', :vcr do
    items = RailsEngineService.merchants_items(1)

    expect(items).to be_a(Hash)
    expect(items[:data]).to be_an(Array)

    expect(items[:data].first).to have_key(:id)
    expect(items[:data].first[:id]).to be_a(String)

    expect(items[:data].first).to have_key(:type)
    expect(items[:data].first[:type]).to be_a(String)

    expect(items[:data].first).to have_key(:attributes)
    expect(items[:data].first[:attributes]).to be_a(Hash)

    expect(items[:data].first[:attributes]).to have_key(:name)
    expect(items[:data].first[:attributes][:name]).to be_a(String)

    expect(items[:data].first[:attributes]).to have_key(:description)
    expect(items[:data].first[:attributes][:description]).to be_a(String)

    expect(items[:data].first[:attributes]).to have_key(:unit_price)
    expect(items[:data].first[:attributes][:unit_price]).to be_a(Float)

    expect(items[:data].first[:attributes]).to have_key(:merchant_id)
    expect(items[:data].first[:attributes][:merchant_id]).to be_an(Integer)
  end
end