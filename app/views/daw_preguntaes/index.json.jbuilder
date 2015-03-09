json.array!(@daw_preguntaes) do |daw_preguntae|
  json.extract! daw_preguntae, :id, :pre_encabezado, :pre_orden, :daw_sondeo_id
  json.url daw_preguntae_url(daw_preguntae, format: :json)
end
