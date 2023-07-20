require 'rails_helper'

RSpec.describe Merchant do
  before(:each) do
    @merchant = Merchant.new({id: 1, attributes: {name: "Tom's Shop"}})
  end

  it 'exists' do
    expect(@merchant).to be_a(Merchant)
  end

  it 'has attributes' do
    expect(@merchant.id).to eq(1)
    expect(@merchant.name).to eq("Tom's Shop")
  end
end