json.array!(@daw_pregunts) do |daw_pregunt|
  json.extract! daw_pregunt, :id
  json.url daw_pregunt_url(daw_pregunt, format: :json)
end
