require 'rails_helper'

RSpec.describe Item do
  before(:each) do
    @item = Item.new({id: 1, attributes: {name: "Yellow Toy", description: "A Toy and Its Yellow!", unit_price: 100.00, merchant_id: 1}})
  end

  it 'exists' do
    expect(@item).to be_a(Item)
  end

  it 'has attributes' do
    expect(@item.id).to eq(1)
    expect(@item.name).to eq("Yellow Toy")
    expect(@item.description).to eq("A Toy and Its Yellow!")
    expect(@item.unit_price).to eq(100.00)
    expect(@item.merchant_id).to eq(1)
  end
end