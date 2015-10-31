json.array!(@nearbies) do |nearby|
  json.extract! nearby, :id
  json.url nearby_url(nearby, format: :json)
end
