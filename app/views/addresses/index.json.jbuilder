json.array!(@addresses) do |address|
  json.extract! address, :id, :country, :state, :city, :pincode, :latitude, :longitude, :area, :streetName, :building
  json.url address_url(address, format: :json)
end
