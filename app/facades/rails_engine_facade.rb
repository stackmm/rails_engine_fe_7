class RailsEngineFacade
  def self.all_merchants
    json = RailsEngineService.all_merchants

    @merchants = json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.merchants_items(merchant_id)
    json = RailsEngineService.merchants_items(merchant_id)

    @items = json[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end