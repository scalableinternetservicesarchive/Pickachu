json.array!(@pickups) do |pickup|
  json.extract! pickup, :id, :uid, :name, :long, :lat, :type, :image_url, :price, :start_time, :end_time, :description
  json.url pickup_url(pickup, format: :json)
end
