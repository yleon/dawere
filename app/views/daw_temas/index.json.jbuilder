json.array!(@daw_temas) do |daw_tema|
  json.extract! daw_tema, :id
  json.url daw_tema_url(daw_tema, format: :json)
end
