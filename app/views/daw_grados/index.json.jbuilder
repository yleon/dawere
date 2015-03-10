json.array!(@daw_grados) do |daw_grado|
  json.extract! daw_grado, :id
  json.url daw_grado_url(daw_grado, format: :json)
end
