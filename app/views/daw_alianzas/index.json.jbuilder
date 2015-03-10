json.array!(@daw_alianzas) do |daw_alianza|
  json.extract! daw_alianza, :id, :ali_tipojuridico
  json.url daw_alianza_url(daw_alianza, format: :json)
end
