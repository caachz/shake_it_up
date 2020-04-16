class AddCoordinatesToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :lat, :float, default: GoogleGeolocationService.new.coordinates[:location][:lat]
    add_column :users, :lng, :float, default: GoogleGeolocationService.new.coordinates[:location][:lng]
  end
end
