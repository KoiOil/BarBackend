json.array!(@dows) do |dow|
  json.extract! dow, :id, :specialid, :day
  json.url dow_url(dow, format: :json)
end
