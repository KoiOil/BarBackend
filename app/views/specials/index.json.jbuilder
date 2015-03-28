json.array!(@specials) do |special|
  json.extract! special, :id, :barid, :description
  json.url special_url(special, format: :json)
end
