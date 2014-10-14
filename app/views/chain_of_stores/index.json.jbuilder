json.array!(@chain_of_stores) do |chain_of_store|
  json.extract! chain_of_store, :id, :name, :slug, :type
  json.url chain_of_store_url(chain_of_store, format: :json)
end
