class RailsEngineFacade
  def self.all_merchants
    json = RailsEngineService.all_merchants

    @merchants = json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.merchant(merchant_id)
    json = RailsEngineService.merchant(merchant_id)

    @merchant = Merchant.new(json[:data])
  end

  def self.merchants_items(merchant_id)
    json = RailsEngineService.merchants_items(merchant_id)

    @items = json[:data].map do |item_data|
      Item.new(item_data)
    end
  end

  def self.all_items
    json = RailsEngineService.all_items

    @items = json[:data].map do |item_data|
      Item.new(item_data)
    end
  end

  def self.item(item_id)
    json = RailsEngineService.item(item_id)

    @item = Item.new(json[:data])
  end
end