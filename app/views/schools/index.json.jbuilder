json.array!(@schools) do |school|
  json.extract! school, :name, :city, :state, :street, :zip_code
  json.url school_url(school, format: :json)
end
