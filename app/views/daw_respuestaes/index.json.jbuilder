json.array!(@daw_respuestaes) do |daw_respuestae|
  json.extract! daw_respuestae, :id, :res_valor, :res_fecha, :daw_preguntae_id
  json.url daw_respuestae_url(daw_respuestae, format: :json)
end
