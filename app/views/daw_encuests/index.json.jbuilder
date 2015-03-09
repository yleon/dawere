json.array!(@daw_encuests) do |daw_encuest|
  json.extract! daw_encuest, :id, :enc_nombre, :enc_descripcion, :enc_tipoencuest
  json.url daw_encuest_url(daw_encuest, format: :json)
end
