json.array!(@daw_respuests) do |daw_respuest|
  json.extract! daw_respuest, :id, :resp_puntaje, :resp_valor
  json.url daw_respuest_url(daw_respuest, format: :json)
end
