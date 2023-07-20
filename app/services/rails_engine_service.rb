class RailsEngineService
  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.all_merchants
    get_url("/api/v1/merchants")
  end

  def self.merchants_items(merchant_id)
    get_url("/api/v1/merchants/#{merchant_id}/items")
  end
end