json.array!(@addresses) do |address|
  json.extract! address, :id, :country, :state, :city, :pincode, :area, :street1, :street2, :latitude, :longitude, :store, :location
  json.url address_url(address, format: :json)
end
