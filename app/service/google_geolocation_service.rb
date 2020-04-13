class GoogleGeolocationService
  def initialize
    conn = Faraday.new(url: "https://www.googleapis.com/geolocation/v1/geolocate?key=#{ENV["GOOGLE_API_KEY"]}")

    response = conn.post
    json = JSON.parse(response.body, symbolize_names: true)
  end
end
