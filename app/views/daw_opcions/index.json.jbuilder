json.array!(@daw_opcions) do |daw_opcion|
  json.extract! daw_opcion, :id
  json.url daw_opcion_url(daw_opcion, format: :json)
end
