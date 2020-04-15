class RevItUpService
  attr_reader :restaurant

  def initialize(latitude, longitude, radius, price)
    @restaurant = get_json("search?latitude=#{latitude}&longitude=#{longitude}&radius=#{radius}&price=#{price}")
  end

  private

  def get_json(url)
    response = conn.get(url)
    if response.reason_phrase == "OK"
      json_response = JSON.parse(response.body, symbolize_names: true)
    else
      return 'error'
    end
  end

  def conn
    conn = Faraday.new(url: "https://rev-it-up.herokuapp.com")
  end
end
