json.array!(@bars) do |bar|
  json.extract! bar, :id, :Name, :Lat, :Lon
  json.url bar_url(bar, format: :json)
end
