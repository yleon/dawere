json.array!(@daw_sondeos) do |daw_sondeo|
  json.extract! daw_sondeo, :id, :son_nombre, :son_descripcion, :son_tipoencuesta
  json.url daw_sondeo_url(daw_sondeo, format: :json)
end
